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
	        		<li class="active"><a href="<?php echo base_url();?>usuarios">Usuarios <span class="sr-only">(current)</span></a></li>
	        		<li><a href="<?php echo base_url();?>clientes">Clientes</a></li>	
	      			<li><a href="<?php echo base_url();?>imagenes">Imagenes</a></li>
	      		</ul>
	     	</div><!-- /.navbar-collapse -->
	  	</div><!-- /.container-fluid -->
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<a href="#" class="btn btn-success">Agregar Usuario</a>
			</div>
			<div class="col-md-4">
				<?php echo form_open('usuarios/busqueda'); ?>
					<div class="input-group">
						<?php if ($this->session->userdata("busqueda")) {
							 echo form_input(["type" => "text", "name" => "busqueda", "class" => "form-control", "placeholder" => "Ingrese su busqueda", "value" => $this->session->userdata("busqueda")]);
						}else{
							echo form_input(["type" => "text", "name" => "busqueda", "class" => "form-control", "placeholder" => "Ingrese su busqueda"]); 
						} ?>
						
				      	<span class="input-group-btn">
				      		<?php echo form_button(["type" => "submit", "class" => "btn btn-warning", "content"=>"<span class='glyphicon glyphicon-search'></span>"]);?>				      		
				      	</span>
				    </div>
				<?php echo form_close(); ?>
			</div>
			<div class="col-md-2">
				<?php echo form_open('usuarios/mostrar');?>
					<?php echo form_submit("", "Mostrar Todo", "class= 'btn btn-danger btn-block'");?>
				<?php echo form_close(); ?>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4>Lista de Usuarios</h4>
					</div>
					<div class="panel-body">
						<?php
							$options = array(
			                  '5'  => '5',
			                  '10'    => '10'
			                );

							$selected = "5";
							if ($this->session->userdata("cantidad")) {
								$selected = $this->session->userdata("cantidad");
							}
						?>
						<p><strong>Mostrar por : </strong><?php  echo form_dropdown('cantidad', $options,$selected)?></p>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>#</th>
									<th>Nombres</th>
									<th>Apellidos</th>
									<th>DNI</th>
									<th>Email</th>
									<th>Celular</th>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($usuarios as $usuario) { ?>
									<tr>
										<td><?php echo $usuario->id;?></td>
										<td><?php echo $usuario->nombres;?></td>
										<td><?php echo $usuario->apellidos;?></td>
										<td><?php echo $usuario->dni;?></td>
										<td><?php echo $usuario->email;?></td>
										<td><?php echo $usuario->celular;?></td>
									</tr>
								<?php } ?>
							</tbody>
						</table>
						<div class="text-center">
							<?php echo $this->pagination->create_links(); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="<?php echo base_url();?>assets/js/jquery-1.11.3.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/bootstrap.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/usuarios.js"></script>
</body>
</html>