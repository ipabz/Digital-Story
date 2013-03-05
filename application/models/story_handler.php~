<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Story_handler extends CI_Model {

	function __construct() {
		parent::__construct();	
	}
	
	
	
	function top_stories($offset=0,$limit=10,$noLimit=FALSE) {
		
		$limitSql = '';
		
		if (! $noLimit) {
			$limitSql = " LIMIT $offset, $limit";
		}
		
		$sql = "
			SELECT
				COUNT(".VIEWS_TABLE.".story_id) AS num_views,
				".STORIES_TABLE.".*
			FROM
				".VIEWS_TABLE."
			INNER JOIN
				".STORIES_TABLE."
				ON
					".STORIES_TABLE.".stories_id = ".VIEWS_TABLE.".story_id
			GROUP BY
				story_id
			ORDER BY
				num_views DESC
		";
		
		$sql .= $limitSql;
		
		$query = $this->db->query($sql);
		
		if ($query->num_rows() == 0) {
			//return $this->getHymns($offset,$limit);
		}
		
		return $query;
			
	}
	
	function whats_new($offset=0, $limit=10) {

		$this->db->limit($limit,$offset);
		$this->db->order_by('stories_id', 'desc');
		$query = $this->db->get(STORIES_TABLE);
		
		return $query;
		
	}
	
	function get_story($story_id) {
		
		$this->db->where('stories_id', $story_id);
		$query = $this->db->get(STORIES_TABLE);
		
		return $query->row();
		
	}
	
	function view($story_id) {
		
		$data = array(
			'story_id' => $story_id,
			'date_viewed' => date('Y-m-d H:i:s')
		);
		
		$this->db->insert(VIEWS_TABLE, $data);
		
	}
	
	function search($keyword, $offset=0, $limit=10, $noLimit=FALSE) {
		
		$sql = "
			SELECT
				*
			FROM
				".STORIES_TABLE."
			WHERE
				(
					title LIKE '%$keyword' OR
					title LIKE '%$keyword%' OR
					title LIKE '$keyword%'
				) OR
				(
					contents LIKE '%$keyword' OR
					contents LIKE '%$keyword%' OR
					contents LIKE '$keyword%'
				)
		";
		
		if (! $noLimit) {
			$sql .= " LIMIT $offset, $limit	";
		}
		
		$query = $this->db->query($sql);
		
		return $query;
		
	}
	
}

?>