<?php

namespace App\Http\Controllers;
use Crypt;
use Illuminate\Http\Request;
use App\Post;
use Session;
use App\Category;
use DB;
use SEOMeta;
use OpenGraph;
use Twitter;
use SEO;
class PostController extends Controller
{

    public function showPost(){
        SEOMeta::setTitle('Window blinds, office furniture, foam bricks &amp; artificial grass');
        SEOMeta::setDescription('High quality window blinds, tint, office furniture, foam bricks, artificial grass & foam bricks distributor in the Philippines. Extended warranty covered!');
        SEOMeta::setCanonical('https://www.windoway.com.ph/');

        OpenGraph::setDescription('High quality window blinds, tint, office furniture, foam bricks, artificial grass & foam bricks distributor in the Philippines. Extended warranty covered!');
        OpenGraph::setTitle('Windoway Trading Inc.');
        OpenGraph::setUrl('https://www.windoway.com.ph/');
        OpenGraph::addProperty('type', 'articles');

        Twitter::setTitle('Homepage');
        Twitter::setSite('@windowaytrading');
        // whereDate('created_at', Carbon::today())->
        $posts = Post::orderBy('created_at','desc')->get();
        // $recentPosts = Post::where( DB::raw('MONTH(created_at)'), '=', date('n') )->orderBy('created_at','desc')->limit(3)->get();
        $categories = Category::all();
        $yesterday = date("Y-m-d", strtotime( '-1 days' ) );
        $recentPosts = Post::whereDate('created_at', $yesterday )->get();
        return view('home', compact('posts','recentPosts','categories'));
    }
    public function showPostPage($id){
        $pid= Crypt::decrypt($id);
        $post = Post::find($pid);
        $categories = Category::all();
        $yesterday = date("Y-m-d", strtotime( '-1 days' ) );
        $recentPosts = Post::whereDate('created_at', $yesterday )->get();
        return view('pages.postpage',compact('post','recentPosts','categories'));
    }
    public function showByCategory($category, $id){
        $cid= Crypt::decrypt($id);
        $category = Category::find($cid);
        $posts = Post::where('category_id',$cid)->orderBy('created_at','desc')->get();
        $categories = Category::all();
        $yesterday = date("Y-m-d", strtotime( '-1 days' ) );
        $recentPosts = Post::whereDate('created_at', $yesterday )->get();
        return view('pages.category',compact('posts','categories','recentPosts','category'));
        
    }
    public function managePost(){
        $posts = Post::orderBy('created_at','desc')->get();
        return view('partials.manage_post_tabs',compact('posts'));
    }
    public function addPost(Request $request){
        
        // dd($request->image);
        $rules = array(
            'post_title' => 'required',
            'description' => 'required',
            'caption' => 'required',
            'shortDesc' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'author' => 'required',
            'category' => 'required|numeric'
        );
        $this->validate($request, $rules);

        $post = new Post;
        $post->title = $request->post_title;
        $post->description = $request->description;
        $post->caption = $request->caption;
        $post->shortDesc = $request->shortDesc;
        $post->author = $request->author;
        $post->category_id = $request->category;

        $image = $request->file('image');
        $image_name = time().'.'.$image->getClientOriginalExtension();
        $destination = "img/postimages/";
        $image->move($destination,$image_name);
        
        $post->image = $destination.$image_name;
        $post->save();

        Session::flash('success_message', 'Post has been published.');

        return redirect('/secretdashboard');
    }

    public function deletePost(Request $request){
        $post = Post::find($request->pid);
        $post->delete();
    }
    public function editPost(Request $request){
        $title = $request->title;
        $description = $request->desc;
        $sdescription = $request->sdesc;
        $caption = $request->captn;
        $author = $request->auth;

        $post = Post::find($request->pid);
        $post->title = $title;
        $post->description = $description;
        $post->shortDesc = $sdescription;
        $post->caption = $caption;
        $post->author = $author;

        $post->save();

        $data = compact('title','description','sdescription','caption','author');
        return json_encode($data);
    }
}
