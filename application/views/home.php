

<div align="center" style="cursor: pointer;" class="mod3 featured" onclick="window.location='<?=site_url('stories')?>'">
	<img src="<?=base_url()?>images/featured.fw.png" />
</div>
<br />
<br />
<table class="mytable" border="0" cellpadding="5">
	<tr>
    	<td width="50%" valign="top">
        	
            <div class="mod1">
            	<div class="inner-mod1">
                	<div class="mod1-title">
                    	<?=lang('whats_new_label')?>
                    </div>
                    <br />
                    <?php $this->load->view('whats-new'); ?>
                </div>
            </div>
        
        </td>
        <td width="50%" valign="top">
        	<div class="mod2">
            	<div class="inner-mod2">
                	<div class="mod2-title">
                    	<?=lang('most_popular_label')?>
                    </div>
                    <br />
                    <?php $this->load->view('top-10'); ?>
                </div>
            </div>
        </td>
    </tr>
</table>
<br />
