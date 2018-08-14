@extends('layouts.app')
@section('title','Admin Panel')

@section('content')
@include('partials.admin_nav')
    

    <div class="container-fluid" id="admin-dashboard">
        <div class="row">
            <div class="col-2 grey lighten-3"  id="admin-nav"> 
                @include('partials.admin_sidenav')
            </div>
            <div class="col-10 p-5" id="dashboard-content">
                <div class="container mt-2">
                    @if(Session::has('success_message'))
                        <div class="alert alert-success">
                            {{ Session::get('success_message') }}
                        </div>
                    @endif
                    @if(count($errors) > 0)
                        @foreach($errors->all() as $error)
                    <div class="alert alert-danger" role="alert">
                            <p>{{ $error }}</p>
                    </div>
                        @endforeach
                    @endif
                    <div id="dashboard-content" class="row">
                        <div class="col-4">
                            <div class="card">
                                <div class="card-header deep-orange lighten-1 white-text">
                                    <i class="fa fa-users"></i>
                                    Registered Users
                                </div>
                                <div class="card-body d-flex justify-content-between">
                                    <h2 class="text-uppercase">Total</h2>
                                    <p class="h1">{{count($users)}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="card">
                                <div class="card-header deep-orange lighten-1 white-text">
                                    <i class="fa fa-file-powerpoint-o" aria-hidden="true"></i>
                                    Posts
                                </div>
                                <div class="card-body d-flex justify-content-between">
                                    <h2 class="text-uppercase">Total</h2>
                                    <p class="h1">{{count($posts)}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="card">
                                <div class="card-header deep-orange lighten-1 white-text">
                                    <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i>
                                    Categories
                                </div>
                                <div class="card-body d-flex justify-content-between">
                                    <h2 class="text-uppercase">Total</h2>
                                    <p class="h1">{{count($categories)}}</p>
                                </div>
                            </div>
                        </div>
                        <img src="{{asset('img/windoway.jpg')}}" alt="" class="mx-auto d-block mt-5">
                    </div>
                </div>
            </div>
        </div>
    </div>

  
@endsection

{{-- <div class="col-4">
        <div class="card">
            <div class="card-header deep-orange lighten-1 white-text d-flex justify-content-between">
                
                <i class="fa fa-users" id="users-logo"></i>
                <div class="d-block">
                    <span>{{count($users)}}</span>
                    <p>Active Users</p>
                </div>
            </div>
            <div class="card-body p-0 pr-1 pl-1">
                <div class="d-inline">
                    <ul class="nav justify-content-between">
                        <li class="nav-item">
                            <a class="nav-link active blue-text" data-toggle="collapse" href="#users-collapse">See Details</a>
                        </li>
                        <li class="nav-item"> 
                            <span data-toggle="collapse" href="#users-collapse" class="fa fa-plus"></span>
                        </li>
                    </ul>        
                </div>

                <div id="users-collapse" class="collapse container">
                    <table class="table table-striped w-100">
                        <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Created At</th>
                                </tr>
                        </thead>
                        <tbody>
                                @if(count($users)<1)
                                No Users
                            @else
                                @foreach($users as $user)
                                <tr>
                                        <td>{{$user->name}}</td>
                                        <td>{{$user->created_at}}</td>
                                    </tr>
                                @endforeach
                            @endif
                        </tbody>
                    </table>
                    
                </div>
            </div>
        </div>
    </div>
    <div class="col-4">
            <div class="card">
                    <div class="card-header deep-orange lighten-1 white-text d-flex justify-content-between">
                        
                        <i class="fa fa-users" id="users-logo"></i>
                        <div class="d-block">
                            <span>{{count($users)}}</span>
                            <p>Active Users</p>
                        </div>
                    </div>
                    <div class="card-body p-0 pr-1 pl-1">
                        <div class="d-inline">
                            <ul class="nav justify-content-between">
                                <li class="nav-item">
                                    <a class="nav-link active blue-text" data-toggle="collapse" href="#users-collapse">See Details</a>
                                </li>
                                <li class="nav-item"> 
                                    <span data-toggle="collapse" href="#users-collapse" class="fa fa-plus"></span>
                                </li>
                            </ul>        
                        </div>

                        <div id="users-collapse" class="collapse container">
                            <table class="table table-striped w-100">
                                <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Created At</th>
                                        </tr>
                                </thead>
                                <tbody>
                                        @if(count($users)<1)
                                        No Users
                                    @else
                                        @foreach($users as $user)
                                        <tr>
                                                <td>{{$user->name}}</td>
                                                <td>{{$user->created_at}}</td>
                                            </tr>
                                        @endforeach
                                    @endif
                                </tbody>
                            </table>
                            
                        </div>
                    </div>
                </div>
    </div>
    <div class="col-4">
        <div class="card">
            <div class="card-header deep-orange lighten-1 white-text">Featured</div>
            <div class="card-body">
                <h4 class="card-title">Special title treatment</h4>
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a class="btn btn-deep-orange">Go somewhere</a>
            </div>
        </div>  
    </div> --}}