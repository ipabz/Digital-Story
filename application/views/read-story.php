<div class="left-container">
	<br /><br /><br />
    <div class="p1">
       
        <div class="story-read-content" style="background: #fff;">
        	 <div class="story-read-title">
				<?=$story->title?>
            </div>
            <div>
            	
                <?php if ($story->video) { ?>
                <div>
                	<?=lang('watch_label')?>
                </div>
                <video controls width="400">
                    <source src="<?=base_url()?>assets/uploads/video/<?=$story->video?>" />
                </video>
                <?php } ?>
            </div>
            <br />
            <div>
            <?=$story->contents?>
            </div>
			<?php if ($story->audio) { ?>
            	<div>
                	<?=lang('listen_label')?>
                </div>
                <audio id="drums" controls>
                    <source src="<?=base_url()?>assets/uploads/audio/<?=$story->audio?>" type="audio/ogg">
                </audio>
                <br /><br />
                <?php } ?>
        </div>
    </div>
</div>

<div class="right-container"><br /><br /><br />
	<div class="mod1">
            	<div class="inner-mod1">
                	<div class="mod1-title">
                    	<?=lang('whats_new_label')?>
                    </div>
                    <br />
                    <?php $this->load->view('whats-new'); ?>
                </div>
            </div>
</div>
<br class="clear" />