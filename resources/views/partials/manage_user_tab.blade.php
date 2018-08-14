<!-- Nav tabs -->
<ul class="nav nav-tabs border-color-gray">
    <li class="nav-item ">
        <a class="nav-link active black-text font-weight-bold" data-toggle="tab" href="#users">Users</a>
    </li>
    <li class="nav-item">
        <a class="nav-link  black-text font-weight-bold" data-toggle="tab" href="#add-user-area" id="add-users">Add User</a>
    </li>
</ul>
    
<!-- Tab panes -->
<div class="tab-content mt-5">
    <div class="tab-pane active" id="users">
        <h1 class="mb-3">Registered Users</h1>
       <table id="users-table" class="display compact hover order-column" style="width:100%">
           <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Member Since</th>
                    <th>Modify</th>
                </tr>
           </thead>
           @if(count($users)<1)
                No data to display
           @else
            <tbody>
                @foreach($users as $user)
                <tr class="row{{$user->id}}">
                    <td class="name{{$user->id}}">{{$user->name}}</td>
                    <td class="email{{$user->id}}">{{$user->email}}</td>
                    <td>{{$user->created_at}}</td>
                    <td>
                    <i class="fa fa-edit edit{{$user->id}}" data-toggle="modal" data-target="#editModal" onclick="editUser({{$user->id}},'{{$user->name}}','{{$user->email}}')"></i>
                    <i class="fa fa-trash delete{{$user->id}}" data-toggle="modal" data-target="#deleteModal" onclick="deleteUser({{$user->id}})"></i>
                    </td>
                </tr>
                @endforeach
            </tbody>
           @endif
       </table>
    </div>
    <!-- Add User -->
    <div class="tab-pane container" id="add-user-area">
        <div class="container">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-6">
                       <h1>Register User</h1>
                        <form action="{{route('adduser')}}" method="POST" id="register-form">
                                @csrf
                                <div class="form-group">
                                    <label for="name">Name:</label>
                                    <input type="text" name="name" id="name" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email:</label>
                                    <input type="email" name="email" id="email" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" name="password" id="password" class="form-control">
                                </div>
                                <input type="submit" value="submit" id="register-btn" class="btn btn-primary">
                            </form>
                </div>
                <div class="col-3"></div>
            </div>
        </div>
    </div>
    <!-- endAddUser -->
    
</div>
<!--Edit-->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold">Edit User</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body mx-3">
                    <input type="hidden" id="uid">
                    <div class="form-inline mb-3">
                        <label for="name">Name: </label>
                    <input type="text" id="uname" name="uname" class="form-control ml-2" required value="{{old('name')}}">
                    </div>
                    <div class="form-inline">
                        <label for="email">Email: </label>
                    <input type="email" id="uemail" name="uemail" class="form-control ml-2" required value="{{old('email')}}">
                    </div>
                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <button class="btn btn-md btn-primary" id="saveEdit" data-dismiss="modal" aria-label="Close">Save</button>
                </div>
            </div>
        </div>
    </div>
<!--Delete-->
<!-- Modal -->

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Are you sure you want to remove this user?</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
              <button type="button" class="btn btn-primary" id="saveDelete" data-dismiss="modal" aria-label="Close">Yes</button>
            </div>
          </div>
        </div>
      </div>
<script>
    $('#users-table').DataTable({
        "pageLength": 5 
    });
</script>