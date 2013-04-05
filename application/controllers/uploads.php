<?php
class Uploads {
	private $files;
	private $save_path;
	private $file_names;
	private $file_sizes;
	private $file_widths;
	private $file_heights;
	private $file_types;
	private $file_infos;
	public function __construct($files, $save_path){
		$this->files = $files;
		$this->save_path = $save_path;
		$this->count = count($files['name']);
		$this->unique_name = $this->get_unique_name();
		$this->fileAttr2array();
		$this->move_files();
	}
	public function uploads(){	//	{{{
		echo "<pre>";
		print_r($this->files);
	}	//	}}}
	private function fileAttr2array(){	//	{{{
		$files = $this->files;
		$unique_name = $this->unique_name;
		$fileInfos = array();
		for($i=0;$i<$this->count;$i++){
			$fileInfos[$i]['name'] = $unique_name[$i];
			$fileInfos[$i]['size'] = self::get_file_attr($i, 'size');
			$fileInfos[$i]['type'] = self::get_file_attr($i, 'type');
			$fileInfos[$i]['width'] = self::get_file_attr($i, 'width');
			$fileInfos[$i]['height'] = self::get_file_attr($i, 'height');
		}
		$this->file_infos = $fileInfos;
	}	//	}}}
	private function get_file_attr($num, $attr_name){	//	{{{
		$files = $this->files;
		if($attr_name == 'width'){
			$pic_attr = (getimagesize($files['tmp_name'][$num]));
			return $pic_attr[0];
		}
		elseif($attr_name == 'height'){
			$pic_attr = (getimagesize($files['tmp_name'][$num]));
			return $pic_attr[1];
		}
		else{
			return $files[$attr_name][$num];
		}
	}	//	}}}
	private function move_files(){	//	{{{
		$files = $this->files;
		$unique_name = $this->unique_name;
		$file_infos = $this->file_infos;
		if(is_dir($this->save_path)){
			for($i=0;$i<$this->count;$i++){
				exec('mv ' . $files['tmp_name'][$i] . ' ' .$this->save_path . $unique_name[$i]);		
			}
		}
		else {
			exec('mkdir ' . $this->save_path);
			self::move_files();
		}
	}	//	}}}
	private function get_unique_name(){	// 生成对应文件数量的唯一ID作为文件名	{{{
		$files = $this->files;
		$unique_name = array();
		for($i=0;$i<$this->count;$i++){
			$type = explode('.', $files['name'][$i]);
			$unique_id = md5(time() . mt_rand(1,1000000));
			$unique_name[$i] = strtolower($unique_id.'.'.$type[1]);
		}
		return $unique_name;
	}	//	}}}
	public function get_file_infos(){	//	{{{
		return $this->file_infos;
	}	//	}}}
}
