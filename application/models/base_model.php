<?php
class Base_Model extends CI_Model {
	function __construct(){	//{{{
		parent::__construct();
		$this->load->database();
	}	//}}}
}
