<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Stories extends CI_Controller {
	
	function __construct() {
		parent::__construct();	
		$this->load->model('story_handler');
	}
	
	function index() {
		
		$this->load->library('pagination');
		
		$limit = 15;
		
		$config['base_url'] = site_url('stories/page/');
		$config['total_rows'] = $this->db->count_all(STORIES_TABLE);
		$config['per_page'] = $limit; 
		
		$this->pagination->initialize($config); 
		
		$links = $this->pagination->create_links();
		
		$data = array(
			'page_title' => APP_NAME,
			'links' => $links,
			'limit' => $limit,
			'offset' => 0
		);
		
		$this->load->view('common/header', $data);
		$this->load->view('stories');
		$this->load->view('common/footer');
	}
	
	function page($offset=0) {
		$this->load->library('pagination');
		
		$limit = 15;
		
		$config['base_url'] = site_url('stories/page/');
		$config['total_rows'] = $this->db->count_all(STORIES_TABLE);
		$config['per_page'] = $limit; 
		
		$this->pagination->initialize($config); 
		
		$links = $this->pagination->create_links();
		
		$data = array(
			'page_title' => APP_NAME,
			'links' => $links,
			'limit' => $limit,
			'offset' => $offset
		);
		
		$this->load->view('common/header', $data);
		$this->load->view('stories');
		$this->load->view('common/footer');
	}
	
	function most_popular($offset=0) {
		
		
		$this->load->library('pagination');
		
		$limit = 15;
		
		$config['base_url'] = site_url('stories/most_popular/');
		$config['total_rows'] = $this->story_handler->top_stories($offset,$limit,TRUE)->num_rows();
		$config['per_page'] = $limit; 
		
		$this->pagination->initialize($config); 
		
		$links = $this->pagination->create_links();
		
		$data = array(
			'page_title' => APP_NAME,
			'links' => $links,
			'limit' => $limit,
			'offset' => $offset
		);
		
		$this->load->view('common/header', $data);
		$this->load->view('most-popular-page');
		$this->load->view('common/footer');
	
	}
	
	function read($story_id) {
		
		if ($story_id == '') {
			exit('Forbidden Access!');
		}
		
		$story = $this->story_handler->get_story($story_id);
		
		if (! $story) {
			show_404();
		}
		
		$this->story_handler->view($story_id);
        
         if ($this->session->userdata('language') == 'tagalog') {
            $title = $story->tagalog_title;
        } else {

            $title = $story->english_title;
        }
		
		$data = array(
			'page_title' => APP_NAME . ' | ' . $title,
			'story' => $story
		);
		
		$this->load->view('common/header', $data);
		$this->load->view('read-story');
		$this->load->view('common/footer');
		
	}
	
	function search($keyword="",$offset=0) {
		
		if ($this->input->post('search')) {
			$keyword = $this->input->post('search');
		}
		
		$this->load->library('pagination');
		
		$limit = 15;
		
		$config['base_url'] = site_url('stories/search/'.$keyword.'/');
		$config['total_rows'] = $this->story_handler->search($keyword, $offset, $limit, TRUE)->num_rows();
		$config['per_page'] = $limit; 
		$config['uri_segment'] = 4;
		
		$this->pagination->initialize($config); 
		
		$links = $this->pagination->create_links();
		
		$data = array(
			'page_title' => APP_NAME,
			'query' => $this->story_handler->search($keyword, $offset, $limit),
			'keyword' => $keyword,
			'links' => $links,
			'offset' => $offset
		);
		
		$this->load->view('common/header', $data);
		$this->load->view('search-results');
		$this->load->view('common/footer');
	
	}
	
	function listen($story_id) {
		
		$story = $this->story_handler->get_story($story_id);
		
		if (! $story) {
			//show_404();
		}
		
		$data = array(
			'story' => $story
		);
		
		$this->load->view('listen-audio', $data);
		
	}
	
}

?>