<?php
require_once "base_model.php";
class Topic_Model extends Base_Model {
	function __construct(){	//{{{
		parent::__construct();
	}	//}}}
	public function getTopic($topic_id){	//获取图片专辑{{{
		$pics_sql = "select id,img_url,status from ".PICTURES_TABLE." where topic_id = {$topic_id} order by id desc";
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
		$sql = "select T.*,P.img_url from ".TOPICS_TABLE." as T left join ".PICTURES_TABLE." as P on ({$category_id}T.cover=P.id) order by T.topic_id desc";
		return $this->db->query($sql)->result_array();
	}	//}}}
	public function getCoverID($topic_id){	//获取封面ID{{{
		$sql = "select cover from ".TOPICS_TABLE." where topic_id = {$topic_id}";
		$result = $this->db->query($sql)->row_array();
		return $result['cover'];
	}	//}}}
	public function alterTopic($topic_id, $params){	//修改专辑信息{{{
		if(empty($topic_id) || !is_array($params)) return false;
		$this->db
			->where(array('topic_id' => $topic_id))
			->update(TOPICS_TABLE, $params);
	}	//}}}
	public function addTopic($params){	//新增专辑信息{{{
		if(!is_array($params)) return false;
		$this->db
			->insert(TOPICS_TABLE, $params);
	}	//}}}
	public function getPicture($pic_id){	//获取单张图片信息	{{{
		$sql = "select id,img_url,status from ".PICTURES_TABLE." where id = '{$pic_id}'";
		$result = $this->db->query($sql)->row_array();
		return $result;
	}	//}}}
	public function addPicture($params){	//新增图片{{{
		if(!is_array($params)) return false;
		$this->db
			->insert(PICTURES_TABLE, $params);
	}	//}}}
	public function alterPicture($pic_id, $params){	//修改专辑信息{{{
		if(empty($pic_id) || !is_array($params)) return false;
		$this->db
			->where(array('id' => $pic_id))
			->update(PICTURES_TABLE, $params);
	}	//}}}

}
