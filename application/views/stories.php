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
                                <?=$count.'. <a href="'.site_url('stories/read/'.$row->stories_id).'">'.ucwords($row->title).'</a>'?>
                            </div>
                            
                            <div class="story-content2">
                                <?=substr($row->contents, 0, 300)?>...
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