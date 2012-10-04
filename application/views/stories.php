<div class="left-container">
	
    <br /><br /><br />
    <div class="p1">
       <div class="mod2">
            <div class="inner-mod2">
                <div class="mod2-title">
                    Stories
                </div>
                <br />
                
                <div class="mod-contents">
                    <?php
                
                    $stories = $this->story_handler->whats_new($offset,$limit);
                    $count = $offset + 1;
                    
                    foreach($stories->result() as $row) {
                        ?>
                        <div>
                            <div class="story-title2">
                                <?php
                                if ($this->session->userdata('language') == 'tagalog') {
                                    $title = $row->tagalog_title;
                                } else {

                                    $title = $row->english_title;
                                }
                                ?>
                                <?=$count.'. <a href="'.site_url('stories/read/'.$row->stories_id).'">'.ucwords($title).'</a>'?>
                            </div>
                            
                            <div class="story-content2">
                                <?php
                
                                    if ($this->session->userdata('language') == 'tagalog') {
                                        print substr($row->tagalog_contents, 0, 300);
                                    } else {

                                        print substr($row->english_contents, 0, 300);
                                    }

                                ?>...
                            </div>
                            
                        </div>
                        <br />
                        <?php
                        $count++;
                    }
                    
                    ?>
                    
                </div>
            </div>
       </div>
       <br />
       <div align="center">
       	<?=$links?>
       </div>
    </div>

</div>

<div class="right-container"><br /><br /><br />
	<?php
		$this->load->view('search');
	?>
</div>
<br class="clear" />