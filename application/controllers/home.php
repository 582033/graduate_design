<?php
require_once 'base.php';
class home extends base{
	public function __construct(){
		parent::__construct();
		$this->categoryOutput();
		$Topic_Model = $this->load->model('Topic_Model');
	}
	public function index($category_id=null) {	//{{{
		$data = array(
				'topic' => $this->getTopicList($category_id),
				);
		$this->smarty->view('content_index.tpl', $data);
	}	//}}}
	public function topic($topic_id){	//{{{
		$data = array(
				'topic' => $this->getTopic($topic_id),
				);
		$this->smarty->view('content_topic.tpl', $data);
	}	//}}}
	private function getTopicList($category_id=null){	//获取专辑列表{{{
		return $this->Topic_Model->getTopicList($category_id);
	}	//}}}
	private function getTopic($topic_id=null){	//获取专辑信息{{{
		return $this->Topic_Model->getTopic($topic_id);
	}	//}}}
}
