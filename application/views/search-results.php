<br class="clear" />
<br /><br /><br />
<h2><?=lang('search_results_label')?> "<?=$keyword?>"</h2>
<div class="mod3">
	<div style="background: #fff; padding: 10px;">
		<?php
		$count = $offset;
        foreach($query->result() as $row) { $count++;
        ?>
        <div>
            <a href="<?=site_url('stories/read/'.$row->stories_id)?>" class="s-title">
                <?=$count?>. &nbsp;
                <strong>
                    <?php
                    if ($this->session->userdata('language') == 'tagalog') {
                        print $row->tagalog_title;
                    } else {

                        print $row->english_title;
                    }
                    ?>
                </strong>
            </a>
        </div>
        <div>
        	<?php
                
                if ($this->session->userdata('language') == 'tagalog') {
                    print substr($row->tagalog_contents, 0, 300);
                } else {

                    print substr($row->english_contents, 0, 300);
                }

            ?>...
        </div>
        <br />
        <?php
        }
        ?>
        
        <div align="center">
        	<?=$links?>
        </div>
    </div>
</div>