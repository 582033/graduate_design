<?php
class thumb {
	public function __construct(){
		$this->load->library('thumb');
	}

	public function index(){
		echo $this->PicThumb(); 
	}
}
