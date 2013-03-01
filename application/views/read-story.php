<div class="left-container">

    <div class="p1">
       
        <div class="story-read-content" style="background: #fff;">
        	 <div class="story-read-title">
                 <?php
                
                    if ($this->session->userdata('language') == 'tagalog') {
                        print $story->tagalog_title;
                    } else {

                        print $story->english_title;
                    }

                ?>
            </div>
            <div>
            	
                <?php 
                if ($this->session->userdata('language') == 'tagalog' OR $lang == 'fil') {
                    if ($story->tagalog_video) { 
                    ?>
                    <div>
                        <?=lang('watch_label')?>
                    </div>
                    <video controls width="400">
                        <source src="<?=base_url()?>assets/uploads/video/<?=$story->tagalog_video?>" />
                    </video>
                    <?php 
                    } 
                } else {
                    if ($story->english_video) { 
                    ?>
                    <div>
                        <?=lang('watch_label')?>
                    </div>
                    <video controls width="400">
                        <source src="<?=base_url()?>assets/uploads/video/<?=$story->english_video?>" />
                    </video>
                    <div style="padding: 5px;">
                        <a href="<?php print site_url('stories/read/'.$story->stories_id.'/fil'); ?>"><?php print lang('view_tagalog_version'); ?></a>
                    </div>
                    <?php 
                    } 
                }
                ?>
            </div>
            <br />
            <div>
            <?php
                
                if ($this->session->userdata('language') == 'tagalog') {
                    print $story->tagalog_contents;
                } else {

                    print $story->english_contents;
                }

            ?>
            </div>
			<?php 
            if ($this->session->userdata('language') == 'tagalog') {
                if ($story->tagalog_audio) { ?>
                    <div>
                        <?=lang('listen_label')?>
                    </div>
                    <audio id="drums" controls>
                        <source src="<?=base_url()?>assets/uploads/audio/<?=$story->tagalog_audio?>" type="audio/ogg">
                    </audio>
                    <br /><br />
                    <?php 

                } 
            } else {
                if ($story->english_audio) { ?>
                    <div>
                        <?=lang('listen_label')?>
                    </div>
                    <audio id="drums" controls>
                        <source src="<?=base_url()?>assets/uploads/audio/<?=$story->english_audio?>" type="audio/ogg">
                    </audio>
                    <br /><br />
                    <?php 

                } 

            } ?>
        </div>
    </div>
</div>

<div class="right-container">
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
