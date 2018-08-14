<nav class="navbar navbar-expand-sm grey lighten-3 navbar-static-top">
    <a class="navbar-brand">
    <img src="{{asset('img/windoway-logo.png')}}" alt="" height="30">
        Admin Panel 1.0</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-3" aria-controls="navbarSupportedContent-3" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent-3">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle waves-effect waves-light p-0" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            Welcome, 
            {{Auth::user()->userName()}}
          </a>
          <div class="dropdown-menu dropdown-menu-right dropdown-unique" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item waves-effect waves-light" href="{{route('secretadmin/logout')}}">Logout</a>
          </div>
        </li>
      </ul>
    </div>
  </nav>

  