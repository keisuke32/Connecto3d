<?php

namespace Fir\Controllers;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class Contact extends Controller
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
		
		/* Use Input Library */
		$input = $this->library('Input');
		
		/* Use Settings Model */
		$settingsModel = $this->model('Settings');
        $data['settings'] = $settingsModel->get();

		//Edit Email
		if(isset($_POST['post_contact'])){
		 if ($input->exists()) {

			$validator = $this->library('Validator');
			
			$validation = $validator->check($_POST, [
			  'name' => [
				 'required' => true,
			  ],
			  'email' => [
				 'required' => true,
				 'email' => true,
			  ],
			  'subject' => [
				 'required' => true,
			  ],
			  'message' => [
				 'required' => true,
			  ],
			]);
				 
			if (!$validation->fails()) {
				
	
					$name = e($input->get('name'));		
					$email = e($input->get('email'));	
					$subject = e($input->get('subject'));		
					$message = e($input->get('message'));	
					 

					$emailTo = $data['settings']['contact_email']; // Put your own email address here
					$body = "Name: $name \n\nEmail: $email \n\nSubject: $subject \n\nMessage:\n $message";
					$headers = 'From: My Site <'.$emailTo.'>' . "\r\n" . 'Reply-To: ' . $email;

					mail($emailTo, $subject, $body, $headers);					 			
				 
					$_SESSION['message'][] = ['success', $this->lang['email_sent']];
					redirect('contact');
					
			 } else {

				 foreach ($validation->errors()->all() as $err) {
					$str = implode(" ",$err);
					 foreach ($err as $r) {
						$_SESSION['errors'][] = ['error', $r];
					 }	
				 }
				 
				 redirect('contact');
		   }

		 }
		}	
		

        return ['content' => $this->view->render($data, 'home/contact')];
    }
}