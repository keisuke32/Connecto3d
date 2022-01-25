<?php

namespace Fir\Controllers;

use Aws\S3\S3Client;

class Requests extends Controller {

    /**
     * @var object
     */
    protected $model;

    public function index() {
        redirect();
    }

    public function search() {
        $model = $this->model('Requests');

        // Get the available locations
		$adminModel = $this->model('Admin');
        $data['currency'] = $adminModel->currencyDetails();
		
        return ['results' => $this->view->render($data, 'requests/search')];
    }

    public function postmessage() {
		$input = $this->library('Input');
		
		/*Use User Library*/
        $user = $this->library('User');
		$data['user'] = $user->data();
		
        $cid = $input->get('cid');
        $userid = $input->get('userid');
        $message = $input->get('message');

		if($message == ''):
		
			return ['results' => $this->view->render($data, 'requests/empty_message')];
		
		else:
		
			$clientModel = $this->model('Client');
			$data['conversation'] = $clientModel->get_conversation_id($cid);
			$data['project'] = $clientModel->get_project($data['conversation']['projectid']);
			$data['freelancer'] = $clientModel->get_freelancer($data['conversation']['freelancerid']);
			$Insert_n = $clientModel->addNotification($data['conversation']['projectid'], $userid, $data['conversation']['freelancerid'], 2); 
			$data['latest_notification'] = $clientModel->getLatestNotification($data['conversation']['projectid']); 
			$Insert_p = $clientModel->post_message($data['conversation']['cid'], $data['conversation']['projectid'], $data['latest_notification']['id'], $userid, $message);
			$data['message'] = $clientModel->get_latest_message($data['conversation']['projectid']);  
			$data['conversation_reply_timeago'] = $clientModel->conversation_reply_timeago($data['conversation']['cid']);
			return ['results' => $this->view->render($data, 'requests/post_message')];
		endif;
    }

    public function f_postmessage() {
		$input = $this->library('Input');
		
		/*Use User Library*/
        $user = $this->library('User');
		$data['user'] = $user->data();
		
        $cid = $input->get('cid');
        $userid = $input->get('userid');
        $message = $input->get('message');

		if($message == ''):
		
			return ['results' => $this->view->render($data, 'requests/empty_message')];
		
		else:
		
			$freelancerModel = $this->model('Freelancer');
			$data['conversation'] = $freelancerModel->get_conversation_id($cid);
			$data['project'] = $freelancerModel->get_project($data['conversation']['projectid']);
			$data['client'] = $freelancerModel->get_client($data['conversation']['clientid']);
			$Insert_n = $freelancerModel->addNotificationNo($data['conversation']['projectid'], $userid, $data['conversation']['clientid'], 2); 
			$data['latest_notification'] = $freelancerModel->getLatestNotificationNo($data['conversation']['projectid']); 
			$Insert_p = $freelancerModel->post_message($data['conversation']['cid'], $data['conversation']['projectid'], $data['latest_notification']['id'], $userid, $message);
			$data['message'] = $freelancerModel->get_latest_message($data['conversation']['projectid']);  
			$data['conversation_reply_timeago'] = $freelancerModel->conversation_reply_timeago($data['conversation']['cid']);

			
			return ['results' => $this->view->render($data, 'requests/post_message_freelancer')];
		endif;
    }

    public function post_dispute() {
		$input = $this->library('Input');
		
		/*Use User Library*/
        $user = $this->library('User');
		$data['user'] = $user->data();
		
        $cid = $input->get('cid');
        $userid = $input->get('userid');
        $message = $input->get('message');

		if($message == ''):
		
			return ['results' => $this->view->render($data, 'requests/empty_message')];
		
		else:
		
			$clientModel = $this->model('Client');
			
			$data['conversation'] = $clientModel->get_dispute_conversation_id($cid);
			
			$Insert_p = $clientModel->post_dispute($data['conversation']['cid'], $data['conversation']['projectid'], $userid, $message);
			
			$data['message'] = $clientModel->get_dispute_message($data['conversation']['cid'], $data['user']['userid']);  
			
			$data['conversation_reply_timeago'] = $clientModel->dispute_conversation_reply_timeago($data['conversation']['cid']);

			
			return ['results' => $this->view->render($data, 'requests/post_dispute')];
		endif;
    }

    public function f_post_dispute() {
		$input = $this->library('Input');
		
		/*Use User Library*/
        $user = $this->library('User');
		$data['user'] = $user->data();
		
        $cid = $input->get('cid');
        $userid = $input->get('userid');
        $message = $input->get('message');

		if($message == ''):
		
			return ['results' => $this->view->render($data, 'requests/empty_message')];
		
		else:
		
			$freelancerModel = $this->model('Freelancer');
			
			$data['conversation'] = $freelancerModel->get_dispute_conversation_id($cid);
			
			$Insert_p = $freelancerModel->post_dispute($data['conversation']['cid'], $data['conversation']['projectid'], $userid, $message);
			
			$data['message'] = $freelancerModel->get_dispute_message($data['conversation']['cid'], $data['user']['userid']);  
			
			$data['conversation_reply_timeago'] = $freelancerModel->dispute_conversation_reply_timeago($data['conversation']['cid']);

			
			return ['results' => $this->view->render($data, 'requests/post_dispute_freelancer')];
		endif;
    }

