
<div class="mod-contents">
	<?php
	
	$stories = $this->story_handler->whats_new(0,3);
	$count = 1;
	
	foreach($stories->result() as $row) {
		?>
        <div>
        	<div class="story-title">
            	<?=$count.'. <a href="'.site_url('stories/read/'.$row->stories_id).'">'.ucwords($row->title).'</a>'?>
            </div>
            <div class="story-content">
            	<?=substr($row->contents, 0, 150)?>...
            </div>
        </div>
        <br />
        <?php
		$count++;
	}
	
	?>
    
    <div align="right">
    	
    	<input class="read-more-button" style="cursor: pointer" type="button" onclick="window.location='<?=site_url('stories')?>'" value="show more" />
       
    </div>
</div>