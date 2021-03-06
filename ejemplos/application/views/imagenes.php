<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ejemplos en Codeigniter</title>

	<link rel="stylesheet" href="<?php echo base_url();?>assets/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-default">
	  	<div class="container-fluid">
	    	<!-- Brand and toggle get grouped for better mobile display -->
	    	<div class="navbar-header">
	      		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        		<span class="sr-only">Toggle navigation</span>
	        		<span class="icon-bar"></span>
	        		<span class="icon-bar"></span>
	        		<span class="icon-bar"></span>
	      		</button>
	      		<a class="navbar-brand" href="<?php echo base_url();?>">Proyecto Ejemplos</a>
	    	</div>

	    	<!-- Collect the nav links, forms, and other content for toggling -->
	    	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      		<ul class="nav navbar-nav">
	        		<li><a href="<?php echo base_url();?>usuarios">Usuarios <span class="sr-only">(current)</span></a></li>
	        		<li><a href="<?php echo base_url();?>clientes">Clientes</a></li>	
	      			<li class="active"><a href="<?php echo base_url();?>imagenes">Imagenes</a></li>	
	      		</ul>
	     	</div><!-- /.navbar-collapse -->
	  	</div><!-- /.container-fluid -->
	</nav>
	<div class="container">
		<div class="row">
			
			<div class="col-md-4 col-md-offset-4">
				<h4>Subir varios archivos</h4>
				<form id="form_subidas" action="<?php echo base_url(); ?>imagenes/subir" method="POST" class="form-horizontal">
					<input type="file" name="archivo[]" multiple>
					<input type="submit" value="Subir">
				</form>
			</div>
			
		</div>
	</div>
	<script src="<?php echo base_url();?>assets/js/jquery-1.11.3.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/bootstrap.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/imagenes.js"></script>
</body>
</html>