    public function admin_post_dispute() {
		$input = $this->library('Input');
		
		/*Use User Library*/
        $admin = $this->library('Admin');
		$data['admin'] = $admin->data();
		
        $cid = $input->get('cid');
        $userid = $input->get('userid');
        $message = $input->get('message');

		if($message == ''):
		
			return ['results' => $this->view->render($data, 'requests/empty_message')];
		
		else:
		
			$adminModel = $this->model('Admin');
			
			$data['conversation'] = $adminModel->get_dispute_conversation_id($cid);
			
			$Insert_p = $adminModel->post_dispute($data['conversation']['cid'], $data['conversation']['projectid'], $userid, $message);
			
			$data['message'] = $adminModel->get_dispute_message($data['conversation']['cid'], $data['admin']['adminid']);  
			
			$data['conversation_reply_timeago'] = $adminModel->dispute_conversation_reply_timeago($data['conversation']['cid']);

			
			return ['results' => $this->view->render($data, 'requests/post_dispute_admin')];
		endif;
    }

    public function hire_freelancer() {
		$input = $this->library('Input');
		
		/*Use User Library*/
        $user = $this->library('User');
		$data['user'] = $user->data();
		
        $id = $input->get('id');
		
		$clientModel = $this->model('Client');
		$data['proposal'] = $clientModel->get_proposal($id);
		$data['project'] = $clientModel->get_project($data['proposal']['projectid']);
		$data['freelancer'] = $clientModel->get_freelancer($data['proposal']['freelancerid']);
		$Insert_n = $clientModel->addNotification($data['proposal']['projectid'], $data['proposal']['clientid'], $data['proposal']['freelancerid'], 4); 
		$data['latest_notification'] = $clientModel->get_latest_notification_client($data['proposal']['projectid'], $data['proposal']['clientid']); 
		$Insert_p = $clientModel->addescrow($data['proposal']['id'], 
		                                    $data['proposal']['projectid'], 
											$data['proposal']['freelancerid'], 
											$data['proposal']['clientid'], 
											$data['latest_notification']['id'], 
											$data['proposal']['budget']);
		
		$amount_new = $data['user']["credit_account"] - $data['proposal']['budget']; 									
		$update_a = $clientModel->update_credit_account($amount_new, $data['proposal']['clientid']); 
		$update_b = $clientModel->update_project($data['proposal']['projectid'], $data['proposal']['freelancerid']); 
		$update_c = $clientModel->update_proposal($id, $data['proposal']['freelancerid']); 
		$has = $clientModel->has_other_proposals($data['proposal']['projectid'], $data['proposal']['freelancerid']);
        if($has === true){
			$update_d = $clientModel->update_proposals($data['proposal']['projectid'], $data['proposal']['freelancerid']); 
		}
		
		 if ($update_c == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['hired_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_hire'];
		 }	

        return $response;
    }

    public function complete_project() {
		$input = $this->library('Input');
		
		/*Use User Library*/
        $user = $this->library('User');
		$data['user'] = $user->data();
		
		$settingsModel = $this->model('Settings');
		$data['settings'] = $settingsModel->get();
		
        $id = $input->get('id');
		
		$clientModel = $this->model('Client');
		
		$data['project'] = $clientModel->get_project_id($id, $data['user']['userid']);
		
		$data['escrow'] = $clientModel->get_escrow($data['project']['projectid'], $data['user']['userid']);
		
		$Insert_n = $clientModel->addNotification($data['project']['projectid'], $data['project']['userid'], $data['project']['freelancerid'], 7); 
		
		$data['latest_notification'] = $clientModel->get_latest_notification_client($data['project']['projectid'], $data['project']['userid']); 
		
		$company_money = $data['escrow']["budget"] * ($data['settings']['revenue'] / 100); 
		$freelancer_money = $data['escrow']["budget"] - $company_money; 		
		
		$Insert_p = $clientModel->addpayments($data['escrow']['id'], 
		                                    $data['escrow']['projectid'], 
											$data['escrow']['freelancerid'], 
											$data['escrow']['clientid'], 
											$data['latest_notification']['id'], 
											$data['escrow']["budget"], 
											$freelancer_money, 
											$company_money);	
											
		$data['freelancer'] = $clientModel->get_freelancer($data['project']['freelancerid']);
								
		$amount_new = $data['freelancer']["credit_account"] + $freelancer_money; 											
											
		$update_a = $clientModel->update_credit_account($amount_new, $data['escrow']['freelancerid']); 
		
		$update_b = $clientModel->update_project_complete($data['escrow']['projectid']); 
		
		$update_c = $clientModel->update_escrow($data['escrow']['id']); 
		

		
		 if ($update_c == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['hired_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_hire'];
		 }	

        return $response;
    }

