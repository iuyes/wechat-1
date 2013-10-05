<?php

class Wechat_model extends CI_Model {

	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}


	/*
	*	$data 是一个实体
	*/
	public function storeWechatInfo($data)
	{
		$tag = !empty($data) && count($data) != 0;
		if($tag) {
			try {
				$this->db->insert('info',$data);
				echo 'ok';
				flush();
				ob_flush();
			} catch (Exception $e) {
				echo $e->errorMessage();
			}
		}	
	}
}