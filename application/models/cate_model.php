<?php
require_once "base_model.php";
class Cate_Model extends Base_Model {
	function __construct(){	//{{{
		parent::__construct();
	}	//}}}
	public function getCategory(){	//获取图片分类{{{
		$sql = "select category_id,category_name from category";
		return $this->db->query($sql)->result_array();
	}	//}}}
}
