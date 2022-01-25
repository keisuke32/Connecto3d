<?php

namespace Fir\Controllers;

class Home extends Controller
{
    /**
     * This would be your http://localhost/project-name/ index page
     *
     * @return array
     */
    protected $admin;
	
    public function index()
    {


    	if($this->library('User')->data()["user_type"] === "1"){
							redirect(FREELANCER_URL.'/dashboard');
						 }elseif($this->library('User')->data()["user_type"] === "2"){
							redirect(CLIENT_URL.'/dashboard');
				}

				
        if (isset($this->url[0]) && $this->url[0] == 'lang') {
            $this->updateLanguage($this->url[1]);
        }


        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];

        $data['plans'] = $this->db->select('plans','*',array('status'=>1));

		/*Use User Library*/
        $user = $this->library('User');
		$data['user_isloggedin'] = $user->isLoggedIn();
		
		/*Use Category Model*/
        $categoryModel = $this->model('Category');
		$data['categories'] = $categoryModel->details();
		
		/*Use User Model*/
        $userModel = $this->model('User');
		$data['users'] = $userModel->details();
		$data['c_freelancers'] = $userModel->c_freelancers();
		$data['c_clients'] = $userModel->c_clients();
		
		/*Use Project Model*/
        $projectModel = $this->model('Project');
		$data['c_posted_projects'] = $projectModel->c_posted_projects();
		$data['c_completed_projects'] = $projectModel->c_completed_projects();
		
		
		
		/*Use Project Model*/
        $portfolioModel = $this->model('Portfolio');
		if(empty($this->url[0]) || $this->url[0] == "home"){
			$pg = 1;
		}else{
			$pg = $this->url[0];
		}
		
		$page = (int) (!isset($pg) ? 1 : $pg);
		$limit = '12';
		$startpoint = ($page * $limit) - $limit;
        $data['has_portfolios'] = $portfolioModel->hasPortfolios();
        $data['portfolio_pagination'] = $portfolioModel->pagination($startpoint, $limit);
		$data['pagination'] = $this->Pagination($portfolioModel->total(), $limit, $page);
		$data['portfolio_timeago'] = $portfolioModel->timeago();
		$data['is_divisible_by_3'] = $this->is_divisible_by_3($portfolioModel->total());

		$data['services'] = $this->model('Common_model')->get('services');

