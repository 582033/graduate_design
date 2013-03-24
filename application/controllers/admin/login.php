<?php
require_once 'user.php';
class Login extends User {
	private $redirect_url = '/admin/login/';
	private $user_action;
	public function __construct() {	//	{{{
		parent::__construct();
		$this->user_action = new User();
	}	//	}}}

	public function index(){	//{{{
		if($_SERVER['REQUEST_METHOD'] == 'POST'){
			$username = $this->input->post('username');
			$passwd = $this->input->post('passwd');	
			$this->user_action->check_user($username, $passwd);
			redirect($this->redirect_url);	
		}
		else {
			$data = array();
			session_start();
			$this->user_root_login($this->input->get('user'));
			if (isset($_SESSION['username'])) {
				$data['username'] = $_SESSION['username'];
			}
			$this->smarty->view('admin/login.tpl', $data);
		}
	}	//}}}

	public function logout(){	//退出登陆{{{
		$this->user_action->user_logout($this->redirect_url);
	}	//}}}

	public function check_login(){	//用户权限认证{{{
		$username = $this->user_action->check_session($this->redirect_url);
		$this->smarty->assign('username', $username);
	}	//}}}

	private function user_root_login($username){	//使用root用户登陆{{{
		$this->user_action->user_root($username, '/admin/login');
	}	//}}}
}
