<?php

namespace Fir\Controllers;

class Register extends Controller
{
    /**
     * This would be your http://localhost/project-name/ index page
     *
     * @return array
     */
    protected $admin;
	
    public function index()
    {



    	if (isset($_GET['plan'])) {
    		$_SESSION['plan_id'] =  base64_decode($_GET['plan']);
    	}
    	// Plan Validation
    	// if (!isset($_POST['register'])) {

	    // 	$plan_id =  base64_decode($_GET['plan']);

	    // 	$query = $this->db->select('plans','*',array('id'=>$plan_id));

	    // 	if (!$query) {
	    // 		$_SESSION['message'][] = ['error', 'Invalid Plan'];
	    // 		redirect('home');
	    // 	}
    	
    	// }
    	// Plan Validation

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];
			
		$validation = "";	
		
		/* Use User Model */
        $user = $this->library('User');
		if($user->isLoggedIn() === true):
		 redirect('user/dashboard');
		endif;
		
		/* Use Settings Model */
		$settingsModel = $this->model('Settings');
        $data['settings'] = $settingsModel->get();
		
		/* Use Input Library */
		$input = $this->library('Input');
		
		/* Use User Model */
		$userModel = $this->model('User');

        // If the user tries to log-in
		if(isset($_POST['register'])) {
		 if ($input->exists()) {


		 	$url = 'https://www.google.com/recaptcha/api/siteverify';

		 	$post['secret'] = '6LdgA9IUAAAAAEcVTPo4-HueqAIK08e4v-YZz0LW';
		 	$post['response'] = $_POST['response'];


			$ch = curl_init();
			curl_setopt($ch, CURLOPT_URL,$url);
			curl_setopt($ch, CURLOPT_POST,1);
			curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			$result = curl_exec ($ch);

			try {

				$OBJ = json_decode($result);
					if ($OBJ->success!=true) {
						$_SESSION['message'][] = ['error','Captcha Varification Failed'];
						redirect('register');
					}

				}

				//catch exception
				catch(Exception $e) {
				  $_SESSION['message'][] = ['error','Captcha Varification Failed'];
						redirect('register');
				}

		
			$validator = $this->library('Validator');
			
			$validation = $validator->check($_POST, [
				  'name' => [
					 'required' => true,
					 'minlength' => 2,
				   ],
				  'email' => [
					 'required' => true,
					 'email' => true,
					 'minlength' => 2,
				  ],		
				   'password' => [
					 'required' => true,
				   ],
				   'confirmPassword' => [
					 'match' => 'password'
				   ]
			]);
				 
			if (!$validation->fails()) {
				
				$has = $userModel->hasEmail($input->get('email'));
				if($has === false):
		
					/* Hass Password */
					$password = password_hash($input->get('password'), PASSWORD_DEFAULT);
					
					/* Unique ID */	
					$userid = $this->uniqueid();	
					$slug = $this->slugify($input->get('name'));	
					
					$remember = null;		

			
					// $Insert = $userModel->add($userid, , $slug, $input->get('email'), $password, $input->get('user_type'));

					$regdata['userid'] =  $userid;
					$regdata['name'] =  $input->get('name');
					$regdata['slug'] =  $slug;
					$regdata['email'] =  $input->get('email');
					$regdata['shipping_address'] =  encrypt_text($input->get('shipping_address'));
					$regdata['password'] =  $password;
					$regdata['user_type'] =  $input->get('user_type');
					$regdata['imagelocation'] =  "default.png";
					$regdata['bg_imagelocation'] =  "wave.jpg";
					$regdata['joined'] =  date('Y-m-d H:i:s');
					

					$Insert = $this->model('Common_model')->add('user',$regdata);

					
					if ($Insert>0 ){

				$msg = $this->model('Common_model')->registration_string($regdata['name'],$regdata['password']);
				$email = $this->model('Common_model')->email($regdata['email'],'Registration Success',$msg);


						

						// $subsData['user_id'] = $Insert;
						// if (isset($_SESSION['plan_id'])) {
						// 	$subsData['plan_id'] = $_SESSION['plan_id'];
						// }
						// $subsData['token'] = base64_encode(time());
						// $subsData['created_at'] = date('Y-m-d H:i:s');

						// $Insert = $this->model('Common_model')->add('subscription',$subsData);

						//$Insert == 1 in old

						// Attempt to auth the user
						$auth = $user->login(
							 $input->get('email'),
							 $input->get('password'),
							 $remember
						  );

						// If the user has been logged-in
						if($auth) {
						//***********************EDITED
						//redirect('/register/paid');
						//***********************EDITED

						 if($user->data()["user_type"] === "1"){
							redirect(FREELANCER_URL.'/dashboard');
						 }elseif($user->data()["user_type"] === "2"){
							redirect(CLIENT_URL.'/dashboard');
						 }
						 
						}
						// If the user could not be logged-in
						elseif(isset($_POST['login'])) {
							$_SESSION['message'][] = ['error', $this->lang['invalid_user_pass']];
						}
						
					} else {
						$_SESSION['message'][] = ['warning', $this->lang['error_when_saving']];
						redirect('register');
					}
				elseif($has === true):
						$_SESSION['message'][] = ['warning', $this->lang['email_is_available']];
						redirect('register');
                endif;				
					

			}else {
			 foreach ($validation->errors()->all() as $err) {
				$str = implode(" ",$err);
				 foreach ($err as $r) {
					$_SESSION['errors'][] = ['error', $r];
				 }	
			 }
						redirect('register');
			}
		 }	
		}