        return ['content' => $this->view->render($data, 'home/home')];
    }


    public function privacy()
    {
       $data = [];

        return ['content' => $this->view->render($data, 'home/privacy')];
    }

    public function plans()
    {
       $data = [];

       $data['plans'] = $this->db->select('plans','*',array('status'=>1));

        return ['content' => $this->view->render($data, 'home/plans')];
    }


    public function tearms()
    {
        if (isset($this->url[0]) && $this->url[0] == 'lang') {
            $this->updateLanguage($this->url[1]);
        }

        $data = [];

        return ['content' => $this->view->render($data, 'home/tearms')];
    }
	
	function Pagination($total, $per_page = 10,$page = 1, $url = URL_PATH.'/'){  
			$total = $total;
			$adjacents = "2"; 

			$page = ($page == 0 ? 1 : $page);  
			$start = ($page - 1) * $per_page;								
			
			$prev = $page - 1;							
			$next = $page + 1;
			$lastpage = ceil($total/$per_page);
			$lpm1 = $lastpage - 1;
			
			$pagination = "";
			if($lastpage > 1)
			{
				$pagination .= "<div class='paginationCommon blogPagination text-center'>
			 <nav aria-label='Page navigation'>
			  <ul class='pagination'>";
						$pagination .= "<li class='details'>Page $page of $lastpage</li>";
						
				if ($page > 1)
					$pagination.= "<li><a href='{$url}1'> <i class='fa  fa-angle-double-left'></i> </a></li>
								   <li><a href='{$url}$prev'> <i class='fa fa-angle-left'></i> </a></li>";
				else
					$pagination.= "<li class='disabled'><a href='#'><i class='fa fa-angle-left'></i> </a></li>";
				
				if ($lastpage < 7 + ($adjacents * 2))
				{	
					for ($counter = 1; $counter <= $lastpage; $counter++)
					{
						if ($counter == $page)
							$pagination.= "<li class='active'><a>$counter</a></li>";
						else
							$pagination.= "<li><a href='{$url}$counter'>$counter</a></li>";					
					}
				}
				elseif($lastpage > 5 + ($adjacents * 2))
				{
					if($page < 1 + ($adjacents * 2))		
					{
						for ($counter = 1; $counter < 4 + ($adjacents * 2); $counter++)
						{
							if ($counter == $page)
								$pagination.= "<li class='active'><a>$counter</a></li>";
							else
								$pagination.= "<li><a href='{$url}$counter'>$counter</a></li>";					
						}
						$pagination.= "<li class='dot'>...</li>";
						$pagination.= "<li><a href='{$url}$lpm1'>$lpm1</a></li>";
						$pagination.= "<li><a href='{$url}$lastpage'>$lastpage</a></li>";		
					}
					elseif($lastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2))
					{
						$pagination.= "<li><a href='{$url}1'>1</a></li>";
						$pagination.= "<li><a href='{$url}2'>2</a></li>";
						$pagination.= "<li class='dot'>...</li>";
						for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++)
						{
							if ($counter == $page)
								$pagination.= "<li class='active'><a>$counter</a></li>";
							else
								$pagination.= "<li><a href='{$url}$counter'>$counter</a></li>";					
						}
						$pagination.= "<li class='dot'>..</li>";
						$pagination.= "<li><a href='{$url}$lpm1'>$lpm1</a></li>";
						$pagination.= "<li><a href='{$url}$lastpage'>$lastpage</a></li>";		
					}
					else
					{
						$pagination.= "<li><a href='{$url}1'>1</a></li>";
						$pagination.= "<li><a href='{$url}2'>2</a></li>";
						$pagination.= "<li class='dot'>..</li>";
						for ($counter = $lastpage - (2 + ($adjacents * 2)); $counter <= $lastpage; $counter++)
						{
							if ($counter == $page)
								$pagination.= "<li class='active'><a>$counter</a></li>";
							else
								$pagination.= "<li><a href='{$url}$counter'>$counter</a></li>";					
						}
					}
				}
				
				if ($page < $counter - 1){ 
					$pagination.= "<li><a href='{$url}$next'><i class='fa fa-angle-right'></i></a></li>";
					$pagination.= "<li><a href='{$url}$lastpage'><i class='fa fa-angle-double-right'></i></a></li>";
				}else{
					$pagination.= "<li class='disabled'><a><i class='fa fa-angle-right'></i></a></li>";
					$pagination.= "<li class='disabled'><a><i class='fa fa-angle-double-right'></i></a></li>";
				}
				$pagination.= "</ul>\n</nav>\n</div>";		
			}
		
		
			return $pagination;
	}	
	
	

    /**
     * @param $language string
     */
    private function updateLanguage($language)
    {
        setcookie('lang', $language, time() + (10 * 365 * 24 * 60 * 60), COOKIE_PATH);
        redirect();
    }
	
	function is_divisible_by_3($n){
	  $digits = str_split($n);
	  $total = 0;
	  foreach ($digits as $digit) {
		$total += $digit;
	  }
	  if ($total == 3 || ($total % 3 == 0) ){
		return true;
	  }
	  return false;
	}
	function is_divisible_by_2($number){ 
		if($number % 2 == 0){ 
			return true;  
		} 
		else{ 
			return false; 
		} 
	}




	function ajax_login_with_google(){

		$data['name'] = $_POST['name'];
		$data['email'] = $_POST['email'];
		$data['userid'] = $_POST['id'];
	


		$check_user = $this->model('Common_model')->get('user',array('email'=>$_POST['email']));



		 $user = $this->library('User');

		if (count($check_user)>0) {


					echo json_encode(array('status'=>1,
						'email'=>$check_user[0]['email'],
						'password'=>md5($check_user[0]['email'])));
					die();
			
		}else{

		$data["user_type"] = 2;

		if (isset($_POST['shipping_address'])) {
			$data["shipping_address"] = encrypt_text($_POST['shipping_address']);
		}

		$data["slug"] = $this->slugify($_POST['name']);
		$data["bg_imagelocation"] = 'wave.jpg';
		$data["joined"] = date('Y-m-d H:i:s');
		$data["signup_type"] = "google";
		$data['password'] = password_hash(md5($_POST['email']), PASSWORD_DEFAULT);

		$url = $_POST['image'];

		$image_name = time().".jpg";

		$path = 'uploads/admin/users/'.$image_name;

		file_put_contents($path, file_get_contents($url));

		$data['imagelocation'] = $image_name;

		$user_id = $this->model('Common_model')->add('user',$data);

		if ($user_id>0) {

			echo json_encode(array('status'=>1,
						'email'=>$_POST['email'],
						'password'=>md5($_POST['email'])));
			die();
			
		}

		

		}


		echo json_encode(array('status'=>0));


		die();



	}
	
	
	function ajax_login_with_google_app(){

		$input = $this->library('Input'); 
		$data['name'] = $input->get('name');
		$data['email'] =$input->get('email');
		$data['userid'] = $input->get('id');
		$data['firebase_token'] = $input->get('firebase_token');

        $update = $this->model('Common_model')->update('user', [
            'firebase_token' => $input->get('firebase_token')
        ], array('email'=> $input->get('email')));

		$check_user = $this->model('Common_model')->get('user',array('email'=> $input->get('email')));



		if (count($check_user)>0) {


			echo json_encode(array('status'=>1,
				'email'=>$check_user[0]['email'],
				'password'=>md5($check_user[0]['email']),'msg'=>'login successfully..','data'=>$check_user[0]));
			die();
			
		}else{

		$data["user_type"] = 2;
		$data["slug"] = $this->slugify( $input->get('name'));
		$data["bg_imagelocation"] = 'wave.jpg';
		$data["joined"] = date('Y-m-d H:i:s');
		$data["signup_type"] = "google";
		$data['password'] = password_hash(md5($input->get('email')), PASSWORD_DEFAULT);

		$url =  $input->get('image');

		$image_name = time().".jpg";

		$path = 'uploads/admin/users/'.$image_name;

		file_put_contents($path, file_get_contents($url));

		$data['imagelocation'] = $image_name;

		$user_id = $this->model('Common_model')->add('user',$data);
		
		if ($user_id>0) {
			$data = $userModel->getEmail($email);
			echo json_encode(array('status'=>1,
						'email'=> $input->get('email'),
						'password'=>md5( $input->get('email')),
						'data'=>$data,
						'msg'=>'login successfully..',
						
						)
						
						);
			die();
			
		}

		

		}

		//$email = $input->post("email");
		echo json_encode(array('status'=>0,'msg'=>'Invalid login',));


		die();



	}


	function ajax_login_with_facebook(){


		$data['name'] = $_POST['name'];
		$data['email'] = $_POST['email'];
		$data['userid'] = $_POST['id'];
	


		$check_user = $this->model('Common_model')->get('user',array('email'=>$_POST['email']));



		if (count($check_user)>0) {


					echo json_encode(array('status'=>1,
						'email'=>$check_user[0]['email'],
						'password'=>md5($check_user[0]['email'])));
					die();
			
		}else{

		$data["user_type"] = 2;
		if (isset($_POST['shipping_address'])) {
			$data["shipping_address"] = encrypt_text($_POST['shipping_address']);
		}
		$data["slug"] = $this->slugify($_POST['name']);
		$data["bg_imagelocation"] = 'wave.jpg';
		$data["joined"] = date('Y-m-d H:i:s');
		$data["signup_type"] = "facebook";
		$data['password'] = password_hash(md5($_POST['email']), PASSWORD_DEFAULT);

		$url = $_POST['image'];

		$image_name = time().".jpg";

		$path = 'uploads/admin/users/'.$image_name;

		file_put_contents($path, file_get_contents($url));

		$data['imagelocation'] = $image_name;

		$user_id = $this->model('Common_model')->add('user',$data);

		if ($user_id>0) {

			echo json_encode(array('status'=>1,
						'email'=>$_POST['email'],
						'password'=>md5($_POST['email'])));
			die();
			
		}

		

		}


		echo json_encode(array('status'=>0));


		die();



	}
	
	function ajax_login_with_facebook_app(){

		$input = $this->library('Input'); 
		$data['name'] = $input->get('name');
		$data['email'] =$input->get('email');
		$data['userid'] = $input->get('id');
        $data['firebase_token'] = $input->get('firebase_token');


        $update = $this->model('Common_model')->update('user', [
            'firebase_token' => $input->get('firebase_token')
        ], array('email'=> $input->get('email')));

		$check_user = $this->model('Common_model')->get('user',array('email'=> $input->get('email')));



		if (count($check_user)>0) {


			echo json_encode(array('status'=>1,
				'email'=>$check_user[0]['email'],
				'password'=>md5($check_user[0]['email']),'msg'=>'login successfully..','data'=>$check_user[0]));
			die();
			
		}else{

		$data["user_type"] = 2;
		$data["slug"] = $this->slugify( $input->get('name'));
		$data["bg_imagelocation"] = 'wave.jpg';
		$data["joined"] = date('Y-m-d H:i:s');
		$data["signup_type"] = "facebook";
		$data['password'] = password_hash(md5($input->get('email')), PASSWORD_DEFAULT);

		$url =  $input->get('image');

		$image_name = time().".jpg";

		$path = 'uploads/admin/users/'.$image_name;

		file_put_contents($path, file_get_contents($url));

		$data['imagelocation'] = $image_name;

		$user_id = $this->model('Common_model')->add('user',$data);
		
		if ($user_id>0) {
			$data = $userModel->getEmail($email);
			echo json_encode(array('status'=>1,
						'email'=> $input->get('email'),
						'password'=>md5( $input->get('email')),
						'data'=>$data,
						'msg'=>'login successfully..',
						
						)
						
						);
			die();
			
		}

		

		}

		//$email = $input->post("email");
		echo json_encode(array('status'=>0,'msg'=>'Invalid login',));


		die();



	}




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
}