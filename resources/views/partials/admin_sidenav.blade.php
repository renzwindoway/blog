{{-- SideNav --}}

<ul class="list-unstyled mt-5"> 
    <a class="d-block text-uppercase text-center h2">Dashboard</a>
    <li class="border  nav-link-hover"  data-toggle="link" href="#manage-tracker">
        <a id="manage-tracker" class="d-block blue-text" href="{{url('windowblog-stats-tracker')}}" aria-expanded="false">
            <i class="fa fa-dashboard" aria-hidden="true"></i>
            Stats Tracker
        </a>
    </li>
    <li class="border nav-link-hover">
        <a id="manage-post" class="d-block blue-text">
            <i class="fa fa-file-powerpoint-o" aria-hidden="true"></i>
             Posts
        </a>
    </li>
    <li class="border nav-link-hover">
        <a id="manage-users" class="d-block blue-text">
            <i class="fa fa-users"></i>
            Manage Users
        </a>
    </li>
    <li class="border nav-link-hover">
        <a id="manage-category" class="d-block blue-text">
            <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i>
            Categories
        </a>
    </li>
</ul>
{{-- endSideNav --}}
