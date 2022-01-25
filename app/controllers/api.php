<?php

namespace Fir\Controllers;

class Api extends Controller
{
	public function login_api(){
		error_reporting(0);
		$input = $this->library('Input');
		//$user = $this->library('User');
		$email = $_REQUEST['email'];
		$password = $_REQUEST['password'];
		
		echo "<pre>"; print_r($input->get());
		
		$auth = $user->login(
				 $email,
				 $password,
				 $remember
			  );
		if($auth) {
			echo json_encode(array('success'=>'ture','msg'=>'login successfully!','data'=>$auth));
			exit();
			 
	
		}else{
			echo json_encode(array('success'=>'false','msg'=>'Invalid Login','data'=>'NA'));
			exit();
			
		}	
	}
	

}