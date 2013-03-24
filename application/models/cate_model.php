<?php
require_once "base_model.php";
class Cate_Model extends Base_Model {
	function __construct(){	//{{{
		parent::__construct();
	}	//}}}
	public function getCategory($category_id=null){	//获取图片分类{{{
		if($category_id && !empty($category_id)){
			$sql = "select category_id,category_name,status from ".CATEGORY_TABLE." where category_id='{$category_id}'";
			return $this->db->query($sql)->row_array();
		}
		else {
			$sql = "select category_id,category_name,status from ".CATEGORY_TABLE;
			return $this->db->query($sql)->result_array();
		}
	}	//}}}
	public function getCategory_Home(){	//获取status=1的图片分类{{{
		$sql = "select category_id,category_name from ".CATEGORY_TABLE ." where status = '1'";
		return $this->db->query($sql)->result_array();
	}	//}}}
	public function alterCategory($category_id, $params){	//修改分类{{{
		if(!$category_id){
			$this->db
				->insert(CATEGORY_TABLE, $params);	
		}
		else {
			$this->db
				->where(array('category_id' => $category_id))
				->update(CATEGORY_TABLE, $params);	
		}
	}	//}}}
}
