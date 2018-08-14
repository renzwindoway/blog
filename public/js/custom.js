$(document).ready(function(){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
  
    console.log('Test Message');
    // Check for active links
    $path = window.location.pathname;
    if($path == '/' || $path == '/home'){
        $('#home').addClass('red');
    }else if($path == '/aboutus'){
        $('#aboutus').addClass('red');
    }

    // Load admin pages
    $('#manage-post').on('click',function(){
        $('#dashboard-content').load('/manage-post');
    });
    $('#manage-users').on('click', function(){
        $('#dashboard-content').load('/manage-users');
    });
    $('#manage-category').on('click', function(){
        $('#dashboard-content').load('/manage-category');
    });

});//endScript

// Toggle Modify Users
function editUser(uid,name,email){
    $('#uid').val(uid);
    $('#uname').val(name);
    $('#uemail').val(email);
    // Save edit
    $('#saveEdit').on('click',function(){
        var uname =  $('#uname').val();
        var uemail =  $('#uemail').val();
        $.ajax({
            url:'/saveuseredit',
            data:{'uid':uid, 'uname':uname, 'uemail':uemail},
            method: 'POST',
        }).done(function(data){
            data = JSON.parse(data);
            $('.name'+uid).html(data.name);
            $('.email'+uid).html(data.email);
        });
    });
}

// Toggle Delete User
function deleteUser(uid){
   $('#saveDelete').on('click',function(){
        $.ajax({
            url:'/deleteuser',
            data:{'uid':uid},
            method:'POST' 
        }).done(function(){
            $('.row'+uid).remove();
        });
   });
}

// Edit Post
function editPost(pid,title,desc,sdesc,caption,author){
    $('#pid').val(pid);
    $('#title').val(title);
    $('#desc').val(desc);
    $('#sDesc').val(sdesc);
    $('#captn').val(caption);
    $('#auth').val(author);
    // Save Edit
    $('#saveEditPost').on('click',function(){
        var pid =  $('#pid').val();
        var title = $('#title').val();
        var desc = $('#desc').val();
        var sdesc = $('#sDesc').val();
        var captn = $('#captn').val();
        var auth = $('#auth').val();
        $.ajax({
           url:'/editpost',
           data:{'pid':pid, 'title':title, 'desc':desc, 'sdesc':sdesc, 'captn':captn, 'auth':auth},
           method:'POST'
        }).done(function(data){
            data = JSON.parse(data);
            $('.title'+pid).html(data.title);
            $('.desc'+pid).html(data.description);
            $('.sDesc'+pid).html(data.sdescription);
            $('.caption'+pid).html(data.caption);
            $('.author'+pid).html(data.author);
        });
    });
}

function deletePost(pid){
    $('#deletePostBtn').on('click',function(){
        $.ajax({
            url:'deletepost',
            data:{'pid':pid},
            method:'POST'
        }).done(function(){
            $('.row'+pid).remove();
        });
    });
}

// Edit Category
function editCategory(cid,cname){
    $('#cid').val(cid);
    $('#cname').val(cname);
    $('#saveEditCategory').on('click',function(){
        var cid = $('#cid').val();
        var cname = $('#cname').val();
        $.ajax({
            url:'/editcategory',
            data:{'cid':cid,'cname':cname},
            method:'POST'
        }).done(function(data){
            data = JSON.parse(data);
            console.log(data.cname);
            $('.name'+cid).html(data.cname);
        });
    });
}
 // Delete Category
 function deleteCategory(cid){
    $('#deleteCategoryBtn').on('click',function(){
        $.ajax({
            url:'deletecategory',
            data:{'cid':cid},
            method:'POST'
        }).done(function(){
            $('.row'+cid).remove();
        });
    });
}

// // When the user scrolls down 20px from the top of the document, show the button
// window.onscroll = function() {scrollFunction()};

// function scrollFunction() {
//     if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
//         document.getElementById("back").style.display = "block";
//     } else {
//         document.getElementById("back").style.display = "none";
//     }
// }

// // When the user clicks on the button, scroll to the top of the document
// function topFunction() {
//     document.body.scrollTop = 0; // For Safari
//     document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
// }