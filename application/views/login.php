<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<base href="<?php echo base_url();?>" />
	<title><?php echo $this->config->item('company') . ' | Waploaj ' . $this->config->item('application_version')  . ' | ' .  $this->lang->line('login_login'); ?></title>
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
	<link rel="stylesheet" type="text/css" href="<?php echo 'dist/bootswatch/' . (empty($this->config->item('theme')) ? 'flatly' : $this->config->item('theme')) . '/bootstrap.min.css' ?>"/>
	<!-- start css template tags -->
	<link rel="stylesheet" type="text/css" href="css/login.css"/>
	<!-- end css template tags -->
</head>

<body>
	<div id="logo" align="center"><img src=""></div>

	<div id="login">
		<?php echo form_open('login') ?>
			<div id="container">
				<div align="center" style="color:red"><?php echo validation_errors(); ?></div>

				<div id="login_form">
					<div class="input-group">
						<span class="input-group-addon input-sm"><span class="glyphicon glyphicon-user"></span></span>
						<input class="form-control" placeholder="<?php echo $this->lang->line('login_username')?>" name="username" type="username" size=20 autofocus></input>
					</div>

					<div class="input-group">
						<span class="input-group-addon input-sm"><span class="glyphicon glyphicon-lock"></span></span>
						<input class="form-control" placeholder="<?php echo $this->lang->line('login_password')?>" name="password" type="password" size=20></input>
					</div>

					<?php
					if($this->config->item('gcaptcha_enable'))
					{
						echo '<script src="https://www.google.com/recaptcha/api.js"></script>';
						echo '<div class="g-recaptcha" align="center" data-sitekey="' . $this->config->item('gcaptcha_site_key') . '"></div>';
					}
					?>

					<input class="btn btn-primary btn-block" type="submit" name="loginButton" value="Go"/>
				</div>
			</div>
		<?php echo form_close(); ?>

		<!-- <h1>Waploaj sales software company</h1> -->
		<p>for demostration  english version</p>
		<h2>login credetials</h2>
		<ul>
			<li>username:demoo</li>
			<li>paswword:123456789</li>
		</ul>
		<p>for demostration swahili version </p>
		<h2>login credetials</h2>
		<ul>
			<li>username:demoo2</li>
			<li>paswword:123456789</li>
		</ul>

	</div>
</body>
</html>
