<?php echo form_open('', array('id' => 'license_config_form', 'enctype' => 'multipart/form-data', 'class' => 'form-horizontal')); ?>
	<div id="config_wrapper">
		<fieldset>
			<?php
			$counter = 0;
			foreach($licenses as $license)
			{
			?>
				<p>permision is here by to use this software under waploaj inc. terms and condition you are not allowed to use this if you didn"t</p>
			<?php
			}
			?>
		</fieldset>
	</div>
<?php echo form_close(); ?>
