<!-- Nav tabs -->
<ul class="nav nav-tabs border-color-gray">
    <li class="nav-item ">
        <a class="nav-link active black-text font-weight-bold" data-toggle="tab" href="#posts">Post</a>
    </li>
    <li class="nav-item">
        <a class="nav-link  black-text font-weight-bold" data-toggle="tab" href="#addPost">Add Post</a>
    </li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <div class="tab-pane active" id="posts">
        <h1 class="mb-3">Posts</h1>
        <table id="posts-table" class="display compact hover order-column" style="width:100%">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>ShortDesc</th>
                        <th>Image</th>
                        <th>Caption</th>
                        <th>Author</th>
                        <th>Created At</th>
                        <th>Modify</th>
                    </tr>
                </thead>
                @if(count($posts)<1)
                    No data to display
                @else
                    <tbody>
                        @foreach($posts as $post)
                        <tr class="row{{$post->id}}">
                            <td class="title{{$post->id}}">{{$post->title}}</td>
                            <td class="desc{{$post->id}}">{{$post->description}}</td>
                            <td class="sDesc{{$post->id}}">{{$post->shortDesc}}</td>
                            <td class="image{{$post->id}}">{{$post->image}}</td>
                            <td class="caption{{$post->id}}">{{$post->caption}}</td>
                            <td class="author{{$post->id}}">{{$post->author}}</td>
                            <td>{{$post->created_at}}</td>
                            <td>
<i class="fa fa-edit edit{{$post->id}}" data-toggle="modal" data-target="#editModal" onclick="editPost({{$post->id}},'{{ preg_replace( '/\r|\n/', '', addslashes($post->title)) }}','{{ preg_replace( '/\r|\n/', '', addslashes($post->description))  }}','{{ preg_replace( '/\r|\n/', '', addslashes($post->shortDesc))}}','{{ preg_replace( '/\r|\n/', '', addslashes($post->caption))}}','{{ preg_replace( '/\r|\n/', '', addslashes($post->author))}}')"></i>
                            <i class="fa fa-trash delete{{$post->id}}" data-toggle="modal" data-target="#deleteModal" onclick="deletePost({{$post->id}})"></i>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                @endif
            </table>
    </div>
    <div class="tab-pane container" id="addPost">
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
            <h1>Add Post</h1>
            <form action="{{route('addpost')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="post_title">Title:</label>
                    <input type="text" id="post_title" name="post_title" class="form-control" required value="{{ old('post_title') }}">
                </div>
                <div class="form-group">
                    <label for="description">Description: </label>
                    <textarea name="description" id="description"  rows="5" class="form-control" value="{{ old('description') }}"></textarea>
                </div>
                <div class="form-inline mb-3">
                    <label for="image">Image:</label>
                    <input type="file" id="image" name="image" required class="ml-2">
                    <label for="caption">Caption:</label>
                    <input type="text" id="caption" name="caption" class="form-control ml-2" value="{{ old('caption') }}">
                </div>
                <div class="form-group">
                    <label for="shortDesc">Short Description: </label>
                    <input type="text" id="shortDesc" name="shortDesc" class="form-control" value="{{ old('name') }}" required>
                </div>
                <div class="form-group">
                    <label for="author">Author: </label>
                    <input type="text" id="author" name="author" class="form-control" required value="{{ old('name') }}">
                </div>
                <div class="form-group mb-3">
                        <label for="auth">Category: </label>
                        <select name="category" id="category" class="form-control w-50">
                            <option>Choose Category</option>
                            @foreach(\App\Category::all() as $category)
                            <option value='{{$category->id}}'
                                @if(old('category') == $category->id)
                                    {{ "selected" }}
                                @endif 
                            >
                                {{$category->category}}
                            </option>
                              @endforeach
                        </select>
                    </div>
                <button type="submit" class="btn btn-lg btn-primary">Publish</button>
            </form>
        </div>
    </div>
</div>
<!--Edit-->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Edit Post</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-3">
                <input type="hidden" id="pid">
                <div class="form-inline mb-3">
                    <label for="title">Title: </label>
                    <input type="text" id="title" name="title" class="form-control ml-2 w-100">
                </div>
                <div class="form-inline mb-3">
                    <label for="desc">Description: </label>
                    <textarea name="desc" id="desc" cols="30" rows="10" class="form-control ml-2 w-100"></textarea>
                </div>
                <div class="form-inline mb-3">
                    <label for="sDesc">Short Description: </label>
                    <textarea name="sDesc" id="sDesc" cols="30" rows="5" class="form-control ml-2 w-100"></textarea>
                </div>
                <div class="form-inline mb-3">
                    <label for="captn">Caption: </label>
                    <input type="text" id="captn" name="captn" class="form-control ml-2 w-100">
                </div>
                <div class="form-inline mb-3">
                    <label for="auth">Author: </label>
                    <input type="text" id="auth" name="auth" class="form-control ml-2 w-100">
                </div>
            </div>
            <div class="modal-footer d-flex justify-content-center">
                <button class="btn btn-md btn-primary" id="saveEditPost" data-dismiss="modal" aria-label="Close">Save</button>
            </div>
        </div>
    </div>
</div>
<!-- Delete -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Are you sure you want to remove this post?</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
              <button type="button" class="btn btn-primary" id="deletePostBtn" data-dismiss="modal" aria-label="Close">Yes</button>
            </div>
          </div>
        </div>
      </div>
<script>
    $('#posts-table').DataTable({
        "scrollX": true,
        "pagingType": "full_numbers",
        "pageLength": 3
    });
</script>