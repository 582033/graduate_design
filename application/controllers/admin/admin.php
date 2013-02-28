<?php
require_once APPPATH.'controllers/admin/login.php';
class Admin extends Login{
	public function __construct(){
		parent::__construct();
	}
	public function index() {	//{{{
		$this->smarty->view('admin/index.tpl');
	}	//}}}
}
