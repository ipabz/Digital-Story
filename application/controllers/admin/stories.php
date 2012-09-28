<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Stories extends CI_Controller {

	function __construct() {
		parent::__construct();
		$this->load->library('grocery_CRUD');	
		
		if (! $this->security_handler->secure_page()) {
			redirect('/admin');
		}
	}
	
	function index() {
		
		try{
			/* This is only for the autocompletion */
			$crud = new grocery_CRUD();

			//$crud->set_theme('datatables');
			$crud->set_table(STORIES_TABLE);
			$crud->set_subject('Stories');
			$crud->required_fields('title', 'contents');
			$crud->set_field_upload('audio', 'assets/uploads/audio');
			$crud->set_field_upload('video', 'assets/uploads/video');
			//$crud->callback_upload(array($this, 'upload_callback'));
			$output = $crud->render();
			
			$this->__output($output);
			
		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
		
		//$this->__output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
	}
	
	function upload_callback($files_to_upload,$field_info) {
	
		//-------------------traces log-------------------------------------------------------------------
			
			$files = array();
			foreach($files_to_upload as $key => $val) {
				foreach($val as $k => $v) {
					$temp .= "------> $k = $v";
				}
				$files = $val;
			}
			
			$this->load->helper('file');
			write_file(dirname(__FILE__).'/error.txt', $temp);
			
			
			move_uploaded_file($files, dirname(__FILE__));
	
		if(is_dir($field_info->upload_path))
		{
			return true;
		}
		else
		{
			return 'I am sorry but it seems that the folder that you are trying to upload doesn\'t exist.';    
		}
		
	}
	
	function __output($output = NULL) {
		$this->load->view('admin/header', $output);
		$this->load->view('admin/stories');
		$this->load->view('admin/footer');
	}
	
	
	
}

/* End of file stories.php */
/* Location: ./application/controllers/admin/stories.php */