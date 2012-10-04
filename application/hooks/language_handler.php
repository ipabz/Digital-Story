<?php 

class Language_handler {
	
	function __construct() {
		$this->CI =& get_instance();
	}
	
	function change() {
				
				if ($this->CI->input->post('language')) {
					$this->CI->session->set_userdata('language', $this->CI->input->post('language'));
				}			
				
				
				$sessionLang = $this->CI->session->userdata('language');
				
				if ($sessionLang == '') {
					$lang = 'english';	
				} else {
					$lang = $sessionLang;
				}			
				
				$this->CI->config->set_item('language', $lang);
				
				$this->CI->lang->load('global', $lang);
		
	}	
	
}

?>