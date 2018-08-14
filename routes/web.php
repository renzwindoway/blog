<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/




/*
|-------------------------------
|Public Routes
|-------------------------------
*/
Route::get('/pagenotfound', function(){
    return view('errors.404');
})->name('404');
Route::get('/post/{pid}','PostController@showPostPage')->name('post');
Route::get('/aboutus',function(){
    return view('pages.about');
});
Route::get('/home', 'PostController@showPost')->name('home');
Route::get('/category/{category}/{cid}','PostController@showByCategory')->name('category');  
/*
|------------------------------
|Super Admin & Admin Routes
|------------------------------
*/
// Auth::routes();
// Authentication Routes...
$this->get('secretadmin/login', 'Auth\LoginController@showLoginForm')->name('login');
$this->post('secretadmin/login', 'Auth\LoginController@login');
Route::get('secretadmin/logout', '\App\Http\Controllers\Auth\LoginController@logout')->name('secretadmin/logout');
// Password Reset Routes...
$this->get('admin/password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('password.request');
$this->post('admin/password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('password.email');
$this->get('admin/password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset');
$this->post('admin/password/reset', 'Auth\ResetPasswordController@reset');
 Route::get('/secretdashboard', 'HomeController@showDashboard')->name('secretadmindashboard');
Route::middleware(['authenticatedAdmin'])->group(function(){
    // Retrieve Dashboard
   
    //Posts
    Route::post('/addpost','PostController@addPost')->name('addpost');
    Route::get('/manage-post','PostController@managePost');
    Route::post('/deletepost','PostController@deletePost');
    Route::post('/editpost','PostController@editPost');
    // Categories
    Route::get('/manage-category','CategoryController@manageCategory');
    Route::post('/addcategory','CategoryController@addCategory')->name('addcategory');
    Route::post('/editcategory','CategoryController@editCategory');
    Route::post('/deletecategory','CategoryController@deleteCategory');
    // User Functions
    Route::get('/add-users', 'UserControllerr@showAddUsers');
    Route::post('/saveuseredit','UserController@saveUserEdit');
    Route::post('/deleteuser','UserController@deleteUser');
    Route::post('/adduser','UserController@addUser')->name('adduser');
    //Users
    Route::get('/manage-users','UserController@manageUsers');
   
});




