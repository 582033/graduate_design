<?php
class MY_Controller extends CI_Controller {
	function MY_Controller() {	//{{{
		parent::__construct();
		$enable_profiler = $this->config->item('enable_profiler');
		$this->output->enable_profiler($enable_profiler);
		$this->load->helper('url_helper');
	}	//}}}
}

