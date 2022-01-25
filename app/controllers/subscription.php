<?php

namespace Fir\Controllers;

class subscription extends Controller
{
    /**
     * This would be your http://localhost/project-name/ index page
     *
     * @return array
     */
    protected $admin;


    public function index(){


    	/*Use User Library*/
        $user = $this->library('User');
		$data['user'] = $user->data();
		if(!$user->isLoggedIn()):
			redirect('login');
		elseif($data['user']['user_type'] != 2):
			redirect('login');
		endif;

    	if (isset($_SESSION['subscription_id'])) {
    	   redirect('subscription/payment');
    	}else{
    		redirect('subscription/select_plan');
    	}
    }


	
    public function select_plan()
    {

    	/*Use User Library*/
        $user = $this->library('User');
		$data['user'] = $user->data();
		if(!$user->isLoggedIn()):
			redirect('login');
		elseif($data['user']['user_type'] != 2):
			redirect('login');
		endif;


        $data['plans'] = $this->db->select('plans','*',array('status'=>1));

        return ['content' => $this->view->render($data, 'home/plan_select')];
    }


    public function process_plan(){

    	/*Use User Library*/
        $user = $this->library('User');
		$data['user'] = $user->data();
		if(!$user->isLoggedIn()):
			redirect('login');
		elseif($data['user']['user_type'] != 2):
			redirect('login');
		endif;

    	 	$plan_id =  base64_decode($_GET['plan']);

	    	$query = $this->db->select('plans','*',array('id'=>$plan_id,'status'=>1));

	    	if ($query) {

	    		$user_id = $this->library('User')->data()['id'];

	    		$subCLU['user_id'] = $user_id;
	    		$subCLU['status'] = 0;

	    		 $this->db->delete('subscription', $subCLU);

	    				$subsData['user_id'] = $user_id;
	    				$subsData['uid'] = rand(10,100).time();
						$subsData['plan_id'] = $query[0]['id'];
						$subsData['plan_name'] = $query[0]['name'];
						$subsData['plan_price'] = $query[0]['price'];
						$subsData['plan_token'] = $query[0]['token'];
						$subsData['plan_token_amount'] = $query[0]['per_token_amount'];
						$subsData['plan_month'] = $query[0]['month'];
						$subsData['created_at'] = date('Y-m-d H:i:s');

				$Insert = $this->model('Common_model')->add('subscription',$subsData);
				$_SESSION['subscription_id'] = $Insert;
				redirect('subscription/payment');
	    		
	    	}else{
	    		$_SESSION['message'][] = ['error', 'Invalid Plan'];
	    		redirect('subscription/select_plan');
	    	}

	    	$_SESSION['message'][] = ['error', 'Some thing wrong '];

	    	redirect('home');

    }


