<?php

namespace Fir\Controllers;

use Carbon\Carbon;
use Fir\Models\Common_model;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class Client extends Controller
{
    /**
     * This would be your http://localhost/project-name/ index page
     *
     * @return array
     */
    protected $admin;

    public function index()
    {
        redirect(CLIENT_URL . '/jobs');

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        if (isset($this->url[2])) {
            $data['url'] = $this->url[2];
        } else {
            $data['url'] = $this->url[1];
        }

        /* Use User Model */
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;


        $this->check_subscription();

        /*Use Project Model*/
        $projectModel = $this->model('Project');
        $data['has'] = $projectModel->has($data['user']['userid']);
        $data['projects_has_open'] = $projectModel->hasOpenProject($data['user']['userid']);
        $data['projects_count_open'] = $projectModel->countOpenProject($data['user']['userid']);
        $data['projects'] = $projectModel->get($data['user']['userid']);
        $data['projects_timeago'] = $projectModel->timeago($data['user']['userid']);
        $data['projects_proposals'] = $projectModel->countProposals($data['user']['userid']);

        /* Project In Progress */
        $data['projects_has_closed'] = $projectModel->hasClosedProject($data['user']['userid']);
        $data['projects_count_closed'] = $projectModel->countClosedProject($data['user']['userid']);
        $data['projects_closed'] = $projectModel->getClosed($data['user']['userid']);
        $data['projects_escrow'] = $projectModel->escrow($data['user']['userid']);
        $data['get_conversation'] = $projectModel->get_conversation_user($data['user']['userid']);

        /* Project In Completed */
        $data['projects_has_completed'] = $projectModel->hasCompletedProject($data['user']['userid']);
        $data['projects_count_completed'] = $projectModel->countCompletedProject($data['user']['userid']);
        $data['projects_completed'] = $projectModel->getCompleted($data['user']['userid']);
        $data['projects_payments'] = $projectModel->payments($data['user']['userid']);

        /* Project In Dispute */
        $data['has_disputed_projects'] = $projectModel->has_disputed_projects($data['user']['userid']);
        $data['count_disputed_projects'] = $projectModel->count_disputed_projects($data['user']['userid']);
        $data['disputed_projects'] = $projectModel->disputed_projects($data['user']['userid']);
        $data['get_dispute_conversation'] = $projectModel->get_dispute_conversation($data['user']['userid']);

        /*Use User Model*/
        $userModel = $this->model('User');
        $data["projects_user"] = $userModel->details();

        /*Use Category Model*/
        $categoryModel = $this->model('Category');
        $data['categories'] = $categoryModel->details();

        /*Use Skills Model*/
        $skillsModel = $this->model('Skill');
        $data['skills'] = $skillsModel->details();

        /* Use Input Library */
        $input = $this->library('Input');

        // Add
        if (isset($this->url[2]) && $this->url[2] == 'add') {

            /*Add Portfolio*/
            if (isset($_POST['add_project'])) {
                if ($input->exists()) {

                    $validator = $this->library('Validator');

                    $validation = $validator->check($_POST, [
                        'title' => [
                            'required' => true
                        ],
                        'budget' => [
                            'required' => true
                        ],
                        'category' => [
                            'required' => true
                        ],
                        'skills[]' => [
                            'required' => true
                        ],
                        'description' => [
                            'required' => true
                        ],
                    ]);

                    if (!$validation->fails()) {

                        $projectid = $this->rando();
                        $slug = $this->slugify($input->get('title'));

                        $skills = $input->get('skills');
                        $choice2 = implode(',', $skills);


                        $insert = $projectModel->add($projectid,
                            $data['user']['userid'],
                            $input->get('title'),
                            $slug,
                            $input->get('budget'),
                            $input->get('category'),
                            $choice2,
                            $input->get('description'));

                        if ($insert == 1) {
                            $_SESSION['message'][] = ['success', $this->lang['details_added']];
                            redirect(CLIENT_URL . '/dashboard/add');
                        } else {
                            $_SESSION['message'][] = ['warning', "test"];
                            redirect(CLIENT_URL . '/dashboard/add');
                        }


                    } else {

                        foreach ($validation->errors()->all() as $err) {
                            $str = implode(" ", $err);
                            foreach ($err as $r) {
                                $_SESSION['errors'][] = ['error', $r];
                            }
                        }

                        redirect(CLIENT_URL . '/dashboard/add');
                    }

                }
            }

            return ['content' => $this->view->render($data, 'client/project_add')];

        } elseif (isset($this->url[2]) && $this->url[2] == 'edit') {

            $has = $projectModel->hasProjectNo($this->url[3], $data['user']['userid']);

            // If the currency requested exists
            if ($has === true) {


                /* User data */
                $data["project"] = $projectModel->getProjectNo($this->url[3]);

                /*Use Skills Model*/
                $skillModel = $this->model('Skill');
                $data['skills_array'] = $skillModel->getarray();

                //Edit
                if (isset($_POST['edit_project'])) {
                    if ($input->exists()) {

                        $validator = $this->library('Validator');

                        $validation = $validator->check($_POST, [
                            'title' => [
                                'required' => true
                            ],
                            'budget' => [
                                'required' => true
                            ],
                            'category' => [
                                'required' => true
                            ],
                            'skills[]' => [
                                'required' => true
                            ],
                            'description' => [
                                'required' => true
                            ],
                        ]);

                        if (!$validation->fails()) {


                            $slug = $this->slugify($input->get('title'));

                            $skills = $input->get('skills');
                            $choice2 = implode(',', $skills);


                            $update = $projectModel->updateProject(
                                $input->get('title'),
                                $slug,
                                $input->get('budget'),
                                $input->get('category'),
                                $choice2,
                                $input->get('description'),
                                $input->get('id'));


                            if ($update == 1) {
                                $_SESSION['message'][] = ['success', $this->lang['details_updated']];
                                redirect(CLIENT_URL . '/dashboard/edit/' . $input->get('id'));
                            } else {
                                $_SESSION['message'][] = ['warning', $this->lang['no_changes_made']];
                                redirect(CLIENT_URL . '/dashboard/edit/' . $input->get('id'));
                            }

                        } else {

                            foreach ($validation->errors()->all() as $err) {
                                $str = implode(" ", $err);
                                foreach ($err as $r) {
                                    $_SESSION['errors'][] = ['error', $r];
                                }
                            }

                            redirect(CLIENT_URL . '/dashboard/edit/' . $input->get('id'));
                        }

                    }
                }

                return ['content' => $this->view->render($data, 'client/project_edit')];

            } else {

                redirect(CLIENT_URL . '/dashboard');
            }
        } elseif (isset($this->url[2]) && $this->url[2] == 'in-progress') {

            return ['content' => $this->view->render($data, 'client/in_progress')];

        } elseif (isset($this->url[2]) && $this->url[2] == 'completed') {

            return ['content' => $this->view->render($data, 'client/completed')];

        } elseif (isset($this->url[2]) && $this->url[2] == 'disputed') {

            return ['content' => $this->view->render($data, 'client/disputed')];
        }


        return ['content' => $this->view->render($data, 'client/dashboard')];
    }

    public function logout()
    {
        $user = $this->library('User');

        $user->logout();

        redirect('login');
    }


    /**
     * Notifications
     */
    public function notifications()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');
        $clientModel->read_notifications($data['user']['userid']);
        if (!isset($this->url[2])) {
            $pg = 1;
        } else {
            $pg = $this->url[2];
        }

        $page = (int)(!isset($pg) ? 1 : $pg);
        $limit = '10';
        $startpoint = ($page * $limit) - $limit;
        $data['has_notifications'] = $clientModel->has_notifications($data['user']['userid']);
        $data['notifications_pagination'] = $clientModel->notifications_pagination($startpoint, $limit, $data['user']['userid']);
        $data['notifications_projects'] = $clientModel->projects($data['user']['userid']);
        $data['notifications_timeago'] = $clientModel->notifications_timeago($data['user']['userid']);
        $data['pagination'] = $this->Pagination($clientModel->total_notifications($data['user']['userid']), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/notifications/');


        return ['content' => $this->view->render($data, 'client/notifications')];
    }

    public function notifications_apis()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];
        /* Use Input Library */
        $input = $this->library('Input');
        $userId = $input->get('user_id');

        /* Use Client Model */
        $clientModel = $this->model('Client');
        $limit = $input->get('limit');
        $startpoint = $input->get('offset');

        $items = $clientModel->notifications_pagination($startpoint, $limit, $userId);
        $retVal = [];

        foreach ($items as $item) {
            $userSendings = $this->model('Common_model')->get('user', array('userid' => $item['user_sending']));
            if(!isset($userSendings[0]))
            {
                continue;
            }

            $userSending = $userSendings[0];
            $projects = $this->model('Common_model')->get('projects', array('projectid' => $item['projectid']));
            $project = $projects[0];
            $text = null;
            switch ($item['type']) {
                case '1':
                    $text = $this->lang['applied_to'];
                    break;
                case '2':
                    $text = $this->lang['posted_a_message_to'];
                    break;
                case '3':
                    $text = $this->lang['invited_you_to_apply_to'];
                    break;
                case '4':
                    $text = $this->lang['hired_you_to_work_on'];
                    break;
                case '5':
                    $text = $this->lang['uploaded_a_file'];
                    break;
                case '6':
                    $text = $this->lang['started_a_dispute'];
                    break;
                case '7':
                    $text = $this->lang['made_project_complete'];
                    break;
                case '8':
                    $text = $this->lang['posted_a_rating_of_you_on_this_project'];
                    break;
            }

            $dateFormat = date_create_from_format('Y-m-d H:i:s', $item['date_added']);
            $retVal[] = [
                'id' => $item['id'],
                'user_sending' => [
                    'name' => $userSending['name'],
                    'image' => '/' . PUBLIC_PATH . '/' . UPLOADS_PATH . '/admin/users/' . $userSending['imagelocation']
                ],
                'text' => $text,
                'custom_message' => $item['customer_message'],
                'project' => [
                    'name' => $project['title'],
                    'id' => $project['id']
                ],
                'job_id' => $item['job_id'],
                'created_at' => date('Y-m-d\TH:i:sP',  $dateFormat->getTimestamp()),
                'read_status' => $item['read_status']
            ];
        }

        echo json_encode(array('status' => 'true', 'msg' => 'successfully', 'data' => $retVal));
        die();
    }


    public function unread_notifications_api() {
        $id = $_GET['user_id'];
        $no = $this->model('Common_model')->get("notifications",  ["user_receiving" => $id, "read_status" => 0]);

        echo json_encode(array('status' => 'true', 'msg' => 'successfully', 'data' => count($no)));
        die();
    }

    public function read_notifications_api() {
        $id = $_POST['id'];
        $no = $this->model('Common_model')->update("notifications", [
            'read_status' => 1,
        ], ["id" => $id]);

        echo json_encode(array('status' => 'true', 'msg' => 'successfully'));
        die();
    }
    /**
     * Messages
     */

    public function messages()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');
        if (!isset($this->url[2])) {
            $pg = 1;
        } else {
            $pg = $this->url[2];
        }

        $page = (int)(!isset($pg) ? 1 : $pg);
        $limit = '10';
        $startpoint = ($page * $limit) - $limit;
        $data['has_messages'] = $clientModel->has_messages($data['user']['userid']);
        $data['messages_pagination'] = $clientModel->messages_pagination($startpoint, $limit, $data['user']['userid']);
        $data['messages_projects'] = $clientModel->projects($data['user']['userid']);
        $data['unread_conversations'] = $clientModel->unread_conversations($data['user']['userid']);
        $data['pagination'] = $this->Pagination($clientModel->total_messages($data['user']['userid']), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/messages/');


        return ['content' => $this->view->render($data, 'client/messages')];
    }


    /**
     * chat
     */
    public function chat()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');

        if (isset($this->url[2]) && $this->url[2] == 'view') {

            $has = $clientModel->has_conversation($this->url[4]);

            // If exists
            if ($has === true) {

                $slug = $clientModel->has_user($this->url[3]);

                // If exists
                if ($slug === true) {

                    if (!isset($this->url[5])) {
                        $pg = 1;
                    } else {
                        $pg = $this->url[5];
                    }

                    $page = (int)(!isset($pg) ? 1 : $pg);
                    $limit = '14';
                    $startpoint = ($page * $limit) - $limit;

                    $clientModel->update_conversation_reply($this->url[4], $data['user']['userid']);
                    $data['conversation'] = $clientModel->get_conversation($this->url[4]);
                    $data['total_conversation_reply'] = $clientModel->total_conversation_reply($data['conversation']['cid']);
                    $data['conversation_reply_pagination'] = $clientModel->conversation_reply_pagination($startpoint, $limit, $data['conversation']['cid']);
                    $data['pagination'] = $this->Pagination($data['total_conversation_reply'], $limit, $page, URL_PATH . '/' . CLIENT_URL . '/chat/view/' . $this->url[3] . '/' . $this->url[4] . '/');
                    $data['project'] = $clientModel->get_project($data['conversation']['projectid']);
                    $data['freelancer'] = $clientModel->get_freelancer($data['conversation']['freelancerid']);
                    $data['conversation_reply_timeago'] = $clientModel->conversation_reply_timeago($data['conversation']['cid']);


                    return ['content' => $this->view->render($data, 'client/chat_view')];
                } else {
                    redirect(CLIENT_URL . '/messages');
                }
            } else {
                redirect(CLIENT_URL . '/messages');
            }
        }
    }


    /**
     * proposals
     */
    public function proposals()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();
        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');
        if (!isset($this->url[3])) {
            $pg = 1;
        } else {
            $pg = $this->url[3];
        }

        $page = (int)(!isset($pg) ? 1 : $pg);
        $limit = '12';
        $startpoint = ($page * $limit) - $limit;
        $data['has_project'] = $clientModel->has_project($this->url[2]);
        $data['project'] = $clientModel->get_project_no($this->url[2], $data['user']['userid']);
        $data['has_proposals'] = $clientModel->has_proposals($data['project']['projectid']);
        $data['proposals_pagination'] = $clientModel->proposals_pagination($startpoint, $limit, $data['project']['projectid']);
        $data['has_conversation'] = $clientModel->has_conversation_user($data['project']['projectid'], $data['user']['userid']);
        if ($data['has_conversation'] === true):
            $data['get_conversation'] = $clientModel->get_conversation_user($data['project']['projectid'], $data['user']['userid']);
        endif;
        $data['freelancers_ratings'] = $clientModel->freelancers_ratings();
        $data['pagination'] = $this->Pagination($clientModel->total_messages($data['user']['userid']), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/proposals/' . $this->url[2] . '/');


        return ['content' => $this->view->render($data, 'client/proposals')];
    }


    /**
     * Invites
     */
    public function invites()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();
        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');
        if (!isset($this->url[2])) {
            $pg = 1;
        } else {
            $pg = $this->url[2];
        }

        $page = (int)(!isset($pg) ? 1 : $pg);
        $limit = '10';
        $startpoint = ($page * $limit) - $limit;
        $data['has_invites'] = $clientModel->has_invites($data['user']['userid']);
        $data['invites_pagination'] = $clientModel->invites_pagination($startpoint, $limit, $data['user']['userid']);
        $data['invites_projects'] = $clientModel->projects($data['user']['userid']);
        $data['pagination'] = $this->Pagination($clientModel->total_invites($data['user']['userid']), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/invites/');


        return ['content' => $this->view->render($data, 'client/invites')];
    }


    /**
     * invite
     */
    public function invite()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');

        $has = $clientModel->has_user($this->url[2]);

        // If exists
        if ($has === true) {

            $slug = $clientModel->has_slug($this->url[3]);

            // If exists
            if ($slug === true) {


                $data['freelancer'] = $clientModel->get_freelancer($this->url[2]);
                $data['projects'] = $clientModel->projects($data['user']['userid']);

                //Invite freelancer
                if (isset($_POST['invite_freelancer'])) {
                    if ($input->exists()) {

                        $validator = $this->library('Validator');

                        $validation = $validator->check($_POST, [
                            'message' => [
                                'required' => true,
                            ],
                        ]);

                        if (!$validation->fails()) {

                            $has_invite = $clientModel->has_invite($input->get('projectid'), $input->get('freelancerid'), $data['user']['userid']);

                            // If exists
                            if ($has_invite === false) {

                                $has_proposal = $clientModel->has_proposal($input->get('projectid'), $input->get('freelancerid'), $data['user']['userid']);

                                // If exists
                                if ($has_proposal === false) {


                                    $Insert = $clientModel->add_invite($input->get('projectid'), $input->get('freelancerid'), $data['user']['userid'], $input->get('message'));

                                    if ($Insert == 1) {
                                        $_SESSION['message'][] = ['success', $this->lang['invited_successfully']];
                                        redirect(CLIENT_URL . '/invite/' . $input->get('freelancerid') . '/' . $input->get('freelancer_slug'));
                                    } else {
                                        $_SESSION['message'][] = ['warning', $this->lang['error_when_saving']];
                                        redirect(CLIENT_URL . '/invite/' . $input->get('freelancerid') . '/' . $input->get('freelancer_slug'));
                                    }


                                } else {
                                    $_SESSION['message'][] = ['error', $this->lang['already_posted_a_proposal_to_the_project']];
                                    redirect(CLIENT_URL . '/invite/' . $input->get('freelancerid') . '/' . $input->get('freelancer_slug'));
                                }


                            } else {
                                $_SESSION['message'][] = ['error', $this->lang['already_invited_to_do_the_project']];
                                redirect(CLIENT_URL . '/invite/' . $input->get('freelancerid') . '/' . $input->get('freelancer_slug'));
                            }

                        } else {

                            foreach ($validation->errors()->all() as $err) {
                                $str = implode(" ", $err);
                                foreach ($err as $r) {
                                    $_SESSION['errors'][] = ['error', $r];
                                }
                            }

                            redirect(CLIENT_URL . '/invite/' . $input->get('freelancerid') . '/' . $input->get('freelancer_slug'));
                        }
                    }
                }


                return ['content' => $this->view->render($data, 'client/invite')];

            } else {
                redirect(CLIENT_URL . '/invites');
            }

        } else {
            redirect(CLIENT_URL . '/invites');
        }
    }


    /**
     * Funds
     */
    public function funds()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Input Library */
        $input = $this->library('Input');

        $session = $this->library('Session');
        $session->delete('checkout_funds');
        $session->delete('paymentid');

        /* Use Client Model */
        $clientModel = $this->model('Client');
        if (!isset($this->url[2])) {
            $pg = 1;
        } else {
            $pg = $this->url[2];
        }

        $page = (int)(!isset($pg) ? 1 : $pg);
        $limit = '10';
        $startpoint = ($page * $limit) - $limit;
        $data['has_funds'] = $clientModel->has_funds($data['user']['userid']);
        $data['funds_pagination'] = $clientModel->funds_pagination($startpoint, $limit, $data['user']['userid']);
        $data['pagination'] = $this->Pagination($clientModel->total_funds($data['user']['userid']), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/funds/');


        return ['content' => $this->view->render($data, 'client/funds')];
    }


    /**
     * Add Funds
     */
    public function addfunds()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /* Use Input Library */
        $input = $this->library('Input');

        $session = $this->library('Session');
        $session->delete('checkout_funds');
        $session->delete('paymentid');

        //Edit Profile Data
        if (isset($_POST['add_funds'])) {
            if ($input->exists()) {

                $validator = $this->library('Validator');

                $validation = $validator->check($_POST, [
                    'amount' => [
                        'required' => true,
                        'digit' => true,
                    ],
                ]);

                if (!$validation->fails()) {

                    /* Use Settings Model */
                    $settingsModel = $this->model('Settings');
                    $data['settings'] = $settingsModel->get();

                    $amount = $input->get('amount') + $data['settings']['transaction_fee'];

                    /*Use Session Library*/
                    $session = $this->library('Session');
                    $session->put("checkout_funds", $amount);

                    redirect(CLIENT_URL . '/checkout');


                } else {

                    foreach ($validation->errors()->all() as $err) {
                        $str = implode(" ", $err);
                        foreach ($err as $r) {
                            $_SESSION['errors'][] = ['error', $r];
                        }
                    }

                    redirect(CLIENT_URL . '/addfunds');
                }
            }
        }


        return ['content' => $this->view->render($data, 'client/funds_add')];
    }


    /**
     * Checkout
     */
    public function checkout()
    {
        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /* Use Settings Model */
        $settingsModel = $this->model('Settings');
        $data['settings'] = $settingsModel->get();
        $data['currency_code'] = $settingsModel->currency_code();

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        $data['user_isloggedin'] = $user->isLoggedIn();

        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();


        /*Use User Library*/
        $paymentid = $this->rando();
        $session = $this->library('Session');

        if (!$session->exists('checkout_funds')) {
            $_SESSION['message'][] = ['error', $this->lang['add_funds']];
            redirect(CLIENT_URL . '/addfunds');
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
        $p = $this->library('paypal_class');                    // initiate an instance of the class.
        $this_script = URL_PATH;
        $user_email = $user->data()["email"];
        $usern = $user->data()["name"];
        $p->add_field('business', $data['settings']['paypal_email']); //don't need add this item. if your set the $p -> paypal_mail.
        $p->add_field('return', $this_script . '/' . CLIENT_URL . '/paypal/success/' . $paymentid);
        $p->add_field('cancel_return', $this_script . '/' . CLIENT_URL . '/paypal/cancel');
        $p->add_field('notify_url', $this_script . '/' . CLIENT_URL . '/paypal/ipn');
        $p->add_field('item_name', "Funds Checkout");
        $p->add_field('item_number', '');
        $p->add_field('amount', $amount);
        $p->add_field('currency_code', $data['currency_code']);
        $p->add_field('usern', $usern);
        $p->add_field('user_email', $user_email);
        $p->add_field('cmd', '_xclick');
        $p->add_field('rm', '2');    // Return method = POST

        // 0 � all shopping cart payments use the GET method
        // 1 � the buyer's browser is redirected to the return URL by using the GET method, but no payment variables are included
        // 2 � the buyer's browser is redirected to the return URL by using the POST method, and all payment variables are included The default is 0.

        $data['paypal_form'] = $p; // submit the fields to paypal

        // Setup class
        $p = $this->library('paypal_class');
        $this_script = URL_PATH;
        $user_email = $user->data()["email"];
        $usern = $user->data()["name"];
        $p->add_field('business', $data['settings']['paypal_email']); //don't need add this item. if your set the $p -> paypal_mail.
        $p->add_field('return', $this_script . '/' . CLIENT_URL . '/paypal/success/' . $paymentid);
        $p->add_field('cancel_return', $this_script . '/' . CLIENT_URL . '/paypal/cancel');
        $p->add_field('notify_url', $this_script . '/' . CLIENT_URL . '/paypal/ipn');
        $p->add_field('item_name', "Funds Checkout");
        $p->add_field('item_number', '');
        $p->add_field('amount', $amount);
        $p->add_field('currency_code', $data['currency_code']);
        $p->add_field('usern', $usern);
        $p->add_field('user_email', $user_email);
        $p->add_field('cmd', '_xclick');
        $p->add_field('rm', '2');    // Return method = POST

        // 0 � all shopping cart payments use the GET method
        // 1 � the buyer's browser is redirected to the return URL by using the GET method, but no payment variables are included
        // 2 � the buyer's browser is redirected to the return URL by using the POST method, and all payment variables are included The default is 0.

        $data['paypal_form'] = $p; // submit the fields to paypal


        /* Stripe Section */
        $stripe = [
            "secret_key" => $data['settings']["stripe_secret_key"],
            "publishable_key" => $data['settings']["stripe_public_key"],
        ];

        \Stripe\Stripe::setApiKey($stripe['secret_key']);

        /* Amount in Cents */
        $data['amount_cents'] = $this->getMoneyAsCents($amount);


        return ['content' => $this->view->render($data, 'client/checkout')];
    }

    public function paypal()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /* Use Session Library */
        $session = $this->library('Session');
        $paymentid = $session->get('paymentid');
        $checkout_funds = $session->get('checkout_funds');

        /* Use Settings Model */
        $settingsModel = $this->model('Settings');
        $data['settings'] = $settingsModel->get();

        $amount = $checkout_funds - $data['settings']['transaction_fee'];

        if ($this->url[2] === "success"):

            if ($this->url[3] != $paymentid) {
                $_SESSION['message'][] = ['error', $this->lang['please_proceed_to_paypal']];
                $session->delete('checkout_funds');
                $session->delete('paymentid');
                redirect(CLIENT_URL . '/addfunds');
            }

            /* Use Funds Model */
            $fundsModel = $this->model('Funds');

            $type = "PayPal";

            $Insert = $fundsModel->add($paymentid, $user->data()["userid"], $user->data()["credit_account"], $type, $amount, $data['settings']['transaction_fee']);

            if ($Insert == 1) {
                $_SESSION['message'][] = ['success', $this->lang['paid_successfully']];
                $session->delete('checkout_funds');
                $session->delete('paymentid');
                redirect(CLIENT_URL . '/funds');
            } else {
                $_SESSION['message'][] = ['warning', $this->lang['error_when_saving']];
                $session->delete('checkout_funds');
                $session->delete('paymentid');
                redirect(CLIENT_URL . '/funds');
            }

        elseif ($this->url[2] === "cancel"):

            $_SESSION['message'][] = ['warning', $this->lang['you_canceled_the_transaction']];
            $session->delete('checkout_funds');
            $session->delete('paymentid');
            redirect(CLIENT_URL . '/addfunds');

        elseif ($this->url[2] === "ipn"):

            $_SESSION['message'][] = ['warning', $this->lang['instant_payment_notification_not_set']];
            $session->delete('checkout_funds');
            $session->delete('paymentid');
            redirect(CLIENT_URL . '/addfunds');

        endif;
    }

    public function stripe()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /* Use Settings Model */
        $settingsModel = $this->model('Settings');
        $data['settings'] = $settingsModel->get();
        $data['currency_code'] = $settingsModel->currency_code();

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /* Use Session Library */
        $session = $this->library('Session');
        $checkout_funds = $session->get('checkout_funds');
        $amount = $checkout_funds - $data['settings']['transaction_fee'];
        /* Amount in Cents */
        $data['amount_cents'] = $this->getMoneyAsCents($checkout_funds);

        $paymentid = $this->rando();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Stripe Section */
        $stripe = [
            "secret_key" => $data['settings']["stripe_secret_key"],
            "publishable_key" => $data['settings']["stripe_public_key"],
        ];

        \Stripe\Stripe::setApiKey($stripe['secret_key']);


        if ($this->url[2] === "success"):

            if (!isset($_POST['stripeToken'])) {
                $session->delete('checkout_funds');
                $session->delete('paymentid');
                redirect(CLIENT_URL . '/addfunds');
            }

            $token = $_POST['stripeToken'];
            $email = $_POST["stripeEmail"];

            $customer = \Stripe\Customer::create([
                'email' => $email,
                'source' => $token,
            ]);

            $charge = \Stripe\Charge::create([
                'customer' => $customer->id,
                'amount' => $data['amount_cents'],
                'currency' => $data['currency_code'],
            ]);


            /* Use Funds Model */
            $fundsModel = $this->model('Funds');

            $type = "Stripe";

            $Insert = $fundsModel->add($paymentid, $user->data()["userid"], $user->data()["credit_account"], $type, $amount, $data['settings']['transaction_fee']);

            if ($Insert == 1) {
                $_SESSION['message'][] = ['success', $this->lang['paid_successfully']];
                $session->delete('checkout_funds');
                $session->delete('paymentid');
                redirect(CLIENT_URL . '/funds');
            } else {
                $_SESSION['message'][] = ['warning', $this->lang['error_when_saving']];
                $session->delete('checkout_funds');
                $session->delete('paymentid');
                redirect(CLIENT_URL . '/funds');
            }

        elseif ($this->url[2] === "cancel"):

            $_SESSION['message'][] = ['warning', $this->lang['you_canceled_the_transaction']];
            $session->delete('checkout_funds');
            $session->delete('paymentid');
            redirect(CLIENT_URL . '/addfunds');

        endif;
    }


    public function razorpay()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /* Use Settings Model */
        $settingsModel = $this->model('Settings');
        $data['settings'] = $settingsModel->get();
        $data['currency_code'] = $settingsModel->currency_code();

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /* Use Session Library */
        $session = $this->library('Session');
        $checkout_funds = $session->get('checkout_funds');
        $amount = $checkout_funds - $data['settings']['transaction_fee'];

        /* Amount in Cents */
        $data['amount_cents'] = $this->getMoneyAsCents($checkout_funds);

        $paymentid = $this->rando();

        if ($this->url[2] === "success"):

            /* Use Funds Model */
            $fundsModel = $this->model('Funds');

            $type = "Razorpay";

            $Insert = $fundsModel->add($paymentid, $user->data()["userid"], $user->data()["credit_account"], $type, $amount, $data['settings']['transaction_fee']);

            if ($Insert == 1) {
                $_SESSION['message'][] = ['success', $this->lang['paid_successfully']];
                $session->delete('checkout_funds');
                $session->delete('paymentid');
                redirect(CLIENT_URL . '/funds');
            } else {
                $_SESSION['message'][] = ['warning', $this->lang['error_when_saving']];
                $session->delete('checkout_funds');
                $session->delete('paymentid');
                redirect(CLIENT_URL . '/funds');
            }

        elseif ($this->url[2] === "cancel"):

            $_SESSION['message'][] = ['warning', $this->lang['you_canceled_the_transaction']];
            $session->delete('checkout_funds');
            $session->delete('paymentid');
            redirect(CLIENT_URL . '/addfunds');

        endif;
    }


    public function paystack()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /* Use Settings Model */
        $settingsModel = $this->model('Settings');
        $data['settings'] = $settingsModel->get();
        $data['currency_code'] = $settingsModel->currency_code();

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /* Use Session Library */
        $session = $this->library('Session');
        $paystack_id = $session->get('paystack_id');
        $checkout_funds = $session->get('checkout_funds');
        $amount = $checkout_funds - $data['settings']['transaction_fee'];

        if ($this->url[2] != $paystack_id) {
            $_SESSION['message'][] = ['error', 'Invalid Paystack Reference Code'];
            $session->delete('paystack_id');
            $session->delete('checkout_funds');
            $session->delete('paymentid');
            redirect(CLIENT_URL . '/funds');
        } else {

            $paymentid = $this->rando();

            /* Use Funds Model */
            $fundsModel = $this->model('Funds');

            $type = "PayStack";

            $Insert = $fundsModel->add($paymentid, $user->data()["userid"], $user->data()["credit_account"], $type, $amount, $data['settings']['transaction_fee']);

            if ($Insert == 1) {
                $_SESSION['message'][] = ['success', $this->lang['paid_successfully']];
                $session->delete('paystack_id');
                $session->delete('checkout_funds');
                $session->delete('paymentid');
                redirect(CLIENT_URL . '/funds');
            } else {
                $_SESSION['message'][] = ['warning', $this->lang['error_when_saving']];
                $session->delete('paystack_id');
                $session->delete('checkout_funds');
                $session->delete('paymentid');
                redirect(CLIENT_URL . '/funds');
            }

        }


    }


    /**
     * Escrow
     */
    public function escrow()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Client Model */
        $clientModel = $this->model('Client');
        if (!isset($this->url[2])) {
            $pg = 1;
        } else {
            $pg = $this->url[2];
        }

        $page = (int)(!isset($pg) ? 1 : $pg);
        $limit = '10';
        $startpoint = ($page * $limit) - $limit;
        $data['has_escrow'] = $clientModel->has_escrow($data['user']['userid']);
        $data['escrow_pagination'] = $clientModel->escrow_pagination($startpoint, $limit, $data['user']['userid']);
        $data['escrow_projects'] = $clientModel->projects($data['user']['userid']);
        $data['pagination'] = $this->Pagination($clientModel->total_escrow($data['user']['userid']), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/escrow/');


        return ['content' => $this->view->render($data, 'client/escrow')];
    }


    /**
     * files
     */
    public function files()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Client Model */
        $clientModel = $this->model('Client');
        $clientModel->read_files($data['user']['userid']);
        if (!isset($this->url[2])) {
            $pg = 1;
        } else {
            $pg = $this->url[2];
        }

        $page = (int)(!isset($pg) ? 1 : $pg);
        $limit = '10';
        $startpoint = ($page * $limit) - $limit;
        $data['has_files'] = $clientModel->has_files($data['user']['userid']);
        $data['files_pagination'] = $clientModel->files_pagination($startpoint, $limit, $data['user']['userid']);
        $data['files_projects'] = $clientModel->projects($data['user']['userid']);
        $data['files_timeago'] = $clientModel->files_timeago($data['user']['userid']);
        $data['pagination'] = $this->Pagination($clientModel->total_files($data['user']['userid']), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/files/');


        return ['content' => $this->view->render($data, 'client/files')];
    }

    public function download()
    {

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        $data['user_isloggedin'] = $user->isLoggedIn();

        if ($user->isLoggedIn() === true):

            /* Use Client Model */
            $clientModel = $this->model('Client');
            $has_file = $clientModel->has_file($this->url[2], $data['user']['userid']);
            if ($has_file === true):

                $file = $clientModel->get_file($this->url[2]);
                $filepath = URL_PATH . '/' . PUBLIC_PATH . '/' . UPLOADS_PATH . '/admin/files/' . $file["fileupload"];


                // Process download
                header('Content-Type: application/octet-stream');
                header("Content-Transfer-Encoding: Binary");
                header("Content-disposition: attachment; filename=\"" . basename($filepath) . "\"");
                readfile($filepath);
                exit;

            else:
                $_SESSION['message'][] = ['warning', $this->lang['no_such_file_found']];
                redirect(CLIENT_URL . '/files');
            endif;


        else:
            $_SESSION['message'][] = ['warning', $this->lang['please_login_to_download']];
            redirect('login');
        endif;
    }


    /**
     * Add Files
     */
    public function addfiles()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');
        $data['files_projects'] = $clientModel->projects_closed($data['user']['userid']);

        //Edit Profile Data
        if (isset($_POST['add_file'])) {
            if ($input->exists()) {

                $validator = $this->library('Validator');

                $validation = $validator->check($_POST, [
                    'projectid' => [
                        'required' => true,
                    ],
                ]);

                if (!$validation->fails()) {


                    $valid_formats = array("jpg", "jpeg", "png", "gif", "bmp");

                    $name = $_FILES['photoimg']['name'];
                    $size = $_FILES['photoimg']['size'];
                    $type = $_FILES['photoimg']['type'];
                    // new file size in KB
                    $new_size = $size / 1024;

                    if (!empty($name)) {

                        $fileFormat = pathinfo($_FILES['photoimg']['name'], PATHINFO_EXTENSION);

                        // If there is no error during upload and the file is PNG
                        if ($_FILES['photoimg']['error'] == 0) {
                            $fileName = $this->rando() . '.' . $fileFormat;
                            // If the file can't be written on the disk (will return 0)
                            $path = sprintf('%s/../../%s/%s/admin/files/', __DIR__, PUBLIC_PATH, UPLOADS_PATH);


                            if (move_uploaded_file($_FILES['photoimg']['tmp_name'], $path . $fileName)) {

                                $insert = $clientModel->add_file($fileName, $input->get('projectid'), $data['user']['userid'], $type, $fileFormat, $new_size);

                                if ($insert == 1) {
                                    $_SESSION['message'][] = ['success', $this->lang['details_saved']];
                                    redirect(CLIENT_URL . '/addfiles');
                                } else {
                                    $_SESSION['message'][] = ['warning', $this->lang['error_when_saving']];
                                    redirect(CLIENT_URL . '/addfiles');
                                }

                            } else {
                                $_SESSION['message'][] = ['error', $this->lang['unable_to_upload_image']];
                                redirect(CLIENT_URL . '/addfiles');
                            }
                        } else {
                            $_SESSION['message'][] = ['error', $this->lang['format_error']];
                            redirect(CLIENT_URL . '/addfiles');
                        }
                    } else {
                        $_SESSION['message'][] = ['error', $this->lang['file_not_selected']];
                        redirect(CLIENT_URL . '/addfiles');
                    }


                } else {

                    foreach ($validation->errors()->all() as $err) {
                        $str = implode(" ", $err);
                        foreach ($err as $r) {
                            $_SESSION['errors'][] = ['error', $r];
                        }
                    }

                    redirect(CLIENT_URL . '/addfiles');
                }
            }
        }


        return ['content' => $this->view->render($data, 'client/file_add')];
    }


    /**
     * Payments
     */
    public function payments()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();
        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Client Model */
        $clientModel = $this->model('Client');
        if (!isset($this->url[2])) {
            $pg = 1;
        } else {
            $pg = $this->url[2];
        }

        $page = (int)(!isset($pg) ? 1 : $pg);
        $limit = '10';
        $startpoint = ($page * $limit) - $limit;
        $data['has_payments'] = $clientModel->has_payments($data['user']['userid']);
        $data['payments_pagination'] = $clientModel->payments_pagination($startpoint, $limit, $data['user']['userid']);
        $data['pagination'] = $this->Pagination($clientModel->total_payments($data['user']['userid']), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/payments/');


        return ['content' => $this->view->render($data, 'client/payments')];
    }


    /**
     * ratings
     */
    public function ratings()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Client Model */
        $clientModel = $this->model('Client');
        if (!isset($this->url[2])) {
            $pg = 1;
        } else {
            $pg = $this->url[2];
        }

        $page = (int)(!isset($pg) ? 1 : $pg);
        $limit = '10';
        $startpoint = ($page * $limit) - $limit;
        $data['has_ratings'] = $clientModel->has_ratings($data['user']['userid']);
        $data['ratings_pagination'] = $clientModel->ratings_pagination($startpoint, $limit, $data['user']['userid']);
        $data['ratings_projects'] = $clientModel->projects($data['user']['userid']);
        $data['ratings_timeago'] = $clientModel->ratings_timeago($data['user']['userid']);
        $data['ratings_value'] = $clientModel->ratings_value($data['user']['userid']);
        $data['pagination'] = $this->Pagination($clientModel->total_ratings($data['user']['userid']), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/ratings/');


        return ['content' => $this->view->render($data, 'client/ratings')];
    }


    /**
     * Add Rating
     */
    public function addrating()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();
        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');
        $has = $clientModel->has_project($this->url[2]);

        // If exists
        if ($has === true) {

            $data['project'] = $clientModel->get_project($this->url[2]);
            $data['freelancer'] = $clientModel->get_freelancer($data['project']['freelancerid']);
            $has_rating = $clientModel->has_rating($data['project']['freelancerid'], $data['project']['projectid']);

            // If exists
            if ($has_rating === false) {

                //Add rating
                if (isset($_POST['add_rating'])) {
                    if ($input->exists()) {

                        $validator = $this->library('Validator');

                        $validation = $validator->check($_POST, [
                            'rate' => [
                                'required' => true,
                            ],
                            'description' => [
                                'required' => true,
                            ],
                        ]);

                        if (!$validation->fails()) {


                            $insert = $clientModel->add_rating($input->get('projectid'),
                                $data['user']['userid'],
                                $input->get('freelancerid'),
                                $input->get('rate'),
                                $input->get('description'));

                            if ($insert == 1) {
                                $_SESSION['message'][] = ['success', $this->lang['details_saved']];
                                redirect(CLIENT_URL . '/ratings');
                            } else {
                                $_SESSION['message'][] = ['warning', $this->lang['error_when_saving']];
                                redirect(CLIENT_URL . '/addrating/' . $input->get('projectid'));
                            }

                        } else {

                            foreach ($validation->errors()->all() as $err) {
                                $str = implode(" ", $err);
                                foreach ($err as $r) {
                                    $_SESSION['errors'][] = ['error', $r];
                                }
                            }

                            redirect(CLIENT_URL . '/addrating/' . $input->get('projectid'));
                        }
                    }
                }


                return ['content' => $this->view->render($data, 'client/rating_add')];


            } else {
                redirect(CLIENT_URL . '/ratings');
            }
        } else {
            redirect(CLIENT_URL . '/ratings');
        }
    }


    /**
     * Edit Rating
     */
    public function editrating()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');
        $has = $clientModel->has_rating_no($this->url[2], $data['user']['userid']);

        // If exists
        if ($has === true) {

            $data['rating'] = $clientModel->get_rating($this->url[2]);
            $data['project'] = $clientModel->get_project($data['rating']['projectid']);
            $data['freelancer'] = $clientModel->get_freelancer($data['rating']['user_receiving']);


            //Add rating
            if (isset($_POST['edit_rating'])) {
                if ($input->exists()) {

                    $validator = $this->library('Validator');

                    $validation = $validator->check($_POST, [
                        'rate' => [
                            'required' => true,
                        ],
                        'description' => [
                            'required' => true,
                        ],
                    ]);

                    if (!$validation->fails()) {


                        $insert = $clientModel->update_rating($input->get('rate'),
                            $input->get('description'),
                            $input->get('id'));

                        if ($insert == 1) {
                            $_SESSION['message'][] = ['success', $this->lang['details_updated']];
                            redirect(CLIENT_URL . '/editrating/' . $input->get('id'));
                        } else {
                            $_SESSION['message'][] = ['warning', $this->lang['no_changes_made']];
                            redirect(CLIENT_URL . '/editrating/' . $input->get('id'));
                        }

                    } else {

                        foreach ($validation->errors()->all() as $err) {
                            $str = implode(" ", $err);
                            foreach ($err as $r) {
                                $_SESSION['errors'][] = ['error', $r];
                            }
                        }

                        redirect(CLIENT_URL . '/editrating/' . $input->get('id'));
                    }
                }
            }


            return ['content' => $this->view->render($data, 'client/rating_edit')];


        } else {
            redirect(CLIENT_URL . '/ratings');
        }
    }


    /**
     * Disputes
     */
    public function disputes()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');
        if (!isset($this->url[2])) {
            $pg = 1;
        } else {
            $pg = $this->url[2];
        }

        $page = (int)(!isset($pg) ? 1 : $pg);
        $limit = '10';
        $startpoint = ($page * $limit) - $limit;
        $data['has_disputes'] = $clientModel->has_disputes($data['user']['userid']);
        $data['disputes_pagination'] = $clientModel->disputes_pagination($startpoint, $limit, $data['user']['userid']);
        $data['disputes_projects'] = $clientModel->projects($data['user']['userid']);
        $data['unread_disputes_conversations'] = $clientModel->unread_disputes_conversations($data['user']['userid']);
        $data['pagination'] = $this->Pagination($clientModel->total_disputes($data['user']['userid']), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/disputes/');


        return ['content' => $this->view->render($data, 'client/disputes')];
    }


    /**
     * dispute
     */
    public function dispute()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');

        if (isset($this->url[2]) && $this->url[2] == 'view') {

            $has = $clientModel->has_dispute_conversation($this->url[4]);

            // If exists
            if ($has === true) {

                $slug = $clientModel->has_user($this->url[3]);

                // If exists
                if ($slug === true) {

                    if (!isset($this->url[5])) {
                        $pg = 1;
                    } else {
                        $pg = $this->url[5];
                    }

                    $page = (int)(!isset($pg) ? 1 : $pg);
                    $limit = '14';
                    $startpoint = ($page * $limit) - $limit;

                    $clientModel->update_dispute_conversation_reply($this->url[4]);
                    $data['conversation'] = $clientModel->get_dispute_conversation($this->url[4]);
                    $data['total_conversation_reply'] = $clientModel->total_dispute_conversation_reply($data['conversation']['cid']);
                    $data['conversation_reply_pagination'] = $clientModel->dispute_conversation_reply_pagination($startpoint, $limit, $data['conversation']['cid']);
                    $data['pagination'] = $this->Pagination($data['total_conversation_reply'], $limit, $page, URL_PATH . '/' . CLIENT_URL . '/dispute/view/' . $this->url[3] . '/' . $this->url[4] . '/');
                    $data['project'] = $clientModel->get_project($data['conversation']['projectid']);
                    $data['freelancer'] = $clientModel->get_freelancer($data['conversation']['freelancerid']);
                    $data['admin'] = $clientModel->get_admin($data['conversation']['adminid']);
                    $data['conversation_reply_timeago'] = $clientModel->dispute_conversation_reply_timeago($data['conversation']['cid']);


                    return ['content' => $this->view->render($data, 'client/dispute_view')];
                } else {
                    redirect(CLIENT_URL . '/disputes');
                }
            } else {
                redirect(CLIENT_URL . '/disputes');
            }
        }
    }


    /**
     * Start Dispute
     */
    public function startdispute()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();
        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');
        $has = $clientModel->has_project($this->url[3]);

        // If exists
        if ($has === true) {

            $slug = $clientModel->has_user($this->url[2]);

            // If exists
            if ($slug === true) {

                $data['project'] = $clientModel->get_project($this->url[3]);
                $data['freelancer'] = $clientModel->get_freelancer($data['project']['freelancerid']);

                //Add rating
                if (isset($_POST['start_dispute'])) {
                    if ($input->exists()) {

                        $validator = $this->library('Validator');

                        $validation = $validator->check($_POST, [
                            'message' => [
                                'required' => true,
                            ],
                        ]);

                        if (!$validation->fails()) {

                            $has_conversation = $clientModel->has_dispute_user($input->get('projectid'), $data['user']['userid'], $input->get('freelancerid'));

                            // If exists
                            if ($has_conversation === false) {


                                $insert = $clientModel->start_dispute($input->get('projectid'),
                                    $data['user']['userid'],
                                    $input->get('freelancerid'),
                                    $input->get('message'));

                                if ($insert == 1) {
                                    $_SESSION['message'][] = ['success', $this->lang['details_saved']];
                                    redirect(CLIENT_URL . '/disputes');
                                } else {
                                    $_SESSION['message'][] = ['warning', $this->lang['error_when_saving']];
                                    redirect(CLIENT_URL . '/disputes');
                                }

                            } else {
                                $_SESSION['message'][] = ['success', $this->lang['already_started_a_dispute']];
                                redirect(CLIENT_URL . '/disputes');
                            }

                        } else {

                            foreach ($validation->errors()->all() as $err) {
                                $str = implode(" ", $err);
                                foreach ($err as $r) {
                                    $_SESSION['errors'][] = ['error', $r];
                                }
                            }

                            redirect(CLIENT_URL . '/startdispute/' . $input->get('freelancerid') . '/' . $input->get('projectid'));
                        }
                    }
                }


                return ['content' => $this->view->render($data, 'client/dispute_add')];


            } else {
                redirect(CLIENT_URL . '/dashboard/in-progress');
            }
        } else {
            redirect(CLIENT_URL . '/dashboard/in-progress');
        }
    }


    /**
     * Edit Profile
     */
    public function editprofile()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use User Model */
        $userModel = $this->model('User');

        //Edit Profile Data
        if (isset($_POST['edit_profile'])) {
            if ($input->exists()) {

                $validator = $this->library('Validator');

                $validation = $validator->check($_POST, [
                    'name' => [
                        'required' => true,
                    ],
                    'title' => [
                        'required' => true,
                    ],
                    'email' => [
                        'required' => true,
                        'email' => true
                    ],
                    'country' => [
                        'required' => true,
                    ],
                    'website' => [
                        'required' => true,
                    ],
                ]);

                if (!$validation->fails()) {

                    $slug = $this->slugify($input->get('name'));


                    $update = $userModel->updateClient($input->get('name'),
                        $slug,
                        $input->get('title'),
                        $input->get('email'),
                        $input->get('country'),
                        $input->get('website'),
                        $data['user']['userid'],
                        encrypt_text($input->get('shipping_address')));

                    if ($update == 1) {
                        $_SESSION['message'][] = ['success', $this->lang['details_updated']];
                        redirect(CLIENT_URL . '/editprofile');
                    } else {
                        $_SESSION['message'][] = ['warning', $this->lang['no_changes_made']];
                        redirect(CLIENT_URL . '/editprofile');
                    }

                } else {

                    foreach ($validation->errors()->all() as $err) {
                        $str = implode(" ", $err);
                        foreach ($err as $r) {
                            $_SESSION['errors'][] = ['error', $r];
                        }
                    }

                    redirect(CLIENT_URL . '/editprofile');
                }
            }
        }


        return ['content' => $this->view->render($data, 'client/editprofile')];
    }


    /**
     * Image
     */
    public function image()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use User Model */
        $userModel = $this->model('User');

        /*Bg Image*/
        if (isset($_POST['post_bg_image'])) {
            if ($input->exists()) {

                $valid_formats = array("jpg", "jpeg", "png", "gif", "bmp");

                $name = $_FILES['photoimg']['name'];
                $size = $_FILES['photoimg']['size'];

                if (!empty($name)) {

                    $fileFormat = pathinfo($_FILES['photoimg']['name'], PATHINFO_EXTENSION);

                    // If there is no error during upload and the file is PNG
                    if ($_FILES['photoimg']['error'] == 0 && in_array($fileFormat, $valid_formats)) {
                        $fileName = $this->rando() . '.' . $fileFormat;
                        // If the file can't be written on the disk (will return 0)
                        $path = sprintf('%s/../../%s/%s/admin/users/', __DIR__, PUBLIC_PATH, UPLOADS_PATH);


                        if (move_uploaded_file($_FILES['photoimg']['tmp_name'], $path . $fileName)) {

                            // Get the old image
                            $oldFileName = $data['user']['bg_imagelocation'] ?? null;

                            // Remove the old variant of the image
                            if ($data['user']['bg_imagelocation'] != "wave.jpg"):
                                if ($oldFileName && $oldFileName != $fileName) {
                                    unlink($path . $oldFileName);
                                }
                            endif;

                            $update = $userModel->freelancerBgImage($fileName, $data['user']['userid']);

                            if ($update == 1) {
                                $_SESSION['message'][] = ['success', $this->lang['details_updated']];
                                redirect(CLIENT_URL . '/image');
                            } else {
                                $_SESSION['message'][] = ['warning', $this->lang['no_changes_made']];
                                redirect(CLIENT_URL . '/image');
                            }

                        } else {
                            $_SESSION['message'][] = ['error', $this->lang['unable_to_upload_image']];
                            redirect(CLIENT_URL . '/image');
                        }
                    } else {
                        $_SESSION['message'][] = ['error', $this->lang['format_error']];
                        redirect(CLIENT_URL . '/image');
                    }
                } else {
                    $_SESSION['message'][] = ['error', $this->lang['image_not_selected']];
                    redirect(CLIENT_URL . '/image');
                }


            }
        }

        /*Image*/
        if (isset($_POST['post_image'])) {
            if ($input->exists()) {

                $valid_formats = array("jpg", "jpeg", "png", "gif", "bmp");

                $name = $_FILES['photoimg']['name'];
                $size = $_FILES['photoimg']['size'];

                if (!empty($name)) {

                    $fileFormat = pathinfo($_FILES['photoimg']['name'], PATHINFO_EXTENSION);

                    // If there is no error during upload and the file is PNG
                    if ($_FILES['photoimg']['error'] == 0 && in_array($fileFormat, $valid_formats)) {
                        $fileName = $this->rando() . '.' . $fileFormat;
                        // If the file can't be written on the disk (will return 0)
                        $path = sprintf('%s/../../%s/%s/admin/users/', __DIR__, PUBLIC_PATH, UPLOADS_PATH);


                        if (move_uploaded_file($_FILES['photoimg']['tmp_name'], $path . $fileName)) {

                            // Get the old image
                            $oldFileName = $data['user']['imagelocation'] ?? null;

                            // Remove the old variant of the image
                            if ($data['user']['imagelocation'] != "default.png"):
                                if ($oldFileName && $oldFileName != $fileName) {
                                    unlink($path . $oldFileName);
                                }
                            endif;

                            $update = $userModel->freelancerImage($fileName, $data['user']['userid']);

                            if ($update == 1) {
                                $_SESSION['message'][] = ['success', $this->lang['details_updated']];
                                redirect(CLIENT_URL . '/image');
                            } else {
                                $_SESSION['message'][] = ['warning', $this->lang['no_changes_made']];
                                redirect(CLIENT_URL . '/image');
                            }

                        } else {
                            $_SESSION['message'][] = ['error', $this->lang['unable_to_upload_image']];
                            redirect(CLIENT_URL . '/image');
                        }
                    } else {
                        $_SESSION['message'][] = ['error', $this->lang['format_error']];
                        redirect(CLIENT_URL . '/image');
                    }
                } else {
                    $_SESSION['message'][] = ['error', $this->lang['image_not_selected']];
                    redirect(CLIENT_URL . '/image');
                }


            }
        }


        return ['content' => $this->view->render($data, 'client/image')];
    }

    /**
     * Password
     */
    public function password()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use User Model */
        $userModel = $this->model('User');

        //Edit
        if (isset($_POST['edit_password'])) {
            if ($input->exists()) {

                $validator = $this->library('Validator');

                $validation = $validator->check($_POST, [
                    'password_current' => [
                        'required' => true,
                    ],
                    'password' => [
                        'required' => true,
                    ],
                    'confirmPassword' => [
                        'required' => true,
                        'match' => 'password'
                    ]
                ]);

                if (!$validation->fails()) {

                    if (password_verify($input->get('password_current'), $data['user']['password'])) {

                        /* Hash Password */
                        $password = password_hash($input->get('password'), PASSWORD_DEFAULT);

                        $update = $userModel->password($password, $data['user']['userid']);

                        if ($update == 1) {
                            $_SESSION['message'][] = ['success', $this->lang['details_updated']];
                            redirect(CLIENT_URL . '/password');
                        } else {
                            $_SESSION['message'][] = ['warning', $this->lang['no_changes_made']];
                            redirect(CLIENT_URL . '/password');
                        }

                    } else {

                        $_SESSION['message'][] = ['error', $this->lang['current_password_does_not_match']];
                        redirect(CLIENT_URL . '/password');

                    }

                } else {

                    foreach ($validation->errors()->all() as $err) {
                        $str = implode(" ", $err);
                        foreach ($err as $r) {
                            $_SESSION['errors'][] = ['error', $r];
                        }
                    }

                    redirect(CLIENT_URL . '/password');
                }

            }
        }


        return ['content' => $this->view->render($data, 'client/password')];
    }


    /**
     * Request Verification
     */
    public function request()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use User Model */
        $userModel = $this->model('User');

        /* Use Request Model */
        $requestModel = $this->model('Request');

        //post_request
        if (isset($_POST['post_request'])) {
            if ($input->exists()) {

                $validator = $this->library('Validator');

                $validation = $validator->check($_POST, [
                    'number' => [
                        'required' => true,
                    ],
                ]);

                if (!$validation->fails()) {

                    $has = $requestModel->has($data['user']['userid']);

                    if ($has === false) {

                        $insert = $requestModel->add($input->get('number'), $data['user']['userid']);
                        $update = $userModel->updateRequest($data['user']['userid']);

                        if ($update == 1) {
                            $_SESSION['message'][] = ['success', $this->lang['details_updated']];
                            redirect(CLIENT_URL . '/request');
                        } else {
                            $_SESSION['message'][] = ['warning', $this->lang['no_changes_made']];
                            redirect(CLIENT_URL . '/request');
                        }
                    } elseif ($has === true) {

                        $_SESSION['message'][] = ['error', $this->lang['already_requested']];
                        redirect(CLIENT_URL . '/request');

                    }


                } else {

                    foreach ($validation->errors()->all() as $err) {
                        $str = implode(" ", $err);
                        foreach ($err as $r) {
                            $_SESSION['errors'][] = ['error', $r];
                        }
                    }

                    redirect(CLIENT_URL . '/request');
                }

            }
        }


        return ['content' => $this->view->render($data, 'client/request')];
    }

    /**
     * Email Settings
     */
    public function email()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use User Model */
        $userModel = $this->model('User');


        //post_request
        if (isset($_POST['post_email'])) {
            if ($input->exists()) {

                $validator = $this->library('Validator');

                $validation = $validator->check($_POST, [
                ]);

                if (!$validation->fails()) {


                    $update = $userModel->updateEmail($input->get('email_settings'), $data['user']['userid']);

                    if ($update == 1) {
                        $_SESSION['message'][] = ['success', $this->lang['details_updated']];
                        redirect(CLIENT_URL . '/email');
                    } else {
                        $_SESSION['message'][] = ['warning', $this->lang['no_changes_made']];
                        redirect(CLIENT_URL . '/email');
                    }


                } else {

                    foreach ($validation->errors()->all() as $err) {
                        $str = implode(" ", $err);
                        foreach ($err as $r) {
                            $_SESSION['errors'][] = ['error', $r];
                        }
                    }

                    redirect(CLIENT_URL . '/email');
                }

            }
        }


        return ['content' => $this->view->render($data, 'client/email')];
    }

    //Random String
    private function rando($length = 14)
    {
        $str = "";
        $characters = array_merge(range('A', 'Z'), range('a', 'z'), range('0', '9'));
        $max = count($characters) - 1;
        for ($i = 0; $i < $length; $i++) {
            $rand = mt_rand(0, $max);
            $str .= $characters[$rand];
        }
        return $str;
    }

    function is_divisible_by_3($n)
    {
        $digits = str_split($n);
        $total = 0;
        foreach ($digits as $digit) {
            $total += $digit;
        }
        if ($total == 3 || ($total % 3 == 0)) {
            return true;
        }
        return false;
    }

    function is_divisible_by_2($number)
    {
        if ($number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Return the slug of a string to be used in a URL.
     *
     * @return String
     */
    function slugify($text)
    {
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

    //Time Ago
    function ago($i)
    {
        $m = time() - $i;
        $o = 'just now';
        $t = array('year' => 31556926, 'month' => 2629744, 'week' => 604800, 'day' => 86400, 'hour' => 3600, 'minute' => 60, 'second' => 1);
        foreach ($t as $u => $s) {
            if ($s <= $m) {
                $v = floor($m / $s);
                $o = "$v $u" . ($v == 1 ? '' : 's') . ' ago';
                break;
            }
        }
        return $o;
    }


    function Pagination($total, $per_page = 10, $page = 1, $url)
    {
        $total = $total;
        $adjacents = "2";

        $page = ($page == 0 ? 1 : $page);
        $start = ($page - 1) * $per_page;

        $prev = $page - 1;
        $next = $page + 1;
        $lastpage = ceil($total / $per_page);
        $lpm1 = $lastpage - 1;

        $pagination = "";
        if ($lastpage > 1) {
            $pagination .= "<div class='paginationCommon blogPagination text-center'>
			 <nav aria-label='Page navigation'>
			  <ul class='pagination'>";
            $pagination .= "<li class='details'>Page $page of $lastpage</li>";

            if ($page > 1)
                $pagination .= "<li><a href='{$url}1'> <i class='fa  fa-angle-double-left'></i> </a></li>
								   <li><a href='{$url}$prev'> <i class='fa fa-angle-left'></i> </a></li>";
            else
                $pagination .= "<li class='disabled'><a href='#'><i class='fa fa-angle-left'></i> </a></li>";

            if ($lastpage < 7 + ($adjacents * 2)) {
                for ($counter = 1; $counter <= $lastpage; $counter++) {
                    if ($counter == $page)
                        $pagination .= "<li class='active'><a>$counter</a></li>";
                    else
                        $pagination .= "<li><a href='{$url}$counter'>$counter</a></li>";
                }
            } elseif ($lastpage > 5 + ($adjacents * 2)) {
                if ($page < 1 + ($adjacents * 2)) {
                    for ($counter = 1; $counter < 4 + ($adjacents * 2); $counter++) {
                        if ($counter == $page)
                            $pagination .= "<li class='active'><a>$counter</a></li>";
                        else
                            $pagination .= "<li><a href='{$url}$counter'>$counter</a></li>";
                    }
                    $pagination .= "<li class='dot'>...</li>";
                    $pagination .= "<li><a href='{$url}$lpm1'>$lpm1</a></li>";
                    $pagination .= "<li><a href='{$url}$lastpage'>$lastpage</a></li>";
                } elseif ($lastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2)) {
                    $pagination .= "<li><a href='{$url}1'>1</a></li>";
                    $pagination .= "<li><a href='{$url}2'>2</a></li>";
                    $pagination .= "<li class='dot'>...</li>";
                    for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++) {
                        if ($counter == $page)
                            $pagination .= "<li class='active'><a>$counter</a></li>";
                        else
                            $pagination .= "<li><a href='{$url}$counter'>$counter</a></li>";
                    }
                    $pagination .= "<li class='dot'>..</li>";
                    $pagination .= "<li><a href='{$url}$lpm1'>$lpm1</a></li>";
                    $pagination .= "<li><a href='{$url}$lastpage'>$lastpage</a></li>";
                } else {
                    $pagination .= "<li><a href='{$url}1'>1</a></li>";
                    $pagination .= "<li><a href='{$url}2'>2</a></li>";
                    $pagination .= "<li class='dot'>..</li>";
                    for ($counter = $lastpage - (2 + ($adjacents * 2)); $counter <= $lastpage; $counter++) {
                        if ($counter == $page)
                            $pagination .= "<li class='active'><a>$counter</a></li>";
                        else
                            $pagination .= "<li><a href='{$url}$counter'>$counter</a></li>";
                    }
                }
            }

            if ($page < $counter - 1) {
                $pagination .= "<li><a href='{$url}$next'><i class='fa fa-angle-right'></i></a></li>";
                $pagination .= "<li><a href='{$url}$lastpage'><i class='fa fa-angle-double-right'></i></a></li>";
            } else {
                $pagination .= "<li class='disabled'><a><i class='fa fa-angle-right'></i></a></li>";
                $pagination .= "<li class='disabled'><a><i class='fa fa-angle-double-right'></i></a></li>";
            }
            $pagination .= "</ul>\n</nav>\n</div>";
        }


        return $pagination;
    }

    //Money As Cents
    private function getMoneyAsCents($value)
    {
        // strip out commas
        $value = preg_replace("/\,/i", "", $value);
        // strip out all but numbers, dash, and dot
        $value = preg_replace("/([^0-9\.\-])/i", "", $value);
        // make sure we are dealing with a proper number now, no +.4393 or 3...304 or 76.5895,94
        if (!is_numeric($value)) {
            return 0.00;
        }
        // convert to a float explicitly
        $value = (float)$value;
        return round($value, 2) * 100;
    }


    public function subscription()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        $user_subscription_id = $this->model('Common_model')->get_subscription_id($this->library('User')->data()['id']);
        $data['user_subscription'] = $this->model('Common_model')->get('subscription', array('id' => $user_subscription_id));

        $data['tokans'] = $this->model('Common_model')->get('subscription_tokens', array('user_id' => $user->data()['id']));


        $data['subscription'] = $this->model('Common_model')->get('subscription', array('user_id' => $user->data()['id'], "ORDER" => array('updated_at' => 'DESC')));


        $user_id = $this->library('User')->data()['id'];

        // cheeck current subscription
        $clause['user_id'] = $user_id;
        $clause['status'] = 1;
        $subscriptionDATA = $this->model('Common_model')->get('subscription', $clause);


        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();


        return ['content' => $this->view->render($data, 'client/subscription')];
    }


    public function freelancers()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        // Function code//

        $aboutModel = $this->model('About');


        $Freelancers = $this->model('Common_model')->get('user', array('user_type' => 1, "ORDER" => array('id' => 'DESC')));

        $Filtered_Freelancres = array();


        foreach ($Freelancers as $FRKEY => $FreelancersVAL) {
            $subscription_check = $this->model('Common_model')->check_personal_subscription($FreelancersVAL['id']);

            if ($subscription_check == 1) {
                $Filtered_Freelancres[$FRKEY] = $FreelancersVAL;
                // $Filtered_Freelancres[$FRKEY]['work_chk'] = $aboutModel->hasWorkExperience($FreelancersVAL['userid']);
                // $Filtered_Freelancres[$FRKEY]['work_exp'] = $aboutModel->getWorkExperience($FreelancersVAL['userid']);
                // $Filtered_Freelancres[$FRKEY]['edu_chk'] = $aboutModel->hasEducation($FreelancersVAL['userid']);
                // $Filtered_Freelancres[$FRKEY]['edu'] = $aboutModel->getEducation($FreelancersVAL['userid']);


            }
        }

        $offset = 0;

        if (isset($_GET['page'])) {
            $page = $_GET['page'];
        } else {
            $page = 1;
        }

        $limit = 5;

        $offset = ($page - 1) * $limit;

        $data['Freelancers'] = array_slice($Filtered_Freelancres, $offset, $limit);
        $all_pages = count($Filtered_Freelancres) / $limit;
        $count_chk = $all_pages % 1;
        $data['pages'] = 0;
        if ($count_chk > 0) {
            $data['pages'] = $all_pages + 1;
        }
        if ($count_chk == 0) {
            $data['pages'] = $all_pages;
        }
        $data['pages'] = 0;

        $data['pagination'] = $this->Pagination(count($Filtered_Freelancres), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/freelancers?page=');

        // cheeck current subscription end

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();


        return ['content' => $this->view->render($data, 'client/freelancers')];
    }


    // send_job


    public function send_job()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();

        /* Use Input Library */
        $input = $this->library('Input');

        /* Use Client Model */
        $clientModel = $this->model('Client');

        $has = $clientModel->has_user($this->url[2]);

        // If exists
        if ($has === true) {

            $slug = $clientModel->has_slug($this->url[3]);

            // If exists
            if ($slug === true) {


                $data['freelancer'] = $clientModel->get_freelancer($this->url[2]);
                $data['projects'] = $clientModel->projects($data['user']['userid']);

                //Invite freelancer
                if (isset($_POST['invite_freelancer'])) {
                    if ($input->exists()) {

                        $validator = $this->library('Validator');

                        $validation = $validator->check($_POST, [
                            'message' => [
                                'required' => true,
                            ],
                        ]);

                        if (!$validation->fails()) {

                            $has_invite = $clientModel->has_invite($input->get('projectid'), $input->get('freelancerid'), $data['user']['userid']);

                            // If exists
                            if ($has_invite === false) {

                                $has_proposal = $clientModel->has_proposal($input->get('projectid'), $input->get('freelancerid'), $data['user']['userid']);

                                // If exists
                                if ($has_proposal === false) {


                                    $Insert = $clientModel->add_invite($input->get('projectid'), $input->get('freelancerid'), $data['user']['userid'], $input->get('message'));

                                    if ($Insert == 1) {
                                        $_SESSION['message'][] = ['success', $this->lang['invited_successfully']];
                                        redirect(CLIENT_URL . '/invite/' . $input->get('freelancerid') . '/' . $input->get('freelancer_slug'));
                                    } else {
                                        $_SESSION['message'][] = ['warning', $this->lang['error_when_saving']];
                                        redirect(CLIENT_URL . '/invite/' . $input->get('freelancerid') . '/' . $input->get('freelancer_slug'));
                                    }


                                } else {
                                    $_SESSION['message'][] = ['error', $this->lang['already_posted_a_proposal_to_the_project']];
                                    redirect(CLIENT_URL . '/invite/' . $input->get('freelancerid') . '/' . $input->get('freelancer_slug'));
                                }


                            } else {
                                $_SESSION['message'][] = ['error', $this->lang['already_invited_to_do_the_project']];
                                redirect(CLIENT_URL . '/invite/' . $input->get('freelancerid') . '/' . $input->get('freelancer_slug'));
                            }

                        } else {

                            foreach ($validation->errors()->all() as $err) {
                                $str = implode(" ", $err);
                                foreach ($err as $r) {
                                    $_SESSION['errors'][] = ['error', $r];
                                }
                            }

                            redirect(CLIENT_URL . '/invite/' . $input->get('freelancerid') . '/' . $input->get('freelancer_slug'));
                        }
                    }
                }


                return ['content' => $this->view->render($data, 'client/send_job')];

            } else {
                redirect(CLIENT_URL . '/invites');
            }

        } else {
            redirect(CLIENT_URL . '/invites');
        }
    }


    function process_add_jobs()
    {

        $path = 'uploads/jobs/';

        $total_image = count($_FILES['userfile']['name']);
        $files = array();
        for ($i = 0; $i < $total_image; $i++) {
            $tmpFilePath = $_FILES['userfile']['tmp_name'][$i];
            if ($tmpFilePath != "") {
                $newFilePath = $path . time() . $_FILES['userfile']['name'][$i];
                if (move_uploaded_file($tmpFilePath, $newFilePath)) {
                    $files[] = time() . $_FILES['userfile']['name'][$i];
                }
            }
        }


        $data_fill['user_id'] = $this->library('User')->data()['id'];
        $data_fill['freelancer_id'] = $_POST['xid'];
        $data_fill['job_id'] = time() * rand(10, 100);
        $data_fill['subject'] = $_POST['subject'];
        $data_fill['description'] = $_POST['description'];
        $data_fill['name'] = $_POST['name'];
        $data_fill['shipping'] = $_POST['shipping'];
        $data_fill['files'] = json_encode($files);
        $data_fill['token'] = md5(time());
        $data_fill['created_at'] = date('Y-m-d H:i:s');
        $data_fill['updated_at'] = date('Y-m-d H:i:s');


        $inserted_id = $this->model('Common_model')->add('jobs', $data_fill);

        if ($inserted_id > 0) {
            $_SESSION['message'][] = ['success', 'Success'];
        } else {
            $_SESSION['message'][] = ['error', 'Failed'];
        }
        redirect(CLIENT_URL . '/sended_jobs');
    }

    function add_jobs_apis()
    {
        /* Use Input Library */
        $input = $this->library('Input');
        $path = 'uploads/jobs/';

        $total_image = count($_FILES['userfile']['name']);
        $files = array();

        for ($i = 0; $i < $total_image; $i++) {
            $time = time();
            $tmpFilePath = $_FILES['userfile']['tmp_name'][$i];
            if ($tmpFilePath != "") {
                $newFilePath = $path . $time . $_FILES['userfile']['name'][$i];
                if (move_uploaded_file($tmpFilePath, $newFilePath)) {
                    $files[] = $time . $_FILES['userfile']['name'][$i];
                }
            }
        }
        $service_id = $input->get('service_id');
        $service_data = $this->model('Common_model')->get('services', array('id' => $service_id));


        if (isset($service_data[0]['freelancer'])) {
            $data_fill['freelancer_id'] = $service_data[0]['freelancer'];
        } else {
            $data_fill['freelancer_id'] = null;
        }

        $data_fill['service_id'] = $service_id;
        $data_fill['user_id'] = $input->get('user_id');
        $data_fill['job_id'] = time() * rand(10, 100);
        $data_fill['subject'] = $input->get('subject');
        $data_fill['description'] = $input->get('description');
        $data_fill['name'] = $input->get('name');
        $data_fill['shipping'] = $input->get('shipping');
        $data_fill['files'] = json_encode($files);
        $data_fill['shipping_type'] = json_encode($input->get('shipping_type'));
        $data_fill['token'] = md5(time());
        $data_fill['created_at'] = date('Y-m-d H:i:s');
        $data_fill['updated_at'] = date('Y-m-d H:i:s');


        if ($input->get('material')) {

            $data_fill['material'] = $input->get('material');
        }

        if ($input->get('type')) {
            $data_fill['type'] = $input->get('type');
        }

        if ($input->get('layer_height')) {
            $data_fill['layer_height'] = $input->get('layer_height');
        }

        if ($input->get('infil')) {
            $data_fill['infil'] = $input->get('infil');
        }

        if ($input->get('fininshings')) {
            $data_fill['fininshings'] = $input->get('fininshings');
        }

        if ($input->get('color')) {
            $data_fill['color'] = $input->get('color');
        }

        if ($input->get('postage')) {
            $data_fill['postage'] = $input->get('postage');
        }


        $inserted_id = $this->model('Common_model')->add('jobs', $data_fill);

        if ($inserted_id > 0) {
            echo json_encode(array('status' => 'true', 'msg' => 'successfully'));
            die();
        } else {
            echo json_encode(array('status' => 'false', 'msg' => 'error'));
            die();
        }
    }

    function list_job_apis()
    {
        $input = $this->library('Input');
        $limit = $input->get('limit');
        $offset = $input->get('offset');


        $input = $this->library('Input');
        /*Use User Library*/
        $user = $this->library('User');

        $data = [];


        $data['user'] = $user->data();


        $user_id = $input->get('user_id');

        $ALL_JOBS = $this->model('Common_model')->get('jobs', array('user_id' => $user_id, "ORDER" => array('id' => 'DESC')));


        $freelancer_data = '';
        if (!empty($ALL_JOBS)) {

            foreach ($ALL_JOBS as $value) {

                $service_id = $value['service_id'];
                $freelancer_id = $value['freelancer_id'];
                $freelancer_data[] = $value;

                /* $freelancer_id = $value['freelancer_id'];

				$value['freelancer_details'] =  $this->model('Common_model')->get('user',array('id'=>$freelancer_id));

				$freelancer_data[] = $value;*/

                //$freelancer_data['status'] = $this->model('Common_model')->job_status_client();


            }

        }


        $data['ALL_JOBS'] = $freelancer_data;

        //$data['users'] = $this->model('Common_model')->get('user',array('user_type'=>1));


        $services = $this->model('Common_model')->get('services');

        $datas = '';

        if (!empty($services)) {

            foreach ($services as $value) {

                $id = $value['freelancer'];
                //print_r( $value['freelancer']);
                $value['freelancer_details'] = $this->model('Common_model')->get('user', array('id' => $id));
                $datas[] = $value;
            }
        }

        //echo"<pre>"; print_r($datas); die;

        $data['services'] = $datas;


        $data['status'] = $this->model('Common_model')->job_status_client();


        echo json_encode(array('success' => 'true', 'msg' => 'Data found...', 'data' => $data));
        die();

        //return ['content' => $this->view->render($data, 'client/jobs')];

    }

    function list_job_payment_apis()
    {
        $input = $this->library('Input');
        $limit = $input->get('limit');
        $offset = $input->get('offset');

    }


    function payment_store_apis()
    {

        /* Use Input Library */
        $input = $this->library('Input');

        $data_fill['user_id'] = $input->get('user_id');
        $data_fill['plan_id'] = $input->get('plan_id');
        $data_fill['job_id'] = $input->get('job_id');
        $data_fill['amount'] = $input->get('amount');
        $data_fill['job_token'] = $input->get('job_token');
        $data_fill['payment_type'] = $input->get('payment_type');
        $data_fill['payment_data'] = $input->get('payment_data');
        $data_fill['created_at'] = date('Y-m-d H:i:s');
        $data_fill['updated_at'] = date('Y-m-d H:i:s');


        $inserted_id = $this->model('Common_model')->add('job_payments', $data_fill);

        if ($inserted_id > 0) {
            echo json_encode(array('status' => 'true', 'msg' => 'successfully'));
            die();
        } else {
            echo json_encode(array('status' => 'false', 'msg' => 'error'));
            die();
        }
    }

    function payment_get_apis()
    {

        $input = $this->library('Input');
        $user_id = $input->get('user_id');
        $limit = $input->get('limit');
        $offset = $input->get('offset');
        $data = $this->model('Common_model')->get('job_payments', array('user_id' => $user_id, "LIMIT" => [$offset, $limit]));

        if ($data) {
            echo json_encode(array('status' => 'true', 'msg' => 'successfully', 'data' => $data));
            die();
        } else {
            echo json_encode(array('status' => 'false', 'msg' => 'error', 'data' => 'NA'));
            die();
        }
    }

    function process_add_jobs_duo()
    {


        if ($_POST['nda'] != '') {

            $path = 'uploads/nda/';

            $image = $_POST['nda'];
            $image = imagecreatefromjpeg($image);
            $image_name_dbx = time() . '.jpg';
            $uploader = imagejpeg($image, $path . $image_name_dbx, 100);
            imagedestroy($image);

            $data_fill['nda'] = $image_name_dbx;

        }


        $service_id = $_POST['service_id'];

        $service_data = $this->model('Common_model')->get('services', array('id' => $service_id));


        if (isset($service_data[0]['freelancer'])) {
            $data_fill['freelancer_id'] = $service_data[0]['freelancer'];
        } else {
            $_SESSION['message'][] = ['error', 'Invalid Service'];
            redirect(CLIENT_URL . '/jobs');
        }


        $freelancer_data = $this->model('Common_model')->get('user', array('id' => $service_data[0]['freelancer']));


        $path = 'uploads/jobs/';

        //   	$total_image = count($_FILES['userfile']['name']);
        // $files = array();
        // for( $i=0 ; $i < $total_image ; $i++ ) {
        //   $tmpFilePath = $_FILES['userfile']['tmp_name'][$i];
        //   if ($tmpFilePath != ""){
        //     $newFilePath = $path.time().$_FILES['userfile']['name'][$i];
        //     if(move_uploaded_file($tmpFilePath, $newFilePath)) {
        //     	$files[] = time().$_FILES['userfile']['name'][$i];
        //     }
        //   }
        // }

        $files = array();

        if (isset($_POST['files'])) {
            $files = $_POST['files'];
        }


        $data_fill['user_id'] = $this->library('User')->data()['id'];

        $data_fill['job_id'] = time() * rand(10, 100);
        $data_fill['subject'] = encrypt_text($_POST['subject']);
        $data_fill['service_id'] = $_POST['service_id'];
        $data_fill['description'] = encrypt_text($_POST['description']);
        $data_fill['name'] = encrypt_text($_POST['name']);
        $data_fill['shipping'] = encrypt_text($_POST['shipping']);
        $data_fill['post_shipping'] = encrypt_text($_POST['post_shipping']);

        if (isset($_POST['shipping_type'])) {
            $data_fill['shipping_type'] = implode(" , ", $_POST['shipping_type']);
        }

        $data_fill['files'] = json_encode($files);
        $data_fill['token'] = md5(time());
        $data_fill['created_at'] = date('Y-m-d H:i:s');
        $data_fill['updated_at'] = date('Y-m-d H:i:s');


        if (isset($_POST['material'])) {
            $data_fill['material'] = encrypt_text($_POST['material']);
        }

        if (isset($_POST['type'])) {
            $data_fill['type'] = encrypt_text($_POST['type']);
        }

        if (isset($_POST['layer_height'])) {
            $data_fill['layer_height'] = encrypt_text($_POST['layer_height']);
        }

        if (isset($_POST['infil'])) {
            $data_fill['infil'] = encrypt_text($_POST['infil']);
        }

        if (isset($_POST['fininshings'])) {
            $data_fill['fininshings'] = encrypt_text($_POST['fininshings']);
        }

        if (isset($_POST['color'])) {
            $data_fill['color'] = encrypt_text($_POST['color']);
        }

        if (isset($_POST['postage'])) {
            $data_fill['postage'] = encrypt_text($_POST['postage']);
        }

        if (isset($_POST['quantity'])) {
            $data_fill['quantity'] = $_POST['quantity'];
        }


        $inserted_id = $this->model('Common_model')->add('jobs', $data_fill);

        if ($inserted_id > 0) {

            $flash = $this->model('Common_model')->flash($inserted_id, "Job Sent", "Job Sent");

        } else {
            $_SESSION['message'][] = ['error', 'Failed'];
        }

        redirect(CLIENT_URL . '/jobs');


    }

    public function sended_jobs()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        $user_id = $this->library('User')->data()['id'];

        $ALL_JOBS = $this->model('Common_model')->get('jobs', array('user_id' => $user_id, "ORDER" => array('id' => 'DESC')));

        $page = 1;

        if (isset($_GET['page'])) {
            $page = $_GET['page'];
        }

        $limit = 5;

        $offset = ($page - 1) * $limit;

        $data['jobs'] = array_slice($ALL_JOBS, $offset, $limit);


        $data['pagination'] = $this->Pagination(count($ALL_JOBS), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/sended_jobs?page=');


        $data['users'] = $this->model('Common_model')->get('user', array('user_type' => 1));


        // cheeck current subscription end

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();


        return ['content' => $this->view->render($data, 'client/sended_jobs')];
    }


    public function view_services_api()
    {
        $result = $this->model('Common_model')->get('services');
        if ($result) {

//	    	$result['material'] = json_decode($result['material'], true);
//		    $result['type'] = json_decode($result['type']);
//		    $result['layer_height'] = json_decode($result['layer_height']);
//		    $result['infil'] = json_decode($result['infil']);
//		    $result['fininshings'] = json_decode($result['fininshings']);
//		    $result['color'] = json_decode($result['color']);
//		    $result['postage'] = json_decode($result['postage']);
            echo json_encode(array('success' => 'true', 'msg' => 'Data found...', 'data' => $result));
            die();
        } else {
            echo json_encode(array('success' => 'false', 'msg' => 'No Data found...', 'data' => 'NA'));
            die();

        }

    }

    public function get_token_api()
    {
        $userId = $_GET['user_id'];
        $tokens = $this->model('Common_model')->get('subscription_tokens', array('user_id' => $userId));
        $retVal = [];
        foreach ($tokens as $token) {
            $date = date_create($token['expiry']);
            date_modify($date, "-1 month");
            $start = strtotime(date_format($date, "Y-m-d"));
            $end = strtotime($token['expiry']);
            if (time() > $start && time() < $end && $token['status'] == 0) {
                $retVal[] = [
                    'id' => $token['id'],
                    'uid' => $token['uid'],
                ];
            }
        }
        echo json_encode(array('success' => 'true', 'msg' => 'Data found...', 'data' => $retVal));
        die();
    }

    public function view_job()
    {


        if (!isset($_GET['id'])) {
            $_SESSION['message'][] = ['error', 'Invalid Request !'];
            redirect(CLIENT_URL . '/sended_jobs');
        }

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        // $this->check_subscription();

        $user_subscription_id = $this->model('Common_model')->get_subscription_id($this->library('User')->data()['id']);
        $data['user_subscription'] = $this->model('Common_model')->get('subscription', array('id' => $user_subscription_id));
        $data['tokens'] = $this->model('Common_model')->get('subscription_tokens', array('user_id' => $user->data()['id']));

        $user_id = $this->library('User')->data()['id'];

        $data['job'] = $this->model('Common_model')->get('jobs', array('id' => base64_decode($_GET['id'])));


        $data['payments'] = $this->model('Common_model')->get('job_payments', array('job_id' => base64_decode($_GET['id'])));

        $data['users'] = $this->model('Common_model')->get('user', array('user_type' => 1));
        $data['services'] = $this->model('Common_model')->get('services');

        $data['status'] = $this->model('Common_model')->job_status_client();

        $data['job_action'] = $this->model('Common_model')->get('job_actions', array('job_id' => base64_decode($_GET['id'])));


        $data['reviews'] = $this->model('Common_model')->get('reviews', array('job_id' => base64_decode($_GET['id'])));


        // cheeck current subscription end

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();


        return ['content' => $this->view->render($data, 'client/view_job')];
    }


    function accept_job()
    {

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;


        if (!isset($_POST['id'])) {
            $_SESSION['message'][] = ['error', 'Invalid Request !'];
            redirect(CLIENT_URL . '/jobs');
        }

        $check_payment = $this->model('Common_model')->get('job_payments', array('job_id' => $_POST['id']));

        if (count($check_payment) != 0) {
            $_SESSION['message'][] = ['error', 'Already Paid !'];
            redirect(CLIENT_URL . '/view_job?id=' . base64_encode($_POST['id']));
        }

        $data['token'] = $this->model('Common_model')->get('subscription_tokens', array('id' => $_POST['used_token'], 'user_id' => $user->data()['id'], 'status' => 0));

        if (count($data['token']) == 0) {
            $_SESSION['message'][] = ['error', 'Invalid Request !'];
            redirect(CLIENT_URL . '/sended_jobs');
        }


        $this->check_subscription();


        $user_subscription_id = $this->model('Common_model')->get_subscription_id($this->library('User')->data()['id']);
        $data['user_subscription'] = $this->model('Common_model')->get('subscription', array('id' => $user_subscription_id));


        $data['job'] = $this->model('Common_model')->get('jobs', array('id' => $_POST['id']));


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

        $total_amount = 0;


        foreach ($data['job'] as $Job) {
            $total_amount += $Job['price'];
            $total_amount += $Job['shipping_f'];
        }

        $_SESSION['pay_token'] = $data['token'][0]['id'];
        $_SESSION['pay_amount'] = $total_amount;
        $_SESSION['pay_job_id'] = $_POST['id'];

        $amount = $_SESSION['pay_amount'];
        $data['amount'] = $amount;
        $session->put("paymentid", $paymentid);


        /*PayStack*/
        $data['paystack_id'] = $this->rando();
        $session->put("paystack_id", $data['paystack_id']);
        $data['payment_paystack'] = $data['amount'] * 100;

        $_GET['sandbox'] = $data['settings']['sandbox'];

        /* PayPal Section */
        // Setup class
        $p = $this->library('paypal_class');                    // initiate an instance of the class.
        $this_script = URL_PATH;
        $user_email = $Uemail;
        $usern = $Uname;


        $return_url = $this_script . '/' . CLIENT_URL . '/confirm_job_payment?id=' . base64_encode($data['job'][0]['id']) . '&amount=' . $amount . '&xtoken=' . $_POST['used_token'] . '&mode=paypal&pid=' . $paymentid;


        $return_url = $this_script . '/public/paypal.php?for=job&type=return&mode=paypal';

        $cancel_url = $this_script . '/public/paypal.php?for=job&type=cancel&mode=paypal';

        $notify_url = $this_script . '/public/paypal.php?for=job&type=notify&mode=paypal';


        $p->add_field('business', $data['settings']['paypal_email']); //don't need add this item. if your set the $p -> paypal_mail.
        $p->add_field('return', $return_url);
        $p->add_field('cancel_return', $cancel_url);
        $p->add_field('notify_url', $notify_url);
        $p->add_field('item_name', "Subscription");
        $p->add_field('item_number', '');
        $p->add_field('amount', $amount);
        $p->add_field('currency_code', $data['currency_code']);
        $p->add_field('usern', $usern);
        $p->add_field('user_email', $user_email);
        $p->add_field('cmd', '_xclick');
        $p->add_field('rm', '2');    // Return method = POST

        // 0 � all shopping cart payments use the GET method
        // 1 � the buyer's browser is redirected to the return URL by using the GET method, but no payment variables are included
        // 2 � the buyer's browser is redirected to the return URL by using the POST method, and all payment variables are included The default is 0.

        $data['paypal_form'] = $p; // submit the fields to paypal


        /* Stripe Section */
        $stripe = [
            "secret_key" => $data['settings']["stripe_secret_key"],
            "publishable_key" => $data['settings']["stripe_public_key"],
        ];

        \Stripe\Stripe::setApiKey($stripe['secret_key']);

        /* Amount in Cents */
        $data['amount_cents'] = $this->getMoneyAsCents($amount);


        return ['content' => $this->view->render($data, 'client/accept_job')];


    }

    function accept_job_api()
    {

        /*Use User Library*/
        $userId = $_POST['user_id'];
//


        if (!isset($_POST['id'])) {
            echo json_encode(array('success' => 'false', 'msg' => 'Invalid request'));
            die();
        }

        $check_payment = $this->model('Common_model')->get('job_payments', array('job_id' => $_POST['id']));

        if (count($check_payment) != 0) {
            echo json_encode(array('success' => 'false', 'msg' => 'Already Paid '));
            die();
        }

        $data['token'] = $this->model('Common_model')->get('subscription_tokens', array('id' => $_POST['used_token'], 'user_id' => $userId, 'status' => 0));

        if (count($data['token']) == 0) {
            echo json_encode(array('success' => 'false', 'msg' => 'Invalid request'));
            die();
        }



        $user_subscription_id = $this->model('Common_model')->get_subscription_id($userId);
        $data['user_subscription'] = $this->model('Common_model')->get('subscription', array('id' => $user_subscription_id));


        $data['job'] = $this->model('Common_model')->get('jobs', array('id' => $_POST['id']));

        $Userdata = $this->model('Common_model')->get('user', array('id' => $userId));
        $Userdata = $Userdata[0];


        $Uemail = $Userdata['email'];
        $Uname = $Userdata['name'];

        $data["user"]["email"] = $Uemail;
        $data["user"]["name"] = $Uname;

        $settingsModel = $this->model('Settings');
        $data['currency_code'] = $settingsModel->currency_code();

        $data['settings'] = $settingsModel->get();

        /*Use User Library*/
        $paymentid = $this->rando();

        // if(!$session->exists('checkout_funds')){
        // 	$_SESSION['message'][] = ['error', $this->lang['add_funds']];
        // 	redirect(CLIENT_URL.'/addfunds');
        // }

        $total_amount = 0;


        foreach ($data['job'] as $Job) {
            $total_amount += $Job['price'];
            $total_amount += $Job['shipping_f'];
        }

        $_SESSION['pay_token'] = $data['token'][0]['id'];
        $_SESSION['pay_amount'] = $total_amount;
        $_SESSION['pay_job_id'] = $_POST['id'];

        $amount = $_SESSION['pay_amount'];
        $data['amount'] = $amount;


        /*PayStack*/
        $data['paystack_id'] = $this->rando();
        $data['payment_paystack'] = $data['amount'] * 100;

        $_GET['sandbox'] = $data['settings']['sandbox'];

        /* PayPal Section */
        // Setup class
        $p = $this->library('paypal_class');                    // initiate an instance of the class.
        $this_script = URL_PATH;
        $user_email = $Uemail;
        $usern = $Uname;


        $return_url = $this_script . '/' . CLIENT_URL . '/confirm_job_payment?id=' . base64_encode($data['job'][0]['id']) . '&amount=' . $amount . '&xtoken=' . $_POST['used_token'] . '&mode=paypal&pid=' . $paymentid;


        $return_url = $this_script . '/public/paypal.php?for=job&type=return&mode=paypal';

        $cancel_url = $this_script . '/public/paypal.php?for=job&type=cancel&mode=paypal';

        $notify_url = $this_script . '/public/paypal.php?for=job&type=notify&mode=paypal';


        $p->add_field('business', $data['settings']['paypal_email']); //don't need add this item. if your set the $p -> paypal_mail.
        $p->add_field('return', $return_url);
        $p->add_field('cancel_return', $cancel_url);
        $p->add_field('notify_url', $notify_url);
        $p->add_field('item_name', "Subscription");
        $p->add_field('item_number', '');
        $p->add_field('amount', $amount);
        $p->add_field('currency_code', $data['currency_code']);
        $p->add_field('usern', $usern);
        $p->add_field('user_email', $user_email);
        $p->add_field('cmd', '_xclick');
        $p->add_field('rm', '2');    // Return method = POST

        // 0 � all shopping cart payments use the GET method
        // 1 � the buyer's browser is redirected to the return URL by using the GET method, but no payment variables are included
        // 2 � the buyer's browser is redirected to the return URL by using the POST method, and all payment variables are included The default is 0.

        $data['paypal_form'] = $p; // submit the fields to paypal


        /* Stripe Section */
        $stripe = [
            "secret_key" => $data['settings']["stripe_secret_key"],
            "publishable_key" => $data['settings']["stripe_public_key"],
        ];

        \Stripe\Stripe::setApiKey($stripe['secret_key']);

        /* Amount in Cents */
        $data['amount_cents'] = $this->getMoneyAsCents($amount);

        echo json_encode(array('success' => 'true', 'msg' => 'Data found...'));
        die();
        return ['content' => $this->view->render($data, 'client/accept_job')];


    }


    function decline_job()
    {

        if (!isset($_GET['id'])) {
            $_SESSION['message'][] = ['error', 'Invalid Request !'];
            redirect(CLIENT_URL . '/sended_jobs');
        }


        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $clause['id'] = base64_decode($_GET['id']);
        $clause['user_id'] = $user->data()['id'];

        $job_data = $this->model('Common_model')->get('jobs', $clause);

        if (count($job_data) == 0) {
            $_SESSION['message'][] = ['error', 'Invalid Request !'];
            redirect(CLIENT_URL . '/sended_jobs');
        }


        $upd['status'] = 10;
        $upd['updated_at'] = date('Y-m-d H:i:s');

        $update = $this->model('Common_model')->update('jobs', $upd, array('id' => base64_decode($_GET['id'])));

        if ($update) {
            $_SESSION['message'][] = ['success', 'success'];
        }


        $UserD = $this->library('User')->data();

        $jobDATA = $this->model('Common_model')->get('jobs', array('id' => base64_decode($_GET['id'])));

        $clientDATA = $this->model('Common_model')->get('user', array('id' => $jobDATA[0]['freelancer_id']));

        $msg = $this->model('Common_model')->job_action($UserD['name'], $jobDATA[0]['job_id'], 'Declined ');

        $email = $this->model('Common_model')->email($UserD['email'], 'Job Declined', $msg);

        $msg = $this->model('Common_model')->job_action($clientDATA[0]['name'], $jobDATA[0]['job_id'], 'Declined ');

        $email = $this->model('Common_model')->email($clientDATA[0]['email'], 'Job Declined', $msg);

        redirect(CLIENT_URL . '/view_job?id=' . $_GET['id']);

    }

    function decline_job_api()
    {

        if (!isset($_GET['id'])) {
            echo json_encode(array('success' => 'false', 'msg' => 'Invalid request'));
            die();
        }


        /*Use User Library*/


        $clause['id'] = $_GET['id'];
        $clause['user_id'] = $_GET['user_id'];

        $job_data = $this->model('Common_model')->get('jobs', $clause);

        if (count($job_data) == 0) {
            echo json_encode(array('success' => 'false', 'msg' => 'Invalid request'));
            die();
        }


        $upd['status'] = 10;
        $upd['updated_at'] = date('Y-m-d H:i:s');

        $update = $this->model('Common_model')->update('jobs', $upd, array('id' => $_GET['id']));




        $UserD = $this->library('User')->data();

        $jobDATA = $this->model('Common_model')->get('jobs', array('id' => base64_decode($_GET['id'])));

        $clientDATA = $this->model('Common_model')->get('user', array('id' => $jobDATA[0]['freelancer_id']));

        $msg = $this->model('Common_model')->job_action($UserD['name'], $jobDATA[0]['job_id'], 'Declined ');

        $email = $this->model('Common_model')->email($UserD['email'], 'Job Declined', $msg);

        $msg = $this->model('Common_model')->job_action($clientDATA[0]['name'], $jobDATA[0]['job_id'], 'Declined ');

        $email = $this->model('Common_model')->email($clientDATA[0]['email'], 'Job Declined', $msg);

        if ($update) {
            echo json_encode(array('success' => 'true', 'msg' => 'success'));
            die();
           // $_SESSION['message'][] = ['success', 'success'];
        }

    }

    public function push_notification()
    {
        sendCloudMessaseToAndroid('cLZVJyxCwE6ss76Y2ROiiT:APA91bEHaa2tslwgw623ZMBndE5pzub_X1HlCfyf-IcDZzRcKaPFavR6XYr6fwwsm5pnCgKtmHKRk_9-og7xeyf0tuBqKnjSYdpE9xM_OhVCanVP2LLvHv3L3fnnaNXX7hKfgThgqbuo',
        'Xin chao ban',
        [
            'job_id'=>100
        ]
        );
        echo 1;
        die();
    }


    function confirm_job_payment()
    {


        if (!isset($_GET['id'])) {
            $_SESSION['message'][] = ['error', 'Invalid Request !'];
            redirect(CLIENT_URL . '/sended_jobs');
        }

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;


        $check_payment_done = 0;
        $user_id = $this->library('User')->data()['id'];
        $Insert['job_id'] = $_SESSION['pay_job_id'];
        $Insert['user_id'] = $user_id;
        $Insert['amount'] = $_SESSION['pay_amount'];
        $Insert['job_token'] = $_SESSION['pay_token'];
        $Insert['uid'] = time() . rand(10, 100);
        $Insert['plan_id'] = $this->model('Common_model')->get_plan_id($user_id);
        $Insert['created_at'] = date('Y-m-d H:i:s');
        $Insert['updated_at'] = date('Y-m-d H:i:s');

        if (isset($_POST['mode'])) {

            $Insert['payment_type'] = $_POST['mode'];
            $Insert['payment_data'] = encrypt_text(json_encode($_POST));


            if ($_POST['mode'] == 'paystack') {
                $check_payment_done = 1;
            }

            if ($_POST['mode'] == 'stripe') {
                if (isset($_POST['stripeToken'])) {
                    $check_payment_done = 1;
                }
            }

            if ($_POST['mode'] == 'razorpay') {
                if (isset($_POST['razorpay_payment_id'])) {
                    $check_payment_done = 1;
                }

            }

        }

        if ($check_payment_done == 1) {
            $_SESSION['message'][] = ['success', 'success'];
            $add = $this->model('Common_model')->add('job_payments', $Insert);

            $upd['status'] = 2;
            $upd['updated_at'] = date('Y-m-d H:i:s');

            $update = $this->model('Common_model')->update('jobs', $upd, array('id' => $Insert['job_id']));
            $tkt_clause['status'] = 1;
            $tkt_clause['payment_id'] = $add;
            $tkt_clause['updated_at'] = date('Y-m-d H:i:s');
            $update_token = $this->model('Common_model')->update('subscription_tokens', $tkt_clause, array('id' => $_SESSION['pay_token']));


            $UserD = $this->library('User')->data();

            $jobDATA = $this->model('Common_model')->get('jobs', array('id' => $_SESSION['pay_job_id']));

            $clientDATA = $this->model('Common_model')->get('user', array('id' => $jobDATA[0]['freelancer_id']));

            $msg = $this->model('Common_model')->job_action($UserD['name'], $jobDATA[0]['job_id'], 'Accepted ');

            $email = $this->model('Common_model')->email($UserD['email'], 'Job Accepted', $msg);

            $msg = $this->model('Common_model')->job_action($clientDATA[0]['name'], $jobDATA[0]['job_id'], 'Accepted ');

            $email = $this->model('Common_model')->email($clientDATA[0]['email'], 'Job Accepted', $msg);

            $invoice_msg = $this->model('Common_model')->make_invoice("job_payments", $add);

            $email = $this->model('Common_model')->email($clientDATA[0]['email'], 'Invoice', $invoice_msg);


        } else {
            $_SESSION['message'][] = ['error', 'Failed !'];
        }

        redirect(CLIENT_URL . '/view_job?id=' . $_GET['id']);


    }

    function confirm_job_paypal_api()
    {

        if (isset($_GET['mode'])) {


            if (!isset($_GET['txn_id'])) {
                echo json_encode(array('status' => 0, 'error_code' => 5448));
                die();
            }

            $user_id = $_GET['user_id'];

            $user_data = $this->model('Common_model')->get('user', array('id' => $user_id));



            $clause['user_id'] = $user_id;
            $clause['status'] = 1;

            $subscriptionDATA = $this->model('Common_model')->get('subscription',$clause);
            //$subscriptionDATA = Common_model::get('subscription',$clause);
          //  dd(1);
            $user_id = $user_data[0]['id'];
            $Insert['job_id'] = $_GET['pay_job_id'];


            $Insert['user_id'] = $user_id;
            $Insert['amount'] = $_GET['pay_amount'];
            $Insert['job_token'] = $_GET['pay_token'];
            $Insert['uid'] = time() . rand(10, 100);
            $Insert['plan_id'] = $subscriptionDATA[0]['plan_id'];
            $Insert['created_at'] = date('Y-m-d H:i:s');
            $Insert['updated_at'] = date('Y-m-d H:i:s');
            $Insert['payment_type'] = $_GET['mode'];
            $Insert['payment_data'] = encrypt_text(json_encode($_GET));

            //dd($_I);


            $add = $this->model('Common_model')->add('job_payments', $Insert);


            $upd['status'] = 2;
            $upd['updated_at'] = date('Y-m-d H:i:s');

            $update = $this->model('Common_model')->update('jobs', $upd, array('id' => $_GET['pay_job_id']));


            $tkt_clause['status'] = 1;
            $tkt_clause['payment_id'] = $add;
            $tkt_clause['updated_at'] = date('Y-m-d H:i:s');
            $update_token = $this->model('Common_model')->update('subscription_tokens', $tkt_clause, array('id' => $_GET['pay_token']));


            $UserD = $this->model('Common_model')->get('user', array('id' => $user_id));

            $jobDATA = $this->model('Common_model')->get('jobs', array('id' => $_GET['pay_job_id']));

            $flash = $this->model('Common_model')->flash($jobDATA[0]['id'], jobStatus(2), jobStatus(2));


            if ($add > 0) {

                echo json_encode(array('status' => 1, 'id' => $add));
                die();
            }

        }


        echo json_encode(array('status' => 0, 'error_code' => 58748));
        die();


    }

    function confirm_job_paypal()
    {


        if (isset($_GET['mode'])) {


            if (!isset($_GET['txn_id'])) {
                echo json_encode(array('status' => 0, 'error_code' => 5448));
                die();
            }


            $user_data = $this->model('Common_model')->get('user', array('userid' => $_GET['waveUser']));


            $clause['user_id'] = $user_id;
            $clause['status'] = 1;
            $subscriptionDATA = Common_model::get('subscription',$clause);
            $user_id = $user_data[0]['id'];
            $Insert['job_id'] = $_GET['pay_job_id'];

            $Insert['user_id'] = $user_id;
            $Insert['amount'] = $_GET['pay_amount'];
            $Insert['job_token'] = $_GET['pay_token'];
            $Insert['uid'] = time() . rand(10, 100);
            $Insert['plan_id'] = $subscriptionDATA[0]['plan_id'];
            $Insert['created_at'] = date('Y-m-d H:i:s');
            $Insert['updated_at'] = date('Y-m-d H:i:s');
            $Insert['payment_type'] = $_GET['mode'];
            $Insert['payment_data'] = encrypt_text(json_encode($_GET));


            $add = $this->model('Common_model')->add('job_payments', $Insert);


            $upd['status'] = 2;
            $upd['updated_at'] = date('Y-m-d H:i:s');

            $update = $this->model('Common_model')->update('jobs', $upd, array('id' => $_GET['pay_job_id']));


            $tkt_clause['status'] = 1;
            $tkt_clause['payment_id'] = $add;
            $tkt_clause['updated_at'] = date('Y-m-d H:i:s');
            $update_token = $this->model('Common_model')->update('subscription_tokens', $tkt_clause, array('id' => $_GET['pay_token']));


            $UserD = $this->model('Common_model')->get('user', array('id' => $user_id));

            $jobDATA = $this->model('Common_model')->get('jobs', array('id' => $_GET['pay_job_id']));

            $flash = $this->model('Common_model')->flash($jobDATA[0]['id'], jobStatus(2), jobStatus(2));


            if ($add > 0) {

                echo json_encode(array('status' => 1, 'id' => $add));
                die();
            }

        }


        echo json_encode(array('status' => 0, 'error_code' => 58748));
        die();


    }


    public function job_payments()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;


        $this->check_subscription();

        $user_subscription_id = $this->model('Common_model')->get_subscription_id($this->library('User')->data()['id']);
        $data['user_subscription'] = $this->model('Common_model')->get('subscription', array('id' => $user_subscription_id));

        $data['tokens'] = $this->model('Common_model')->get('subscription_tokens', array('user_id' => $this->library('User')->data()['id']));

        $clause['user_id'] = $user->data()['id'];
        $clause["ORDER"] = array('id' => 'DESC');
        $Result = $this->model('Common_model')->get('job_payments', $clause);

        $data['jobs'] = $this->model('Common_model')->get('jobs', $clause);


        $offset = 0;

        if (isset($_GET['page'])) {
            $page = $_GET['page'];
        } else {
            $page = 1;
        }

        $limit = 5;

        $offset = ($page - 1) * $limit;

        $data['payments'] = array_slice($Result, $offset, $limit);


        $data['pagination'] = $this->Pagination(count($Result), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/job_payments?page=');


        return ['content' => $this->view->render($data, 'client/job_payments')];
    }


    public function job_payments_apis()
    {
        //echo"success".$_GET['user_id']; die;
        $user_id = $_GET['user_id'];

        $clause['user_id'] = $user_id;
        $clause["ORDER"] = array('id' => 'DESC');
        $result = $this->model('Common_model')->get('job_payments', $clause);
        $retVal = [];

        foreach ($result as $item) {
            $job = $this->model('Common_model')->get('jobs', [
                'id' => $item['job_id']
            ]);
            $token = $this->model('Common_model')->get('subscription_token', [
                'id' => isset($item['job_token']) ? $item['job_token'] : null,
                'user_id' => $user_id
            ]);
            $retVal[] = [
                'id' => $item['id'],
                'payment_type' => $item['payment_type'],
                'amount' => $item['amount'],
                'payment_id' => $item['uid'],
                'job_id' => isset($job[0]) ? $job[0]['job_id'] : null,
                'token' => isset($token[0]) ? $token[0]['uid'] : null,
                'time' => date('d F Y H:i', strtotime($item['created_at']))
            ];
        }

        if ($result) {

            echo json_encode(array('success' => 'true', 'msg' => 'Data found...', 'data' => $retVal));
            die();
        } else {
            echo json_encode(array('success' => 'false', 'msg' => 'No Data found...', 'data' => 'NA'));
            die();

        }

    }

    public function token_apis()
    {
        //echo"success".$_GET['user_id']; die;
        $user_id = $_GET['user_id'];
        $clause['user_id'] = $user_id;
        $clause["ORDER"] = array('id' => 'DESC');
        $result = $this->model('Common_model')->get('subscription_tokens', $clause);

        if ($result) {

            echo json_encode(array('success' => 'true', 'msg' => 'Data found...', 'data' => $result));
            die();
        } else {
            echo json_encode(array('success' => 'false', 'msg' => 'No Data found...', 'data' => 'NA'));
            die();

        }

    }


    public function jobs()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();
        $data['user_subscription'] = $this->model('Common_model')->get('subscription', array('id' =>
            $this->model('Common_model')->get_subscription_id($user->data()['id'])));

        $user_id = $this->library('User')->data()['id'];

        $ALL_JOBS = $this->model('Common_model')->get('jobs', array('user_id' => $user_id, "ORDER" => array('id' => 'DESC')));

        $page = 1;

        if (isset($_GET['page'])) {
            $page = $_GET['page'];
        }

        $limit = 5;

        $offset = ($page - 1) * $limit;

        $data['jobs'] = array_slice($ALL_JOBS, $offset, $limit);


        $data['pagination'] = $this->Pagination(count($ALL_JOBS), $limit, $page, URL_PATH . '/' . CLIENT_URL . '/sended_jobs?page=');


        $data['users'] = $this->model('Common_model')->get('user', array('user_type' => 1));

        $data['services'] = $this->model('Common_model')->get('services');


        $data['status'] = $this->model('Common_model')->job_status_client();

        // cheeck current subscription end

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();


        return ['content' => $this->view->render($data, 'client/jobs')];
    }

    public function job_api_2()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];
        $job = $this->model('Common_model')->get('jobs', array('id' => base64_decode($_GET['id'])));


        $job = isset($job[0]) ? $job[0] : null;

        $userId = $job['user_id'];
        $freelancerId = $job['freelancer_id'];
        $user = $this->model('Common_model')->get('user', [
            'id' => $userId
        ]);
        $user = $user[0];
        $freelancer = $this->model('Common_model')->get('user', [
            'id' => $freelancerId
        ]);
        $freelancer = $freelancer[0];
        $services = $this->model('Common_model')->get('services', [
            'id' => $job['service_id']
        ]);
        $service = $services[0];


        $status = array(
            '0' => 'Job sent',
            '1' => 'Project Cost',
            '2' => 'Project Paid',
            '3' => 'Quality Assurance',
            '4' => 'Sending- Tracking Number',
            '9' => 'Completed Job',
            '10' => 'Job rejected'
        );

        $jobActions = $this->model('Common_model')->get('job_actions', array('job_id' => base64_decode($_GET['id'])));
        $jobActionArr = [];
        $qualityFiles = 0;
        foreach ($jobActions as $jobAction) {

            $jobActionArr[] = [
                'time' => $jobAction['created_at'],
                'by' => $jobAction['from_by'] == 0 ? 'Team' : 'Client',
                'type' => $jobAction['action_type'] == 0 ? 'Action' : 'File Send',
                'info' => $jobAction['action_type'] == 1 ? '/uploads/jobs/' . $jobAction['name'] : $jobAction['name'],
                'action_type' => $jobAction['action_type'],
            ];
            if($jobAction['action_type'] == 1)
            {
                $qualityFiles++;
            }
        }

        $payments = $this->model('Common_model')->get('job_payments', array('job_id' => base64_decode($_GET['id'])));
        $paymentArr = [];
        foreach ($payments as $payment) {
            $tokens = $this->model('Common_model')->get('subscription_tokens', [
                'user_id' => $_GET['user_id']
            ]);
            $tokenUid = null;
            foreach ($tokens as $token) {
                if ($token['id'] == $payment['job_token']) {
                    $tokenUid = $token['uid'];
                    break;
                }

            }
            $paymentArr[] = [
                'payment' => $payment['uid'],
                'type' => $payment['payment_type'],
                'amount' => $payment['amount'],
                'token' => $tokenUid,
                'time' => date('d F Y H:i', strtotime($payment['created_at'])),
            ];
        }

        $attachments = json_decode($job['files']);
        $attachmentArr = [];
        if (is_array($attachments)) {
            foreach ($attachments as $attachment) {
                $attachmentArr[] = '/uploads/jobs/' . $attachment;
            }
        }
        $retVal = [
            'id' => $job['id'],
            'job_id' => $job['job_id'],
            'quality_files' => $qualityFiles,
            'client' => [
                'image' => '/' . PUBLIC_PATH . '/' . UPLOADS_PATH . '/admin/users/' . $user['imagelocation'],
                'name' => $user['name']
            ],
            'team' => [
                'image' => '/' . PUBLIC_PATH . '/' . UPLOADS_PATH . '/admin/users/' . $freelancer['imagelocation'],
                'name' => $freelancer['name']
            ],
            'time' => date('d F Y H:i', strtotime($job['created_at'])),
            'service' => decrypt_text($service['name']),
            'subject' => decrypt_text($job['subject']),
            'description' => decrypt_text($job['description']),
            'name' => decrypt_text($job['name']),
            'shipping' => decrypt_text($job['shipping']),
            'shipping_type' => $job['shipping_type'],
            'material' => decrypt_text($job['material']),
            'type' => decrypt_text($job['type']),
            'layer_height' => decrypt_text($job['layer_height']),
            'fininshings' => decrypt_text($job['fininshings']),
            'color' => decrypt_text($job['color']),
            'postage' => decrypt_text($job['postage']),
            'status' => $status[$job['status']],
            'price' => $job['price'],
            'shipping_f' => $job['shipping_f'],
            'days' => $job['days'],
            'shipping_date' => date('d F Y H:i',strtotime($job['shipping_date'])),
            'quality_assurances' => !empty($job['quality_assurances']) ? date('d F Y H:i', strtotime($job['quality_assurances'])): $job['quality_assurances'],
            'tracking_number' => $job['tracking_number'],
            'completed_date' => date('d F Y H:i', strtotime($job['completed_date'])),
            'review' => decrypt_text($job['review']),
            'review_raw' => $job['review'],
            'actions' => $jobActionArr,
            'payments' => $paymentArr,
            'attachments' => $attachmentArr,
            'status_id' => $job['status'],
             'infil' => decrypt_text($job['infil']),
        ];


        echo json_encode(array('success' => 'true', 'msg' => 'Data found...', 'data' => $retVal));
        die();
    }

    public function job_api()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $userId = $_GET['user_id'];
        $user_subscription_id = $this->model('Common_model')->get_subscription_id($userId);
        $data['user_subscription'] = $this->model('Common_model')->get('subscription', array('id' => $user_subscription_id));

        $data['tokens'] = $this->model('Common_model')->get('subscription_tokens', array('user_id' => $userId));

        $user_id = $this->library('User')->data()['id'];

        $data['job'] = $this->model('Common_model')->get('jobs', array('id' => base64_decode($_GET['id'])));


        $data['payments'] = $this->model('Common_model')->get('job_payments', array('job_id' => base64_decode($_GET['id'])));

        $data['users'] = $this->model('Common_model')->get('user', array('user_type' => 1));
        $data['services'] = $this->model('Common_model')->get('services');

        $data['status'] = $this->model('Common_model')->job_status_client();

        $data['job_action'] = $this->model('Common_model')->get('job_actions', array('job_id' => base64_decode($_GET['id'])));


        $data['reviews'] = $this->model('Common_model')->get('reviews', array('job_id' => base64_decode($_GET['id'])));


        // cheeck current subscription end

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();


        echo json_encode(array('success' => 'true', 'msg' => 'Data found...', 'data' => $data));
        die();
    }

    public function jobs_api()
    {

        $input = $this->library('Input');
        /*Use User Library*/
        $user = $this->library('User');

        $data = [];


        $data['user'] = $user->data();


        $user_id = $input->get('user_id');

        $ALL_JOBS = $this->model('Common_model')->get('jobs', array('user_id' => $user_id, "ORDER" => array('id' => 'DESC')));


        $freelancer_data = '';
        if (!empty($ALL_JOBS)) {

            foreach ($ALL_JOBS as $value) {

                $service_id = $value['service_id'];
                $value['service_details'] = $this->model('Common_model')->get('services', array('id' => $service_id));

                $freelancer_id = $value['freelancer_id'];
                $value['freelancer_details'] = $this->model('Common_model')->get('user', array('id' => $freelancer_id));

                $freelancer_data[] = $value;

                /* $freelancer_id = $value['freelancer_id'];

				$value['freelancer_details'] =  $this->model('Common_model')->get('user',array('id'=>$freelancer_id));

				$freelancer_data[] = $value;*/

                //$freelancer_data['status'] = $this->model('Common_model')->job_status_client();


            }

        }


        $data['ALL_JOBS'] = $freelancer_data;

        //$data['users'] = $this->model('Common_model')->get('user',array('user_type'=>1));


        $services = $this->model('Common_model')->get('services');

        $datas = '';

        if (!empty($services)) {

            foreach ($services as $value) {

                $id = $value['freelancer'];
                //print_r( $value['freelancer']);
                $value['freelancer_details'] = $this->model('Common_model')->get('user', array('id' => $id));
                $datas[] = $value;
            }
        }

        //echo"<pre>"; print_r($datas); die;

        $data['services'] = $datas;


        $data['status'] = $this->model('Common_model')->job_status_client();


        echo json_encode(array('success' => 'true', 'msg' => 'Data found...', 'data' => $data));
        die();

        //return ['content' => $this->view->render($data, 'client/jobs')];
    }

    public function jobs_api_2()
    {

        $input = $this->library('Input');
        /*Use User Library*/
        $user = $this->library('User');

        $data = [];


        $data['user'] = $user->data();


        $user_id = $input->get('user_id');
        $limit = $input->get('limit');
        $offset = $input->get('offset');

        $items = $this->model('Common_model')->get('jobs', array('user_id' => $user_id, "ORDER" => array('id' => 'DESC'), "LIMIT" => [$offset, $limit]));

        $retVal = [];
        $status = array(
            '0' => 'Job sent',
            '1' => 'Project Cost',
            '2' => 'Project Paid',
            '3' => 'Quality Assurance',
            '4' => 'Sending- Tracking Number',
            '9' => 'Completed Job',
            '10' => 'Job rejected'
        );
        foreach ($items as $item) {
            $freelancer = $this->model('Common_model')->get('user', [
                'id' => $item['freelancer_id']
            ]);
            $freelancer = $freelancer[0];
            $services = $this->model('Common_model')->get('services', [
                'id' => $item['service_id']
            ]);
            $service = $services[0];
            $retVal[] = [
                'id' => $item['id'],
                'job_id' => $item['job_id'],
                'freelancer' => [
                    'image' => '/' . PUBLIC_PATH . '/' . UPLOADS_PATH . '/admin/users/' . $freelancer['imagelocation'],
                    'name' => $freelancer['name']
                ],
                'service' => $service['name'],
                'subject' => decrypt_text($item['subject']),
                'status' => $status[$item['status']],
                'created_at' => date('d F Y H:i', strtotime($item['created_at']))
            ];
        }


        echo json_encode(array('success' => 'true', 'msg' => 'Data found...', 'data' => $retVal));
        die();

        //return ['content' => $this->view->render($data, 'client/jobs')];
    }


    public function chat_on()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        $job_id = base64_decode($_GET['job_id']);

        $data['jobs'] = $this->model('Common_model')->get('jobs', array('id' => $job_id));

        $data['users'] = $this->model('Common_model')->get('user', array('user_type' => 1));


        // cheeck current subscription end

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();


        return ['content' => $this->view->render($data, 'client/chat_on')];
    }


    public function add_job()
    {


        $enx = encrypt_text('services');
        $enx = decrypt_text($enx);


        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        $user_id = $this->library('User')->data()['id'];
        $data['auth'] = $this->library('User')->data();

        $data['services'] = $this->model('Common_model')->get('services', array('status' => 1));

        // cheeck current subscription end

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();


        return ['content' => $this->view->render($data, 'client/add_job')];
    }


    public function subscription_invoice()
    {

        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        $subscription_id = base64_decode($_GET['subscription_id']);


        $user_id = $this->library('User')->data()['id'];

        $data['subscription'] = $this->model('Common_model')->get('subscription', array('id' => $subscription_id));

        $data['userdata'] = $this->model('Common_model')->get('user', array('id' => $data['subscription'][0]['user_id']));

        $data['services'] = $this->model('Common_model')->get('services', array('status' => 1));

        // cheeck current subscription end

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();


        return ['content' => $this->view->render($data, 'client/subscription_invoice')];
    }

    public function payment_invoice_api()
    {

        $data = [];


        $payment_id = base64_decode($_GET['payment_id']);

        $data['payment'] = $this->model('Common_model')->get('job_payments', array('id' => $payment_id));

        $data['jobs'] = $this->model('Common_model')->get('jobs', array('id' => $data['payment'][0]['job_id']));


        $user_id = $_GET['user_id'];


        $data['userdata'] = $this->model('Common_model')->get('user', array('id' => $data['payment'][0]['user_id']));


        // cheeck current subscription end

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();


        return ['content_api' => $this->view->render($data, 'client/payment_invoice_api')];
    }

    public function payment_invoice()
    {

        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        $payment_id = base64_decode($_GET['payment_id']);

        $data['payment'] = $this->model('Common_model')->get('job_payments', array('id' => $payment_id));

        $data['jobs'] = $this->model('Common_model')->get('jobs', array('id' => $data['payment'][0]['job_id']));


        $user_id = $this->library('User')->data()['id'];


        $data['userdata'] = $this->model('Common_model')->get('user', array('id' => $data['payment'][0]['user_id']));


        // cheeck current subscription end

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();


        return ['content' => $this->view->render($data, 'client/payment_invoice')];
    }


    public function ajax_get_chat()
    {

        $user_id = $this->library('User')->data()['id'];
        $job_id = $_POST['job_id'];

        if ($job_id != "") {
            $param['job_id'] = base64_decode($job_id);
            $chat = $this->model('Common_model')->get('chat_on', $param);
        } else {
            $param['user_id'] = $user_id;
            $param['job_id'] = 0;
            $chat = $this->model('Common_model')->get('chat_on', $param);
        }


        echo json_encode(array('status' => 1, 'chat' => $chat));

        die();
    }


    public function ajax_set_chat()
    {

        $user_id = $this->library('User')->data()['id'];
        $job_id = $_POST['job_id'];

        if ($job_id != "") {
            $param['job_id'] = base64_decode($job_id);
        }

        $param['user_id'] = $user_id;
        $param['message'] = $_POST['message'];
        $param['by_from'] = 2;
        $param['created_at'] = date('Y-m-d H:i:s');

        $chat = $this->model('Common_model')->add('chat_on', $param);

        echo json_encode(array('status' => 1));

        die();
    }


    public function send_message_api()
    {

        /* Use Input Library */
        $input = $this->library('Input');
        $user_id = $input->get('user_id');
        $job_id = $input->get('job_id');

        if ($job_id != "") {
            $param['job_id'] = $job_id;
        }

        $param['user_id'] = $user_id;
        $param['message'] = $input->get('message');
        $param['by_from'] = 2;
        $param['created_at'] = date('Y-m-d H:i:s');

        $chat = $this->model('Common_model')->add('chat_on', $param);
        if ($chat) {
            echo json_encode(array('status' => 'true', 'msg' => 'successfully'));

            die();
        } else {
            echo json_encode(array('status' => 'false', 'msg' => 'faild'));

            die();
        }

    }


    public function send_nofification()
    {

        /* Use Input Library */
        $input = $this->library('Input');
        $user_id = $input->get('user_id');
        $device_id = $input->get('device_id');


        /* 	$param['user_id'] = $user_id;
    	$param['message'] = $input->get('message');
    	$param['by_from'] = 2;
    	$param['created_at'] = date('Y-m-d H:i:s');

    	$chat = $this->model('Common_model')->add('chat_on',$param); */
        $chat = 1;
        if ($chat) {
            echo json_encode(array('status' => 'true', 'msg' => 'successfully'));

            die();
        } else {
            echo json_encode(array('status' => 'false', 'msg' => 'faild'));

            die();
        }

    }

    public function get_message_api()
    {

        $input = $this->library('Input');
        $user_id = $input->get('user_id');
        $job_id = $input->get('job_id');

        if ($job_id != "") {
            $param['job_id'] = $job_id;
            $chat = $this->model('Common_model')->get('chat_on', $param);
        } else {
            $param['user_id'] = $user_id;
            $param['job_id'] = 0;
            $chat = $this->model('Common_model')->get('chat_on', $param);
        }

        foreach ($chat as &$item) {

            $userSendings = $this->model('Common_model')->get('user', array('id' => $item['user_id']));
            if($item['by_from'] != 2)
            {
                $userSendings = $this->model('Common_model')->get('admin', array('email' => 'admin@wave.com'));
            }

            if(!isset($userSendings[0]))
            {
                continue;
            }
            $userSending = $userSendings[0];
            $item['sender'] = [
                'id' => $userSending['id'],
                'name' => $userSending['name'],
                'image' => $item['by_from'] == 2 ? '/' . PUBLIC_PATH . '/' . UPLOADS_PATH . '/admin/users/' . $userSending['imagelocation'] :
                    '/' . PUBLIC_PATH . '/' . UPLOADS_PATH . '/admin/' . $userSending['imagelocation']
            ];

        }

        if ($chat) {
            echo json_encode(array('status' => 'true', 'msg' => 'Data found', 'chat' => $chat));

            die();
        } else {
            echo json_encode(array('status' => 'false', 'msg' => 'No Data found', 'chat' => 'NA'));

            die();
        }
    }


    public function token()
    {

        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $this->check_subscription();

        $user_id = $this->library('User')->data()['id'];

        $data['token'] = $this->model('Common_model')->get('subscription_tokens', array('user_id' => $user_id));

        $data['subscription'] = $this->model('Common_model')->get('subscription', array('user_id' => $user_id));

        // cheeck current subscription end

        /*Use User Model*/
        $userModel = $this->model('User');
        $data['users'] = $userModel->details();


        return ['content' => $this->view->render($data, 'client/token')];
    }


    function process_tmp_file_upload()
    {

        $target_dir = "uploads/jobs/";


        if (stripos($_FILES["file"]["name"], '.php') != false) {
            echo "bad";
            die();
        }

        $fname = time() . basename($_FILES["file"]["name"]);
        $target_file = $target_dir . $fname;

        if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
            echo json_encode(array('status' => 1, 'file' => $fname));
        } else {
            echo json_encode(array('status' => 0));
        }

        die();

    }


    function quality_assurances()
    {

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $id = base64_decode($_GET['id']);

        $upd['quality_assurances'] = date('Y-m-d H:i:s');
        $upd['status'] = 3;

        $update = $this->model('Common_model')->update('jobs', $upd, array('id' => base64_decode($_GET['id'])));

        $action['job_id'] = $id;
        $action['from_by'] = 1;
        $action['action_type'] = 0;
        $action['name'] = 'Quality Assurances Approved';
        $action['created_at'] = date('Y-m-d H:i:s');

        $add = $this->model('Common_model')->add('job_actions', $action);

        $flash = $this->model('Common_model')->flash($id, jobStatus(3), jobStatus(3));


        redirect(CLIENT_URL . '/view_job?id=' . $_GET['id']);

    }

    function quality_assurances_api()
    {

        /*Use User Library*/

        $id = $_GET['id'];
        $upd['quality_assurances'] = date('Y-m-d H:i:s');
        $upd['status'] = 3;

        $update = $this->model('Common_model')->update('jobs', $upd, array('id' => $id));

        $action['job_id'] = $id;
        $action['from_by'] = 1;
        $action['action_type'] = 0;
        $action['name'] = 'Quality Assurances Approved';
        $action['created_at'] = date('Y-m-d H:i:s');

        $add = $this->model('Common_model')->add('job_actions', $action);
        $flash = $this->model('Common_model')->flash($id, jobStatus(3), jobStatus(3));
        echo json_encode(array('status' => 'true', 'msg' => 'successfully'));
        die();

    }


    function recheck_job()
    {

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $id = base64_decode($_GET['id']);


        $action['job_id'] = $id;
        $action['from_by'] = 1;
        $action['action_type'] = 0;
        $action['name'] = $_POST['note'];
        $action['created_at'] = date('Y-m-d H:i:s');

        $add = $this->model('Common_model')->add('job_actions', $action);


        if ($add > 0) {
            $flash = $this->model('Common_model')->flash($id, 'Quality Control Recheck', 'Quality Control Recheck');
        }


        redirect(CLIENT_URL . '/view_job?id=' . $_GET['id']);

    }

    function recheck_job_api()
    {

        /*Use User Library*/


        $id = $_GET['id'];

        $action['job_id'] = $id;
        $action['from_by'] = 1;
        $action['action_type'] = 0;
        $action['name'] = $_GET['note'];
        $action['created_at'] = date('Y-m-d H:i:s');

        $add = $this->model('Common_model')->add('job_actions', $action);

        if ($add > 0) {
            echo json_encode(array('status' => 'true', 'msg' => 'successfully'));
            die();
        }
        echo json_encode(array('status' => 'false', 'msg' => 'error'));
        die();
    }


    function request_shipping()
    {

        /*Use User Library*/
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $id = base64_decode($_GET['id']);

        $action['job_id'] = $id;
        $action['from_by'] = 1;
        $action['action_type'] = 0;
        $action['name'] = 'Waiting For Shipping';
        $action['created_at'] = date('Y-m-d H:i:s');

        $add = $this->model('Common_model')->add('job_actions', $action);

        $flash = $this->model('Common_model')->flash($id, 'Waiting For Shipping', 'Request For Shipping');


        redirect(CLIENT_URL . '/view_job?id=' . $_GET['id']);


    }

    function request_shipping_api()
    {

        /*Use User Library*/

        $id = $_GET['id'];

        $action['job_id'] = $id;
        $action['from_by'] = 1;
        $action['action_type'] = 0;
        $action['name'] = 'Waiting For Shipping';
        $action['created_at'] = date('Y-m-d H:i:s');

        $add = $this->model('Common_model')->add('job_actions', $action);

        $flash = $this->model('Common_model')->flash($id, 'Waiting For Shipping', 'Request For Shipping');


        if ($add > 0) {
            echo json_encode(array('status' => 'true', 'msg' => 'successfully'));
            die();
        }
        echo json_encode(array('status' => 'false', 'msg' => 'error'));
        die();


    }


    function make_complete()
    {


        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $id = base64_decode($_GET['id']);

        $upd['completed_date'] = date('Y-m-d H:i:s');
        $upd['status'] = 9;

        $update = $this->model('Common_model')->update('jobs', $upd, array('id' => $id));

        $action['job_id'] = $id;
        $action['from_by'] = 1;
        $action['action_type'] = 0;
        $action['name'] = 'Completed';
        $action['created_at'] = date('Y-m-d H:i:s');

        $add = $this->model('Common_model')->add('job_actions', $action);


        $flash = $this->model('Common_model')->flash($id, 'Completed', 'Completed');


        redirect(CLIENT_URL . '/view_job?id=' . $_GET['id']);


    }

    function make_complete_api()
    {

        $id = $_GET['id'];

        $upd['completed_date'] = date('Y-m-d H:i:s');
        $upd['status'] = 9;

        $update = $this->model('Common_model')->update('jobs', $upd, array('id' => $id));

        $action['job_id'] = $id;
        $action['from_by'] = 1;
        $action['action_type'] = 0;
        $action['name'] = 'Completed';
        $action['created_at'] = date('Y-m-d H:i:s');

        $add = $this->model('Common_model')->add('job_actions', $action);


        $flash = $this->model('Common_model')->flash($id, 'Completed', 'Completed');


        if ($add > 0) {
            echo json_encode(array('status' => 'true', 'msg' => 'successfully'));
            die();
        }
        echo json_encode(array('status' => 'false', 'msg' => 'error'));
        die();


    }


    function submit_review()
    {
        $user = $this->library('User');
        $data['user'] = $user->data();
        if (!$user->isLoggedIn()):
            redirect('login');
        elseif ($data['user']['user_type'] != 2):
            redirect('login');
        endif;

        $id = $_POST['id'];

        $upd['review'] = encrypt_text($_POST['description_of']);

        $update = $this->model('Common_model')->update('jobs', $upd, array('id' => $id));

        $flash = $this->model('Common_model')->flash($id, 'Review Added', 'Review Added');

        redirect(CLIENT_URL . '/view_job?id=' . base64_encode($id));


    }

    function submit_review_api()
    {

        $id = $_POST['id'];

        $upd['review'] = encrypt_text($_POST['description_of']);

        $update = $this->model('Common_model')->update('jobs', $upd, array('id' => $id));

        $flash = $this->model('Common_model')->flash($id, 'Review Added', 'Review Added');

        echo json_encode(array('status' => 'true', 'msg' => 'successfully'));
        die();


    }


    function check_subscription()
    {

        // return true;

        $user_id = $this->library('User')->data()['id'];

        // cheeck current subscription
        $clause['user_id'] = $user_id;
        $clause['status'] = 1;
        $subscriptionDATA = $this->model('Common_model')->get('subscription', $clause);

        // print_r($subscriptionDATA);
        // die();

        if ($subscriptionDATA) {
            $expiry = "";
            foreach ($subscriptionDATA as $subscriptionDATAVAL) {
                if (strtotime($expiry) < strtotime($subscriptionDATAVAL['expiry'])) {
                    $expiry = $subscriptionDATAVAL['expiry'];
                }
            }

            if (strtotime($expiry) > time()) {
                // echo $expiry;
                return true;
            }

        }
        // cheeck current subscription end

        // check registration time plan select

        $clause['user_id'] = $user_id;
        $clause['status'] = 0;

        $subscriptionDATA = $this->model('Common_model')->get('subscription', $clause);
        if ($subscriptionDATA) {

            $latest_subscription = 0;
            foreach ($subscriptionDATA as $subscriptionDATAVAL) {
                $latest_subscription = $subscriptionDATAVAL['id'];
            }

            $_SESSION['subscription_id'] = $latest_subscription;


        } else {
            redirect('subscription/select_plan');
        }

        redirect('subscription');

        // check registration time plan select


    }


    public function xtest()
    {

        $user_id = $this->library('User')->data()['id'];

        echo $this->model('Common_model')->check_personal_subscription($user_id);

        die();

    }

    public function invoice()
    {


        echo $this->model('Common_model')->make_invoice("job_payments", 16);

        die();


    }

    public function test()
    {


        $flash = $this->model('Common_model')->flash(38, 'testc3d', "hello world this is testing");


        die();

        $email = $this->model('Common_model')->email("rrgs.sagar@gmail.com", 'testc3d', "hello world this is testing");


        // echo "5454";

        // $x =	track('EZ2000000002');

        // print_r($x);

        // 	die();
        //echo senti('very good');

        die();
    }


}