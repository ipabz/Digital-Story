<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {
	
	public function index() {
		
		$this->load->model('story_handler');
		
		$data = array(
			'page_title' => APP_NAME . ''
		);
		
		$this->load->view('common/header', $data);
		$this->load->view('home');
		$this->load->view('common/footer');
		
	}
	
}

/* End of file home.php */
/* Location: ./application/controllers/home.php */