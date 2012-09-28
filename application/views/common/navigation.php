<div>
<?php
	$menu = $this->uri->segment(1);
	?>
	<a href="<?=site_url()?>" <?=(($menu == '' OR $menu == 'home') ? ' class="selected-menu"' : '')?>>
        Home
    </a>
   
	
    
    
    <a href="<?=site_url('stories')?>" <?=(($menu == 'stories') ? ' class="selected-menu"' : '')?>>
        Stories
    </a>
    
    <div style="float: right;width: 300px;text-align:right; position:relative; top: -7px;">
    	<?=form_open('stories/search')?>
    	<input class="search-field" size="45" type="text" name="search" placeholder="Search for stories here." />
        <?=form_close()?>
	</div> 
</div>