        return ['content' => $this->view->render($data, 'home/register')];
    }
	
	
	
	public function api_register(){
		
	
		/* Use Input Library */
		$input = $this->library('Input');
		
		/* Use User Model */
		$userModel = $this->model('User'); 
		
		$name = $input->get('name');
		$email = $input->get('email');
		$password = $input->get('password');
		
		if (empty($name)) {
            echo json_encode(array('success'=>'false','msg'=>'Please enter Name.'));
			exit();
            
        }
		
		if (empty($email)) {
            echo json_encode(array('success'=>'false','msg'=>'Please enter Email.'));
			exit();
            
        }
      
        if (empty($password)) {
            echo json_encode(array('success'=>'false','msg'=>'Please enter Password.'));
			exit();
        }
        
        $checkdata['email'] = $email;
        
        $check = $this->model('Common_model')->get('user',$checkdata);
        if($check){
            echo json_encode(array('success'=>'false','msg'=>'Email already exits.'));
			exit();
        }
        
		
		/* Hass Password */
		$password = password_hash($input->get('password'), PASSWORD_DEFAULT);
		
		/* Unique ID */
		$userid = $this->uniqueid();	
		$slug = $this->slugify($input->get('name'));	
		
		$remember = null;	

		$regdata['userid'] =  $userid;
		$regdata['name'] =  $input->get('name');
		$regdata['slug'] =  $slug;
		$regdata['email'] =  $input->get('email');
		$regdata['password'] =  $password;
		$regdata['user_type'] =  '2';
		$regdata['imagelocation'] =  "default.png";
		$regdata['bg_imagelocation'] =  "wave.jpg";
		$regdata['joined'] =  date('Y-m-d H:i:s');
		

		$Insert = $this->model('Common_model')->add('user',$regdata);	

		if($Insert) {
			echo json_encode(array('success'=>'true','msg'=>'Registered successfully!','data'=>'NA'));
			exit();
	
		}else{
			echo json_encode(array('success'=>'false','msg'=>'Error.. Try again later...','data'=>'NA'));
			exit();
		}		
		
		
	}


	
	//Random String
	function uniqueid()
	{
		$un = substr(number_format(time() * rand(),0,'',''),0,12);
		return $un;
	}
	/**
	 * Return the slug of a string to be used in a URL.
	 *
	 * @return String
	 */
	function slugify($text){
		// replace non letter or digits by -
		$text = preg_replace('~[^\pL\d]+~u', '-', $text);

		// transliterate
		$text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);

		// remove unwanted characters
		$text = preg_replace('~[^-\w]+~', '', $text);

		// trim
		$text = trim($text, '-');

		// remove duplicated - symbols
		$text = preg_replace('~-+~', '-', $text);

		// lowercase
		$text = strtolower($text);

		if (empty($text)) {
		  return 'n-a';
		}

		return $text;
	}


	function paid(){


		$Uemail = "dummy@gmail.com";
		$Uname = "Dumy_ysi";

		$data["user"]["email"] = $Uemail;
		$data["user"]["name"] = $Uname;

		$settingsModel = $this->model('Settings');
		$data['currency_code'] = $settingsModel->currency_code();

		$data['settings'] = $settingsModel->get();

			/*Use User Library*/
		$paymentid = $this->rando();
        $session = $this->library('Session');
		
			if(!$session->exists('checkout_funds')){
				$_SESSION['message'][] = ['error', $this->lang['add_funds']];
				redirect(CLIENT_URL.'/addfunds');
			}
			
		$amount = $session->get('checkout_funds');
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
			$p->add_field('business', $data['settings']['paypal_email']); //don't need add this item. if your set the $p -> paypal_mail.
			$p->add_field('return', $this_script.'/'.CLIENT_URL.'/paypal/success/'.$paymentid);
			$p->add_field('cancel_return', $this_script.'/'.CLIENT_URL.'/paypal/cancel');
			$p->add_field('notify_url', $this_script.'/'.CLIENT_URL.'/paypal/ipn');
			$p->add_field('item_name', "Funds Checkout");
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

		// Setup class
        $p = $this->library('paypal_class');
			$this_script = URL_PATH;
			  $user_email = $Uemail;
			  $usern = $Uname;
			$p->add_field('business', $data['settings']['paypal_email']); //don't need add this item. if your set the $p -> paypal_mail.
			$p->add_field('return', $this_script.'/'.CLIENT_URL.'/paypal/success/'.$paymentid);
			$p->add_field('cancel_return', $this_script.'/'.CLIENT_URL.'/paypal/cancel');
			$p->add_field('notify_url', $this_script.'/'.CLIENT_URL.'/paypal/ipn');
			$p->add_field('item_name', "Funds Checkout");
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


		return ['content' => $this->view->render($data, 'home/paid')];

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


}