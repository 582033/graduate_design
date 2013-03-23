<?php
require_once "base_model.php";
class Topic_Model extends Base_Model {
	function __construct(){	//{{{
		parent::__construct();
	}	//}}}
	public function getTopic($topic_id){	//获取图片专辑{{{
		$pics_sql = "select img_url from ".PICTURES_TABLE." where topic_id = {$topic_id}";
		$pics = $this->db->query($pics_sql)->result_array();
		$sql = "select * from ".TOPICS_TABLE." where topic_id = $topic_id";
		$topic = $this->db->query($sql)->row_array();
		$topic = array_merge($topic, array('pictures' => $pics));
		return $topic;
	}	//}}}
	public function getTopicList($category_id=null){	//获取图片专辑{{{
		if ($category_id){
			$category_id = "T.category_id={$category_id} and ";
		}
		else {
			$category_id = '';	
		}
		$sql = "select T.*,P.img_url from ".TOPICS_TABLE." as T join ".PICTURES_TABLE." as P on ({$category_id}T.cover=P.id)";
		return $this->db->query($sql)->result_array();
	}	//}}}
}
