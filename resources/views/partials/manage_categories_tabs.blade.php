<!-- Nav tabs -->
<ul class="nav nav-tabs border-color-gray">
    <li class="nav-item ">
        <a class="nav-link active black-text font-weight-bold" data-toggle="tab" href="#category">Categories</a>
    </li>
    <li class="nav-item">
        <a class="nav-link  black-text font-weight-bold" data-toggle="tab" href="#addCategory">Add Categories</a>
    </li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <div class="tab-pane active" id="category">
        <h1 class="mb-3">Current Categories</h1>
        <table id="category-table" class="display compact hover order-column" style="width:100%">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Created At</th>
                    <th>Modify</th>
                </tr>
            </thead>
            @if(count($categories)<1)
                No data to display
            @else
                <tbody>
                    @foreach($categories as $category)
                    <tr class="row{{$category->id}}">
                        <td class="name{{$category->id}}">{{$category->category}}</td>
                        <td class="image{{$category->id}}">{{$category->media}}</td>
                        <td>{{$category->created_at}}</td>
                        <td>
                            <i class="fa fa-edit edit{{$category->id}}" data-toggle="modal" data-target="#editModal" onclick="editCategory({{$category->id}},'{{$category->category}}')"></i>
                            <i class="fa fa-trash delete{{$category->id}}" data-toggle="modal" data-target="#deleteModal" onclick="deleteCategory({{$category->id}})"></i>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            @endif
        </table>
    </div>
    <div class="tab-pane container" id="addCategory">
        <div class="container mt-2">
            @if(Session::has('success_msg'))
                <div class="alert alert-success">
                    {{ Session::get('success_message') }}
                </div>
            @endif
            @if(count($errors) > 0)
                @foreach($errors->all() as $error)
                    <p>{{ $error }}</p>
                @endforeach
            @endif
            <h1>Add New Category </h1>
            <form action="{{route('addcategory')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="category_name">Title:</label>
                    <input type="text" id="category_name" name="category_name" class="form-control" required value="{{ old('category_name') }}">
                </div>
                <div class="form-group">
                    <label for="image">Image:</label>
                    <input type="file" id="image" name="image" required class="ml-2">
                </div>
                <button type="submit" class="btn btn-lg p-0 pl-4 btn-primary">Add <i class="fa fa-plus" aria-hidden="true"></i></button>
            </form>
        </div>
    </div>
</div>
<!--Edit-->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Edit Category</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-3">
                <input type="hidden" id="cid">
                <div class="form-inline mb-3">
                    <label for="name">Name: </label>
                <input type="text" id="cname" name="cname" class="form-control ml-2 w-100" required value="{{old('cname')}}">
                </div>
            </div>
            <div class="modal-footer d-flex justify-content-center">
                <button class="btn btn-md btn-primary" id="saveEditCategory" data-dismiss="modal" aria-label="Close">Save</button>
            </div>
        </div>
    </div>
</div>

<!-- Delete -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Are you sure you want to remove this category?</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
              <button type="button" class="btn btn-primary" id="deleteCategoryBtn" data-dismiss="modal" aria-label="Close">Yes</button>
            </div>
          </div>
        </div>
      </div>
<script>
    $('#category-table').DataTable({
        "scrollX": true,
        "pagingType": "full_numbers",
        "pageLength": 3
    });
</script>