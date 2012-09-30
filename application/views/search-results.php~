<br class="clear" />
<br /><br /><br />
<h2>Search Results for "<?=$keyword?>"</h2>
<div class="mod3">
	<div style="background: #fff; padding: 10px;">
		<?php
		$count = $offset;
        foreach($query->result() as $row) { $count++;
        ?>
        <div>
            <a href="<?=site_url('stories/read/'.$row->stories_id)?>" class="s-title"><?=$count?>. &nbsp;<strong><?=$row->title?></strong></a>
        </div>
        <div>
        	<?=substr($row->contents, 0, 400);?>...
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