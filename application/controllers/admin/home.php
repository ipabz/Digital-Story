<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct() {
		parent::__construct();
		
		if (! $this->security_handler->secure_page()) {
			redirect('/admin');
		}
	}
	
	function index() {
		$this->load->view('admin/header');
		$this->load->view('admin/home');
		$this->load->view('admin/footer');
	}
	
	function logout() {
		$this->session->sess_destroy();
		redirect('/admin');	
	}
	
}

/* End of file home.php */
/* Location: ./application/controllers/admin/home.php */