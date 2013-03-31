<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');

require_once BASEPATH . '/third_party/smarty/ThumbLib.inc.php';

class Thumb {
	if(!function_exists(PicThumb){
		funtion PicThumb($img_url, $width, $height){
			$thumb = PhpThumbFactory::create($img_url);  
			$thumb->resize($width, $height);  
			return $thumb->show();
		}
	}
}
