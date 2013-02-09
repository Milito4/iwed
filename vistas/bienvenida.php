<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="utf-8">
		<title>IWEB - Inventario Web Experimentación Denticulados</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">

		<!-- Le styles -->
		<link href="css/bootstrap.css" rel="stylesheet">
		<style>
			body {
				background-color: #EEEEEE;
				padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
				padding-right:5px;
				padding-left:5px;
			}
			.form-signin {
      
        padding: 19px 29px 29px;
        
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

		</style>
		<link href="css/bootstrap-responsive.css" rel="stylesheet">
		<!-- Fav and touch icons -->
		<link rel="shortcut icon" href="ico/favicon.ico">
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
	</head>
	<body>

		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="#">IWED</a>
					<ul class="nav pull-right">
						<li>
							<a href="#">Sobre nosotros</a>
						</li>
						<li>
							<a href="#">Contacto</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row-fluid">
				<div class="span12">
					  <!-- Main hero unit for a primary marketing message or call to action -->
      
        <h1></h1>
        
        
      </div>

					<ul class="thumbnails">
						<li class="span8">
							
								<h1>Inventario Web Experimentación Denticulados</h1>
								<p>
									Use this document as a way to quick start any new project.
									<br>
									All you get is this message and a barebones HTML document.
								</p>
								<p><a class="btn btn-primary btn-large">Consultar &raquo;</a></p>
						
						</li>

						<li class="span4">
						
								<form class="form-signin" method="post" action="?controlador=index"\>
									<h2 class="form-signin-heading">Iniciar sesión</h2>
									<input title="Email" name="email" type="email" required="true" class="input-block-level" placeholder="Email address">
									<input title="Pass" name="pass" type="password" required="true" class="input-block-level" placeholder="Password">
									<label class="checkbox">
										<input title="Recordar contraseña" type="checkbox" value="remember-me">
										Recordar contraseña </label>
									<?php
									if (!empty($vars['errorlogin'])) {
            							if ($vars['errorlogin'] == true)
                							print("<div class=\"alert alert-error\">
  												<h4>Error</h4>
  												Contraseña o e-mail incorrectos
											</div>");
        								}
									?>
									<button class="btn btn-large btn-primary" title="Iniciar sesión" type="submit">
										Iniciar sesión
									</button>
								</form>
							
						</li>
					</ul>
				</div>
			</div>
		</div>
	
		<!-- /container -->

		<!-- Le javascript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap-transition.js"></script>
		<script src="js/bootstrap-alert.js"></script>
		<script src="js/bootstrap-modal.js"></script>
		<script src="js/bootstrap-dropdown.js"></script>
		<script src="js/bootstrap-scrollspy.js"></script>
		<script src="js/bootstrap-tab.js"></script>
		<script src="js/bootstrap-tooltip.js"></script>
		<script src="js/bootstrap-popover.js"></script>
		<script src="js/bootstrap-button.js"></script>
		<script src="js/bootstrap-collapse.js"></script>
		<script src="js/bootstrap-carousel.js"></script>
		<script src="js/bootstrap-typeahead.js"></script>
	</body>
	<footer>
		<div class="navbar-text navbar-inverse" style="padding:5px;">
			<div class="navbar-inner">
        <p class="muted">IWEB - Inventario Web Experimentación Denticulados</p>
        </div>
    </div>
	</footer>
</html>
