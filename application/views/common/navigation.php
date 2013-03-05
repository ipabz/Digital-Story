<div>
&nbsp;&nbsp;&nbsp;&nbsp;
<span id="site-title">Digital Story</span>
<?php
	$menu = $this->uri->segment(1);
	?>
	<a href="<?=site_url()?>" <?=(($menu == '' OR $menu == 'home') ? ' class="selected-menu"' : '')?>>
        <?=lang('home_label')?>
    </a>
   
	
    
    
    <a href="<?=site_url('stories')?>" <?=(($menu == 'stories') ? ' class="selected-menu"' : '')?>>
       <?=lang('stories_label')?>
    </a>
    
    
    
    <div style="float: right;width: 300px;text-align:right; position:relative; top: -7px; margin-right: 80px;">
    	<?=form_open('stories/search')?>
    	<input class="search-field" size="45" type="text" name="search" placeholder="<?=lang('search_field_placeholder_label')?>" />
        <?=form_close()?>
	</div> 
	<div style="width: 300px;text-align:right; position:relative; top: -29px;">
    	<?php
			  	
			$langtemp = directory_map(dirname(BASEPATH).'/application/language', TRUE);
			
			$languages = array();
			
			foreach($langtemp as $language) {
				$languages[$language] = ucfirst($language);	
			}
            
            if ($this->session->userdata('language')) {
                $langC = $this->session->userdata('language');
            } else {
                $langC = 'english';
            }
    		
    		print form_open(current_url(), 'name="lang_form"');
    		print form_dropdown('language', $languages, $langC, 'style="padding: 5px;" onchange="document.lang_form.submit()"');
    		print form_close();
    	?>
    </div>
</div>
