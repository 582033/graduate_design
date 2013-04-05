<?php
require_once APPPATH.'controllers/admin/login.php';
class Admin extends Login{
	public function __construct(){	//{{{
		parent::__construct();
		$this->check_login();//要增加权限认证,继承Login,并在构造函数中加入此方法即可
		$this->load->model('Cate_Model');
		$this->load->model('Topic_Model');
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
			$params = array(
					'category_name' => $this->input->post('category_name'),
					'status' => $this->input->post('status'),
					);
			if (!$category_id){
				$CM->addCategory($params);
			}
			else {
				$CM->alterCategory($category_id, $params);
			}
			redirect('/admin/category');
		}
	}	//}}}
	public function add_category(){	//{{{
		$this->smarty->view('admin/cate_edit.tpl');
	}	//}}}
	public function topic($topic_id=null) {	//专辑管理{{{
		$TM = new Topic_Model();
		if($_SERVER['REQUEST_METHOD'] == 'GET'){
			if(!$topic_id){
				$data = array(
						'topics' => $TM->getTopicList(),
						);
				$this->smarty->view('admin/topic.tpl', $data);
			}
			else {
				$this->topic_edit_view($topic_id);
			}
		}
		if($_SERVER['REQUEST_METHOD'] == 'POST'){
			if($topic_id){
				$this->topic_edit_view($topic_id);
			}
		}
	}	//}}}
	public function picture($topic_id){	//专辑图片管理{{{
		$TM = new Topic_Model();
		$topics = $TM->getTopic($topic_id);
		$data = array(
				'pictures' => $topics['pictures'],
				'topic_id' => $topic_id,
				'cover_id' => $TM->getCoverID($topic_id),
				);
		$this->smarty->view('admin/topic_list.tpl', $data);
	}	//}}}
	public function setcover($topic_id, $picture_id){	//设为封面{{{
		$TM = new Topic_Model();
		$TM->alterTopic($topic_id, array('cover' => $picture_id));
		redirect("/admin/topic/{$topic_id}");
	}	//}}}
	private function topic_edit_view($topic_id){	//{{{
		$TM = new Topic_Model();
		$CM = new Cate_Model();
		if($_SERVER['REQUEST_METHOD'] == 'GET'){
			$data = array(
					'topic' => $TM->getTopic($topic_id),
					'category' => $CM->getCategory(),
					);
			$this->smarty->view('admin/topic_edit.tpl', $data);
		}
		if($_SERVER['REQUEST_METHOD'] == 'POST'){
			if (!$topic_id) return false;
			$params = array(
					'name' => $this->input->post('name'),
					'category_id' => $this->input->post('category_id'),
					'status' => $this->input->post('status'),
					'intro' => $this->input->post('intro'),
					);
			$TM->alterTopic($topic_id, $params);
			redirect('/admin/topic');
		}
	}	//}}}
}
