@extends('layouts.admin')
@section('admin')
<div class="main">
    @include('layouts.nav')
    <main class="content">
        <div class="container-fluid">

            <div class="header">
                <h1 class="header-title">
                    <i class="fas fa-user"></i> Usuarios registrados
                </h1>
                <p class="header-subtitle">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, iste!.</p>
            </div>

            <div class="row">
                @if(Session::has('success'))
                    <div class="col-lg-12 form-group">
                        <div class="alert alert-success alert-outline alert-dismissible" role="alert">
                            <div class="alert-icon">
                                <i class="far fa-fw fa-bell"></i>
                            </div>
                            <div class="alert-message">
                               {{Session::get('success')}}
                            </div>
        
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                    </div>
                @endif
                
                <div class="col-12 col-xl-12">
                    <div class="card">
                        <div class="card-header">
                            
                            <h5 class="card-title">Listado de usuarios</h5>
                            <div class="row">
                                <div class="col-lg-6">
                                    {!! Form::open(array('url'=>'admin/usuarios','method'=>'GET','autocomplete'=>'off','role'=>'search'))!!}
                                    <div class="input-group" id="show_hide_password">
                                        <input class="form-control" type="text" placeholder="Buscar usuario" name="buscar" value="{{$buscar}}">
                                        <div class="input-group-addon">
                                          <button class="btn btn-info"><i class="fas fa-search"></i></button>
                                          <a href="{{route('mostrar.usuario')}}" class="btn btn-primary"><i class="fas fa-undo-alt"></i></a>
                                        </div>
                                    </div>
                                    {{Form::close()}}
                                </div>
                                <!--div class="col-lg-2">
                                    <div class="btn-group">
                                        <button type="button" class="btn mb-1 btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Opciones
                                        </button>
                                        <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 31px, 0px);">
                                            <a class="dropdown-item" href="#"><i class="fas fa-archive"></i> Registrar usuario</a>
                                           
                                        </div>
                                    </div>
                                </div-->
                            </div>
                            
                        </div>
                        <table class="table table-striped table-hover">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Email</th>
                                    <th>Role</th>
                                    <th>Registro</th>
                                    <th>Opciones</th>
                                </tr>
                            </thead>
                            @foreach ($usuarios as $user)
                            <tbody>
                                <tr>
                                    @if($user->name=='')
                                        <td>NO ASIGNADO</td>
                                    @else
                                        <td>{{$user->name}}</td>
                                    @endif
                                    @if($user->fullname=='')
                                        <td>NO ASIGNADO</td>
                                    @else
                                        <td>{{$user->fullname}}</td>
                                    @endif
                                    <td>{{$user->email}}</td>
                                    <td>{{$user->role}}</td>
                                    <td>{{$user->created_at}}</td>
                                    <td>
                                        <div class="btn-group">
											<button type="button" class="btn mb-1 btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-cog"></i>
                                            </button>
											<div class="dropdown-menu">
												<!--a class="dropdown-item" href="#"><i class="fas fa-edit"></i> Editar datos</a>
												<div class="dropdown-divider"></div-->
												<a class="dropdown-item" data-toggle="modal" data-target="#modal_usuario-{{$user->id}}">Eliminar usuario</a>
											</div>
                                        </div>
                                        @include('admin.usuario.modal_usuario')
                                    </td>
                                </tr>
                            </tbody>
                            @endforeach
                        </table>
                    </div>
                </div>
                <div class="col-12 col-xl-12">
                    {{$usuarios->render()}}
                </div>
            </div>

            

        </div>
    </main>
    
</div>
@endsection