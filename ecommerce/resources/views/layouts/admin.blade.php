<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Bootstrap 4 Admin &amp; Dashboard Template">
	<meta name="author" content="Bootlab">

	<?php 
	
	$config = DB::table('configuraciones')
	->first();	
	?>

	<title>PANEL | {{$config->titulo}}</title>

	<style>
		body {
			opacity: 0;
		}
		.hamburger, .hamburger:after, .hamburger:before{
			background: black !important;
		}
	</style>
	<script src="{{asset('js/settings.js')}}"></script>
	<link rel="stylesheet" href="{{asset('css/modern.css')}}">
	<link rel="stylesheet" href="{{asset('css/admin.css')}}">
	
</head>

<body>
	@if(auth()->user()->role == "ADMIN")
		<div class="wrapper">
		<nav id="sidebar" class="sidebar">
			<a class="sidebar-brand" href="{{route('inicio')}}">
                <svg>
                    <use xlink:href="#ion-ios-pulse-strong"></use>
                </svg>
                {{$config->titulo}}
            </a>
			<div class="sidebar-content">
				<div class="sidebar-user" style="background:#b0b0b0; color: white">
					<img src="{{asset('config/'.$config->logo)}}" class="img-fluid  mb-2" alt="Linda Miller" style="width: 80%;"/>
					<div class="font-weight-bold">{{auth()->user()->email}}</div>
					<small>{{auth()->user()->role}}</small>
				</div>

				<ul class="sidebar-nav">
					<li class="sidebar-header">
						MENÚ DE ADMINISTRADOR
					</li>
					<li class="sidebar-item">
						<a class="sidebar-link" href="{{route('dashboard')}}">
							<i class="align-middle mr-2 fas fa-fw fa-chart-line"></i> <span class="align-middle">Estadisticas</span>
						</a>
					</li>
					

					<li class="sidebar-item {{ request()->is('admin/productos') ? 'active' : '' }}">
						<a class="sidebar-link" href="{{route('index.producto')}}">
							<i class="align-middle mr-2 fas fa-fw fa-shopping-bag"></i> <span class="align-middle">Productos</span>
						</a>
					</li>
					<li class="sidebar-item {{ request()->is('admin/usuarios') ? 'active' : '' }}">
						<a class="sidebar-link" href="{{route('mostrar.usuario')}}">
							<i class="align-middle mr-2 fas fa-fw fa-user"></i> <span class="align-middle">Usuarios</span>
						</a>
					</li>
					<li class="sidebar-item {{ request()->is('admin/configuraciones') ? 'active' : '' }}">
						<a class="sidebar-link" href="{{route('config')}}">
							<i class="align-middle mr-2 fas fa-fw fa-cog"></i> <span class="align-middle">Configuraciones</span>
						</a>
					</li>
					<li class="sidebar-item {{ request()->is('admin/ventas/cancelaciones') ? 'active' : '' }}">
						<a class="sidebar-link" href="{{route('cancelaciones')}}">
							<i class="align-middle mr-2 fas fa-fw fa-ban"></i> <span class="align-middle">Cancelaciones</span>
						</a>
					</li>
					<li class="sidebar-item {{ request()->is('admin/ventas') ? 'active' : '' }}" >
						<a class="sidebar-link" href="{{route('ventas.admin')}}">
							<i class="align-middle mr-2 fas fa-fw fa-shopping-cart"></i> <span class="align-middle">Ventas</span>
						</a>
					</li>
					<li class="sidebar-item {{ request()->is('admin/mensajes') ? 'active' : '' }}" >
						<a class="sidebar-link" href="{{route('mensajes')}}">
							<i class="align-middle mr-2 fas fa-fw fa-envelope"></i> <span class="align-middle">Mensajes</span>
						</a>
					</li>
					
				</ul>
			</div>
		</nav>


		@yield('admin')

		</div>
	@else
		<!--div class="w3-card-4 w3-margin" style="width:50%;">
	
			<header class="w3-container w3-blue">
				<h1>¡Acceso denegado!</h1>
			</header>
		
			<div class="w3-container">
				<p>Solo los usuarios administradores pueden accesar a esta parte de la página, por favor regresa a la página de inicio haciendo clic en el siguiente boton.</p>
				<a href="{{route('inicio')}}"><input type="button" value="Regresar"></a>
		</div-->

		<div class="container" style="padding-top: 60px;">
		<div class="custom-column" >        
					<div class="custom-column-header"><i class="fa fa-shield-alt"></i>  ¡Acceso Denegado! <i class="fa fa-shield-alt"></i> </div>
					<div class="custom-column-content">
					<ul class="list-group">
						<li class="list-group-item" style="text-align:center;background-color:#eee"> <strong>Area de administración de la página DealPC Computers</strong></li>
						<li class="list-group-item" > Esta zona de DealPC solo está disponible para los usuarios encargados de la administración de la página y sus componentes, por favor, da clic en el siguiente boton para regresar a la página anterior. Muchas gracias. </li>
						
					</ul>
					</div>
					<div class="custom-column-footer"><button onclick="window.location.href='{{route('inicio')}}';"class="btn btn-danger btn-lg">Regresar a la página principal</button></div>
				</div>
		</div>
	
	@endif

	<script src="{{asset('js/app.js')}}"></script>
	<script src="{{asset('tinymce/tinymce.min.js')}}"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>
	@stack('scripts')
    <script>
        tinymce.init({
          selector: '#editor',
          height : "800px",
          language: 'es',
            plugins: [
            'print preview fullpage paste importcss searchreplace autolink autosave save directionality code visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists wordcount imagetools textpattern noneditable help charmap quickbars emoticons spellchecker mediaembed pageembed linkchecker powerpaste formatpainter casechange'
            ],
            menubar: 'file edit view insert format tools table help',
            toolbar: 'casechange undo redo  bold italic underline strikethrough  fontselect fontsizeselect formatselect alignleft aligncenter alignright alignjustify outdent indent numlist bullist  forecolor backcolor removeformat pagebreak charmap emoticons fullscreen preview save print insertfile image media template link anchor codesample fullpage ltr rtl styleselect pageembed formatpainter',
            
        });
	</script>
	<style>
		.invalid-feedback{
			display: block;
		}
		.custom-column {  
		background-color: #CB3234;
		border: 5px solid #eee;    
		padding: 10px;
		box-sizing: border-box; 
		
		}

		.custom-column-header {
		font-size: 24px;
		background-color: #CB3234;  
		color: white;
		padding: 15px;  
		text-align: center;
		}

		.custom-column-content {
		background-color: #fff;
		border: 2px solid white;  
		padding: 20px;  
		}

		.custom-column-footer {
		background-color: #eee;   
		padding-top: 20px;
		text-align: center;
		padding-bottom: 20px;
		}
	</style>
</body>

</html>