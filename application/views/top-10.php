
<div class="mod-contents">
	<?php
	
	$stories = $this->story_handler->top_stories(0,3);
	$count = 1;
	
	foreach($stories->result() as $row) {
		?>
        <div>
        	<div class="story-title2">
            	<?=$count.'. <a href="'.site_url('stories/read/'.$row->stories_id).'">'.ucwords($row->title).'</a>'?>
            </div>
            <div class="story-content2">
            	<?=substr($row->contents, 0, 190)?>...
            </div>
        </div>
        <br />
        <?php
		$count++;
	}
	
	?>
    
    <div align="right">
    	<input class="read-more-button" style="cursor: pointer" type="button" onclick="window.location='<?=site_url('stories/most_popular')?>'" value="show more" />
    </div>
</div>