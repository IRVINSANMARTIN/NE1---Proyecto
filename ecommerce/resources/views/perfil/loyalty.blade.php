@extends('layouts.users')
@section('user-content')
<main class="main">
    <div class="container">
        <div class="row mt-4 mb-4">
            <div class="col-lg-9 order-lg-last dashboard-content">
                <h2>Consulta tus Loyalty Points</h2>
                <table class="table table-responsive table-striped">
                    <thead>
                        <tr>
                            <th>SALDO ACTUAL</th>
                        </tr>
                    </thead>
                    <tbody>

                        <tr>
                        @foreach ($usuario as $user)
                            <td href="{{route('loyalty')}}">${{$user->credit}}</td>
                        @endforeach
                        </tr>
       
                    </tbody>
                </table>
                <h3>¡Recuerda que puedes usar tus Loyalty Points Acumulados para realizar compras en nuestro sitio!</h3>
            </div>
            <aside class="sidebar col-lg-3">
                <div class="widget widget-dashboard">
                    <h3 class="widget-title">Cuenta</h3>

                    <ul class="list">
                        <li><a href="{{route('cuenta')}}" style="background-color: #eee;"><i class="icon icon-user"></i> Mi perfíl</a></li>
                        <li><a href="{{route('direccion')}}"><i class="icon icon-post"></i> Direcciones</a></li>
                        <li class="active"><a style="background-color: #eee;"><i class="fas fa-credit-card"></i> Mis Loyalty Points</a></li>
                    </ul>
                </div><!-- End .widget -->
            </aside><!-- End .col-lg-3 -->
        </div>
    </div>
</main>

@endsection