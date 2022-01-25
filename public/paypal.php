<?php

echo "<pre>";


session_start();


function redirector($location=""){

	$script_uri  = $_SERVER['SCRIPT_URI'];

	$base_url = str_replace("/public/paypal.php","",$script_uri);

	$return_url = $base_url.$location;

	header('Location: '.$return_url);
	echo "<script>
	window.location.replace('".$return_url."');
	</script>";
	die();

}

if (!isset($_GET['for'])) {
	$_SESSION['message'][] = ['error', 'Invalid For !'];
		redirector("/client/dashboard");
}


if (!isset($_GET['type'])) {
	$_SESSION['message'][] = ['error', 'Invalid Type !'];
		redirector("/client/dashboard");
}


$for = $_GET['for'];
$type = $_GET['type'];


if ($for=="subscription") {

	if ($type=='cancel') {
		$_SESSION['message'][] = ['error', 'Payment Failed'];
		redirector("/client/dashboard");
		
	}

	if ($type=='notify') {
		$_SESSION['message'][] = ['error', 'Payment Failed'];
		redirector("/client/dashboard");
		
	}


	if ($type=='return') {

		$response = array();


		if (isset($_SESSION)) {
			foreach ($_SESSION as $key => $value) {
				$response[$key] = $value;
			}
		}

		if (isset($_GET)) {
			foreach ($_GET as $key => $value) {
				$response[$key] = $value;
			}
		}


		if (isset($_POST)) {
			foreach ($_POST as $key => $value) {
				$response[$key] = $value;
			}
		}

		echo "<pre>";


		$script_uri  = $_SERVER['SCRIPT_URI'];
		$base_url = str_replace("/public/paypal.php","",$script_uri);

		$target_url = $base_url."/subscription/confirm_payment";

		$param = http_build_query($response);

		 $out = file_get_contents($target_url."?".$param);


		try {
		  $sts = json_decode($out);

		}
		//catch exception
		catch(Exception $e) {
			$_SESSION['message'][] = ['error', 'Invalid Response 1087'];
		   redirector("/client/dashboard");

		}

		if ($sts->status==1) {
			$_SESSION['message'][] = ['success', 'Payment Successfull'];
		   //redirector("/client/dashboard");	
		   redirector("/client/subscription_invoice?subscription_id=".base64_encode($sts->id));	
		}

		if ($sts->status==0) {
			$_SESSION['message'][] = ['error', 'Processing Error !'];
		   redirector("/client/dashboard");	
		}

		
	}

}



if ($for=="job") {

	if ($type=='cancel') {
		$_SESSION['message'][] = ['error', 'Payment Failed'];
		redirector('/view_job?id='.base64_encode($_SESSION['pay_job_id']));
		
	}

	if ($type=='notify') {
		$_SESSION['message'][] = ['error', 'Payment Failed'];
		redirector('/view_job?id='.base64_encode($_SESSION['pay_job_id']));
		
	}

	if ($type=='return') {

		$response = array();


		if (isset($_SESSION)) {
			foreach ($_SESSION as $key => $value) {
				$response[$key] = $value;
			}
		}

		if (isset($_GET)) {
			foreach ($_GET as $key => $value) {
				$response[$key] = $value;
			}
		}


		if (isset($_POST)) {
			foreach ($_POST as $key => $value) {
				$response[$key] = $value;
			}
		}

		$script_uri  = $_SERVER['SCRIPT_URI'];
		$base_url = str_replace("/public/paypal.php","",$script_uri);

		$target_url = $base_url."/client/confirm_job_paypal";

		$param = http_build_query($response);


		 $out = file_get_contents($target_url."?".$param);




		try {
		  $sts = json_decode($out);
		}
		//catch exception
		catch(Exception $e) {
			$_SESSION['message'][] = ['error', 'Invalid Response 1087'];
		   redirector('/client/view_job?id='.base64_encode($_SESSION['pay_job_id']));

		}

		if ($sts->status==1) {
			$_SESSION['message'][] = ['success', 'Payment Successfull'];
		   //redirector('/client/view_job?id='.base64_encode($_SESSION['pay_job_id']));
			redirector('/client/payment_invoice?payment_id='.base64_encode($sts->id));
		}

		if ($sts->status==0) {
			$_SESSION['message'][] = ['error', 'Processing Error !'];
		   redirector('/client/view_job?id='.base64_encode($_SESSION['pay_job_id']));
		}

		redirector('/client/view_job?id='.base64_encode($_SESSION['pay_job_id']));

		
	}



}




redirector("/client/dashboard");	










?>