<?php
require_once APPPATH.'controllers/admin/login.php';
class Admin extends Login{
	public function __construct(){	//{{{
		parent::__construct();
		$this->check_login();//要增加权限认证,继承Login,并在构造函数中加入此方法即可
		$this->load->model('Cate_Model');
	}	//}}}
	public function index() {	//登陆后的主页面{{{
		$this->smarty->view('admin/index.tpl');
	}	//}}}
	public function category($category_id=null) {	//类别管理{{{
		$CM = new Cate_Model();
		if($_SERVER['REQUEST_METHOD'] == 'GET'){
			$data = array('category' => $CM->getCategory());
			if(!$category_id){
				$Uri_Port = 'list';
			}
			else {
				$data = $CM->getCategory($category_id);
				$Uri_Port = 'edit';
			}
			$this->smarty->view('admin/cate_'.$Uri_Port.'.tpl', $data);
		}
		if($_SERVER['REQUEST_METHOD'] == 'POST'){
			if (!$category_id) return false;
			$params = array(
					'category_name' => $this->input->post('category_name'),
					'status' => $this->input->post('status'),
					);
			$CM->alterCategory($category_id, $params);
			redirect('/admin/category');
		}
	}	//}}}
	public function topic() {	//专辑管理{{{
		$this->smarty->view('admin/topic.tpl');
	}	//}}}
}