    public function confirm_payment(){


  //   	/*Use User Library*/
  //       $user = $this->library('User');
		// $data['user'] = $user->data();
		// if(!$user->isLoggedIn()):
		// 	redirect('login');
		// elseif($data['user']['user_type'] != 2):
		// 	redirect('login');
		// endif;

    	

    	if (isset($_POST['mode'])) {

    		$payment_done = 0;

    		$sub_id = $_SESSION['subscription_id'];	

    		$subscription = $this->model('Common_model')->get('subscription',array('id'=>$sub_id));

    		$plan_id = 0;

    		if (isset($subscription[0]['plan_id'])) {
    			$plan_id = $subscription[0]['plan_id'];
    		}

    		$plan_data = $this->model('Common_model')->get('plans',array('id'=>$plan_id));

    		$month = 0;

    		if (isset($plan_data[0]['month'])) {
    			$month = $plan_data[0]['month'];
    		}

    		$payData['details'] = json_encode($_POST);
    		$payData['mode'] = $_POST['mode'];
    		$payData['amount'] = $_POST['amount'];
    		$payData['starter'] = date('Y-m-d H:i:s');
			$date=date_create();
			date_modify($date,"+".$month." month");
			$payData['expiry'] = date_format($date,"Y-m-d H:i:s");
			$payData['status'] = 1;
			$payData['updated_at'] = date('Y-m-d H:i:s');

			if ($_POST['mode']=='paystack') {
	    		$response = json_decode($_POST['data']);
	    		if ($response->status=="success") {
	    			$payment_done = 1;
	    		}
	    	}

	    	if ($_POST['mode']=='stripe'){
	    		if (isset($_POST['stripeToken'])) {
	    			$payment_done = 1;
	    		}
	    	}

	    	if ($_POST['mode']=='razorpay'){
    		if (isset($_POST['razorpay_payment_id'])) {
    			$payment_done = 1;
	    		}
	    	}

	    	if ($payment_done==1) {
    		$update = $this->model('Common_model')->update('subscription',$payData,array('id'=>$sub_id));

    		if (isset($subscription[0]['plan_token'])) {
    			for ($x=0; $x <$month ; $x++) {
    				for ($i=0; $i <$subscription[0]['plan_token'] ; $i++) { 
    				 
    				$tkn['uid'] = rand(10000,1000000);
    				$tkn['user_id'] = $this->library('User')->data()['id'];
    				$tkn['subscription_id'] = $sub_id;
    				$tkn['amount'] = $subscription[0]['plan_token_amount'];
    				$tkn['payment_id'] = 0;
    				$tkn['created_at'] = date('Y-m-d H:i:s');
    				$tkn['updated_at'] = date('Y-m-d H:i:s');
    				$date=date_create();
    				$incr  = $x+1;
					date_modify($date,"+".$incr." month");
					$tkn['expiry'] = date_format($date,"Y-m-d H:i:s");
    				
    			$insert = $this->model('Common_model')->add('subscription_tokens',$tkn);
    					
    				}
    				
    			}
    		}


    		$userD = $this->library('User')->data();


    		$msg = $this->model('Common_model')->plan_string($userD[0]['name'],$plan_data[0]['name']);

    		$email = $this->model('Common_model')->email($userD[0]['email'],"Plan Activated",$msg);

    		
    		$_SESSION['message'][] = ['success', 'Payment Success'];
	    	}else{
	    		$_SESSION['message'][] = ['error', 'Payment Failed'];
	    	}
    		
    	}else{

    		$_SESSION['message'][] = ['error', 'Payment Failed'];
    	}

    	// Paypal Get Codes


    	if (isset($_GET['mode'])) {

    		$payment_done = 0;


    		if (isset($_GET['payment_status'])) {
    			$payment_done = 1;
    		}

    		$sub_id = $_GET['subscription_id'];	

    		$subscription = $this->model('Common_model')->get('subscription',array('id'=>$sub_id));

    		$plan_id = 0;

    		if (isset($subscription[0]['plan_id'])) {
    			$plan_id = $subscription[0]['plan_id'];
    		}

    		$plan_data = $this->model('Common_model')->get('plans',array('id'=>$plan_id));

    		$month = 0;

    		if (isset($plan_data[0]['month'])) {
    			$month = $plan_data[0]['month'];
    		}

    		$payData['details'] = encrypt_text(json_encode($_GET));
    		$payData['mode'] = $_GET['mode'];
    		$payData['amount'] = $_GET['amount'];
    		$payData['starter'] = date('Y-m-d H:i:s');
			$date=date_create();
			date_modify($date,"+".$month." month");
			$payData['expiry'] = date_format($date,"Y-m-d H:i:s");
			$payData['status'] = 1;
			$payData['updated_at'] = date('Y-m-d H:i:s');


			


	    	if ($payment_done==1) {
    		$update = $this->model('Common_model')->update('subscription',$payData,array('id'=>$sub_id));

    		if (isset($subscription[0]['plan_token'])) {


    			for ($x=0; $x <$month ; $x++) {
    				for ($i=0; $i <$subscription[0]['plan_token'] ; $i++) { 

    				 
    				$tkn['uid'] = rand(10000,1000000);
    				$tkn['user_id'] = $subscription[0]['user_id'];
    				$tkn['subscription_id'] = $subscription[0]['id'];
    				$tkn['amount'] = $subscription[0]['plan_token_amount'];
    				$tkn['payment_id'] = 0;
    				$tkn['created_at'] = date('Y-m-d H:i:s');
    				$tkn['updated_at'] = date('Y-m-d H:i:s');
    				$date=date_create();
    				$incr  = $x+1;
					date_modify($date,"+".$incr." month");
					$tkn['expiry'] = date_format($date,"Y-m-d H:i:s");
    				
    			$insert = $this->model('Common_model')->add('subscription_tokens',$tkn);
    					
    				}
    				
    			}
    		}

    		$user_idx = $subscription[0]['user_id'];


    		$userD = $this->model('Common_model')->get('user',array('id'=>$user_idx));


    		$msg = $this->model('Common_model')->plan_string($userD[0]['name'],$plan_data[0]['name']);

    		$email = $this->model('Common_model')->email($userD[0]['email'],"Plan Activated",$msg);

    		$invoice = $this->model('Common_model')->make_invoice('subscription',$subscription[0]['id']);


    		$email = $this->model('Common_model')->email($userD[0]['email'],"Invoice",$invoice);

    		
    		$_SESSION['message'][] = ['success', 'Payment Success'];

    		echo json_encode(array("status"=>1,'id'=>$subscription[0]['id']));
    		die();
	    	}else{
	    		echo json_encode(array("status"=>0,"error_code"=>4784));
    			die();
	    	}
    		
    	}else{

    		echo json_encode(array("status"=>0,"error_code"=>4785));
    		die();
    	}


    	if($this->library('User')->data()["user_type"] === "1"){
							redirect(FREELANCER_URL.'/dashboard');
						 }elseif($this->library('User')->data()["user_type"] === "2"){
							redirect(CLIENT_URL.'/dashboard');
				}


    }