    public function award_freelancer() {
		$input = $this->library('Input');
		
		/*Use User Library*/
        $admin = $this->library('Admin');
		$data['admin'] = $admin->data();
		
		$settingsModel = $this->model('Settings');
		$data['settings'] = $settingsModel->get();
		
        $id = $input->get('id');
		
		$adminModel = $this->model('Admin');
		
		$data['project'] = $adminModel->get_project_id($id);
		
		$data['escrow'] = $adminModel->get_escrow($data['project']['projectid'], $data['project']['userid']);
		
		$Insert_n = $adminModel->addNotification($data['project']['projectid'], $data['project']['userid'], $data['project']['freelancerid'], 7); 
		
		$data['latest_notification'] = $adminModel->get_latest_notification_client($data['project']['projectid'], $data['project']['userid']); 
		
		$company_money = $data['escrow']["budget"] * ($data['settings']['revenue'] / 100); 
		$freelancer_money = $data['escrow']["budget"] - $company_money; 		
		
		$Insert_p = $adminModel->addpayments($data['escrow']['id'], 
		                                    $data['escrow']['projectid'], 
											$data['escrow']['freelancerid'], 
											$data['escrow']['clientid'], 
											$data['latest_notification']['id'], 
											$data['escrow']["budget"], 
											$freelancer_money, 
											$company_money);	
											
		$data['freelancer'] = $adminModel->get_freelancer($data['project']['freelancerid']);
								
		$amount_new = $data['freelancer']["credit_account"] + $freelancer_money; 											
											
		$update_a = $adminModel->update_credit_account($amount_new, $data['escrow']['freelancerid']); 
		
		$update_b = $adminModel->update_project_complete($data['escrow']['projectid']); 
		
		$update_c = $adminModel->update_escrow($data['escrow']['id']); 
		
		$update_d = $adminModel->update_dispute_conversation($data['project']['projectid'], $data['project']['userid'], $data['project']['freelancerid']); 
		

		
		 if ($update_d == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['awarded_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_award'];
		 }	

        return $response;
    }

    public function award_client() {
		$input = $this->library('Input');
		
		/*Use User Library*/
        $admin = $this->library('Admin');
		$data['admin'] = $admin->data();
		
		$settingsModel = $this->model('Settings');
		$data['settings'] = $settingsModel->get();
		
        $id = $input->get('id');
		
		$adminModel = $this->model('Admin');
		
		$data['project'] = $adminModel->get_project_id($id);
		
		$data['escrow'] = $adminModel->get_escrow($data['project']['projectid'], $data['project']['userid']);
		
		$Insert_n = $adminModel->award_client($data['project']['projectid'], 
		                                      $data['project']['userid'], 
											  $data['project']['freelancerid'],
											  $data['escrow']["budget"],
											  $data['escrow']['id']); 
		

		
		 if ($Insert_n == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['awarded_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_award'];
		 }	

        return $response;
    }

    public function deletecurrency() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->currencyDelete($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }

    public function deleteauthor() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->authorDelete($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }

        return $response;
    }

    public function delete_user() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->userDelete($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }

        return $response;
    }


    public function delete_faq() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->delete_faq($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }

    public function delete_category() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->delete_category($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }

    public function delete_skill() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->delete_skill($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }

    public function delete_workexperience() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->delete_workexperience($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }

    public function delete_education() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->delete_education($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }

    public function delete_portfolio() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->delete_portfolio($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }
	
	

    public function delete_project() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->delete_project($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }
	

    public function delete_proposal() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->delete_proposal($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }	

    public function delete_chat() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->delete_chat($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }

    public function decline_invite() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->decline_invite($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['declined_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_decline'];
		 }	

        return $response;
    }

    public function delete_file() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->delete_file($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }

    public function delete_rating() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->delete_rating($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }

    public function delete_dispute() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->delete_dispute($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['deleted_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_delete'];
		 }	

        return $response;
    }

    public function verify_user() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->verify_user($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['verified_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_verify'];
		 }	

        return $response;
    }

    public function decline_user() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->decline_user($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['declined_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_decline'];
		 }	

        return $response;
    }

    public function unverify_user() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->unverify_user($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['unverified_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_unverify'];
		 }	

        return $response;
    }

    public function pay_freelancer() {
        $model = $this->model('Requests');
		$input = $this->library('Input');
		
        $id = $input->get('id');
						
		 $delete = $model->pay_freelancer($id);
		
		 if ($delete == 1) {
				$response['status']  = $this->lang['success'];
				$response['message'] = $this->lang['paid_successfully'];
		 } else {
				$response['status']  = $this->lang['error'];
				$response['message'] = $this->lang['unable_to_pay'];
		 }	

        return $response;
    }
	
	//Random String
	public function rando($length = 14){
		$str = "";
		$characters = array_merge(range('A','Z'), range('a','z'), range('0','9'));
		$max = count($characters) - 1;
		for ($i = 0; $i < $length; $i++) {
			$rand = mt_rand(0, $max);
			$str .= $characters[$rand];
		}
		return $str;
	}
		
}