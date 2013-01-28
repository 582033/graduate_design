<?php
class Base extends MY_Controller {
	private $site_name;
	public function __construct(){	//	{{{
		parent::__construct();
		$this->site_name = '千夜 - ';
	}	//	}}}
	private function _get_pageinfo($pageid, $params=NULL) {	//	{{{
		return $page_info = array(
				'pageid' => $pageid,
				'include_cssjs' => $this->_get_include_cssjss($pageid),
				'page_title' => $this->_get_page_title($pageid, $params),
				'page_description' => $this->_get_page_description($pageid, $params),
				'page_keyword' => $this->_get_page_keyword($pageid, $params),
				);
	}	//	}}}
	protected function _get_include_cssjss($pageid) {	//	{{{
		$asset2path = array(
				// css list {{{
				'colorbox.css' => '/sta/css/colorbox.css',
				//}}}
				// js list {{{
				'jquery.js' => '/sta/js/jquery.min.js',
				'jquery.colorbox.js' => '/sta/js/jquery.colorbox.min.js',
				'jquery.json.js' => '/sta/js/jquery.json.min.js',
				// }}}
				);
		$common_css = array(
				'colorbox.css',
				);
		$common_js = array(
				'jquery.js',
				'jquery.colorbox.js',
				'jquery.json.js',
				);
		$pageid2assets = array(
				'index' => array(
					$common_css,
					$common_js,
					),
				);
		$all_lines = array();
		$page_assets = element($pageid, $pageid2assets, array());
		foreach ($page_assets as $assets) {
			if (is_string($assets)) {
				$assets = array($assets);
			}
			foreach ($assets as $asset) {
				$asset_path = $asset2path[$asset];
				if (preg_match('#\.js$#', $asset)) {
					$line = "<script src=\"$asset_path\"></script>";
				}
				else {
					$line = "<link rel=\"stylesheet\" href=\"$asset_path\" />";
				}
				$all_lines[] = $line;
			}
		}
		return $all_lines;
	}	//	}}}
	function _get_page_title($pageid, $params=NULL) {	//	{{{
		$site_name = $this->site_name;
		$title = array();
		if (is_array($params) && ($params != array())) {
			foreach($params as $param){
				$title .= " - ".$param;	
			}
		}
		elseif($params) {
			$title = $params;			
		}
		$page_titles = array(
				'index' => $site_name.'首页',
				);
		$page_title = isset($page_titles[$pageid]) ? $page_titles[$pageid] : '';
		return $page_title;
	}	//	}}}
	function _get_page_description($pageid, $params=NULL) {	//	{{{
		$descriptions = array(
				'index' => '',
				);
		$description = isset($descriptions[$pageid]) ? $descriptions[$pageid] : '';
		return $description;
	}	//	}}}
	function _get_page_keyword($pageid, $params=NULL) {	//	{{{
		$keywords = array(
				'index' => '',
				);
		$keyword = isset($keywords[$pageid]) ? $keywords[$pageid] : '';
		return $keyword;
	}	//	}}}
}
