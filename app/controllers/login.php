<?php

namespace Fir\Controllers;

class Login extends Controller
{
    /**
     * This would be your http://localhost/project-name/ index page
     * 
     * @return array
     */
    protected $admin;
	
    public function index()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];
			
		$validation = "";	
        $user = $this->library('User');
		/* Use Settings Model */
		$settingsModel = $this->model('Settings');
        $data['settings'] = $settingsModel->get();

        // If the user tries to log-in
			if(isset($_POST['login'])) {

		
			$validator = $this->library('Validator');
			
			$validation = $validator->check($_POST, [
			  'email' => [
				 'required' => true,
				 'minlength' => 2,
				 'maxlength' => 200
			   ],
			  'password' => [
				 'required' => true,
				 'minlength' => 2,
				 'maxlength' => 200
			   ]
			]);
				 
			if (!$validation->fails()) {
					$email = $_POST['email'];
					$password = $_POST['password'];
					$remember = null;
					
					if(isset($_POST['remember'])) {
					  $remember = ($_POST['remember'] === 'on') ? true : false;
					}



					// Attempt to auth the user
					$auth = $user->login(
						 $email,
						 $password,
						 $remember,
						 $_POST['type']
					  );

					// If the user has been logged-in
					if($auth) {
						
						
						 if($user->data()["user_type"] === "1"){
							redirect(FREELANCER_URL.'/dashboard');
						 }elseif($user->data()["user_type"] === "2"){
							redirect(CLIENT_URL.'/dashboard');
						 }
					}
					// If the user could not be logged-in
					elseif(isset($_POST['login'])) {
						$_SESSION['message'][] = ['error', $this->lang['invalid_user_pass']];
						redirect('login');
					}

				}
			else {
			 foreach ($validation->errors()->all() as $err) {
				$str = implode(" ",$err);
				 foreach ($err as $r) {
					$_SESSION['errors'][] = ['error', $r];
				 }	
			 }
			}
		}	



        return ['content' => $this->view->render($data, 'home/login')];
    }
	
	
	public function login_api(){
		
		$user = $this->library('User');
		$input = $this->library('Input'); 
		/* Use User Model */
		$userModel = $this->model('User');
		$email = $input->get('email');
		$password = $input->get('password');
		$firebaseToken = $input->get('firebase_token');
		$remember = null;
		
		if (empty($email)) {
            echo json_encode(array('success'=>'false','msg'=>'Please enter Email.'));
			exit();
            
        }
      
        if (empty($password)) {
            echo json_encode(array('success'=>'false','msg'=>'Please enter Password.'));
			exit();
        }


		$auth = $user->login(
				 $email,
				 $password,
				 $remember
			  );


		if($auth) {
			$data = $userModel->getEmail($email);


			$userModel->update_token_user($firebaseToken,$data['userid']);
			$data['shipping_address'] = decrypt_text($data['shipping_address']);
			echo json_encode(array('success'=>'true','msg'=>'login successfully!','data'=>$data));
			exit();
	
		}else{
			echo json_encode(array('success'=>'false','msg'=>'Invalid Login','data'=>'NA'));
			exit();
		}	
	}
	

}