    function payment(){

    	/*Use User Library*/
        $user = $this->library('User');
		$data['user'] = $user->data();
		if(!$user->isLoggedIn()):
			redirect('login');
		elseif($data['user']['user_type'] != 2):
			redirect('login');
		endif;

    	if (!isset($_SESSION['subscription_id'])) {
    		$_SESSION['message'][] = ['error', $this->lang['no plan selected']];
    	   redirect('home');
    	}

    	$clause_sub['id'] = $_SESSION['subscription_id'];

	 	$data['subscriptionDATA'] = $this->model('Common_model')->get('subscription',$clause_sub);

	 	if (!$data['subscriptionDATA']) {
	 		$_SESSION['message'][] = ['error', $this->lang['Invalid subscription']];
    	   redirect('home');
	 	}

	 	$plan_clause['id'] = $data['subscriptionDATA'][0]['plan_id'];
	 	$plan_clause['status'] = 1;

	 	$data['Plan_DATA'] = $this->model('Common_model')->get('plans',$plan_clause);

	 	if (!$data['Plan_DATA']) {
	 		$_SESSION['message'][] = ['error', $this->lang['Plan Not Valid']];
	 		redirect('subscription/select_plan');
	 	}

	 	$Userdata = $this->library('User')->data();


		$Uemail = $Userdata['email'];
		$Uname = $Userdata['name'];

		$data["user"]["email"] = $Uemail;
		$data["user"]["name"] = $Uname;

		$settingsModel = $this->model('Settings');
		$data['currency_code'] = $settingsModel->currency_code();

		$data['settings'] = $settingsModel->get();

			/*Use User Library*/
		$paymentid = $this->rando();
        $session = $this->library('Session');
		
			// if(!$session->exists('checkout_funds')){
			// 	$_SESSION['message'][] = ['error', $this->lang['add_funds']];
			// 	redirect(CLIENT_URL.'/addfunds');
			// }
			
		$amount = $data['Plan_DATA'][0]['price'];
		$data['amount'] = $amount;
		$session->put("paymentid", $paymentid);


				/*PayStack*/
		$data['paystack_id'] = $this->rando();
		$session->put("paystack_id", $data['paystack_id']);
		$data['payment_paystack'] = $data['amount'] * 100;
		
        $_GET['sandbox'] = $data['settings']['sandbox'];  
		
		/* PayPal Section */
		// Setup class
		$p = $this->library('paypal_class');					// initiate an instance of the class.
			$this_script = URL_PATH;
			  $user_email = $Uemail;
			  $usern = $Uname;

			 // $return_url = $this_script.'/subscription/confirm_payment?mode=paypal&amount='.$amount.'&pid='.$paymentid;

			  $return_url = $this_script.'/public/paypal.php?for=subscription&type=return&mode=paypal&amount='.$amount.'&pid='.$paymentid;

			  $cancel_url = $this_script.'/public/paypal.php?for=subscription&type=cancel&mode=paypal&amount='.$amount.'&pid='.$paymentid;

			  $notify_url = $this_script.'/public/paypal.php?for=subscription&type=notify&mode=paypal&amount='.$amount.'&pid='.$paymentid;


			$p->add_field('business', $data['settings']['paypal_email']); //don't need add this item. if your set the $p -> paypal_mail.
			$p->add_field('return', $return_url);
			$p->add_field('cancel_return', $cancel_url);
			$p->add_field('notify_url', $notify_url);
			$p->add_field('item_name', "Subscription");
			$p->add_field('item_number', '');
			$p->add_field('amount', $amount);
			$p->add_field('currency_code',$data['currency_code']);
			$p->add_field('usern', $usern);
			$p->add_field('user_email', $user_email);
			$p->add_field('cmd', '_xclick');
			$p->add_field('rm', '2');	// Return method = POST

			// 0 � all shopping cart payments use the GET method
			// 1 � the buyer's browser is redirected to the return URL by using the GET method, but no payment variables are included
			// 2 � the buyer's browser is redirected to the return URL by using the POST method, and all payment variables are included The default is 0.

			$data['paypal_form'] = $p; // submit the fields to paypal		

		
		
		/* Stripe Section */
		$stripe = [
		  "secret_key"      => $data['settings']["stripe_secret_key"],
		  "publishable_key" => $data['settings']["stripe_public_key"],
		];

		\Stripe\Stripe::setApiKey($stripe['secret_key']);
 		
		/* Amount in Cents */
		$data['amount_cents'] = $this->getMoneyAsCents($amount);	


		return ['content' => $this->view->render($data, 'home/payment')];

	}


	private function rando($length = 14){
		$str = "";
		$characters = array_merge(range('A','Z'), range('a','z'), range('0','9'));
		$max = count($characters) - 1;
		for ($i = 0; $i < $length; $i++) {
			$rand = mt_rand(0, $max);
			$str .= $characters[$rand];
		}
		return $str;
	}


	private function getMoneyAsCents($value)
	{
		// strip out commas
		$value = preg_replace("/\,/i","",$value);
		// strip out all but numbers, dash, and dot
		$value = preg_replace("/([^0-9\.\-])/i","",$value);
		// make sure we are dealing with a proper number now, no +.4393 or 3...304 or 76.5895,94
		if (!is_numeric($value))
		{
			return 0.00;
		}
		// convert to a float explicitly
		$value = (float)$value;
		return round($value,2)*100;
	}


	public function htc($var="",$var2="",$var3=""){

		echo $var;
		echo $var2;

		die();



	}
}