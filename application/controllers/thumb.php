<?php

require_once BASEPATH . '/third_party/phpthumb/ThumbLib.inc.php';

class thumb extends MY_Controller{
	public function __construct(){	//{{{
		parent::__construct();
	}	//}}}
	public function index(){	//{{{
		$url = $this->input->get('url');
		try{
			$thumb = PhpThumbFactory::create($url);  
		}
		catch (Exception $e){
			print $e->getMessage();
		}
		$size = $this->input->get('size');
		if(!empty($size)) {
			if(strpos($size, 'x')){
				list($width, $height) = explode('x', $this->input->get('size'));
				$thumb->resize($width, $height);
			}
			else{
				$thumb->resize($size);
			}
		}
		else {
			$thumb->resizePercent(100);
		}
		$thumb->show();
	}	//}}}
}
