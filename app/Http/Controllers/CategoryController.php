<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use Session;
class CategoryController extends Controller
{
    public function manageCategory(){
        $categories = Category::all();
        return view('partials.manage_categories_tabs',compact('categories'));
    }
    public function addCategory(Request $request){
        $rules = array(
            'category_name' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048'
        );
        $this->validate($request, $rules);

        $category = new Category;
        
        $category->category = $request->category_name;

        $image = $request->file('image');
        $image_name = time().'.'.$image->getClientOriginalExtension();
        $destination = "img/categoryimages/";
        $image->move($destination,$image_name);
        
        $category->media = $destination.$image_name;
        $category->save();

        Session::flash('success_message', 'Category successfuly added');
       
        return redirect('/secretdashboard');
    }
    public function editCategory(Request $request){
       $cname = $request->cname; 
       $cat = Category::find($request->cid);
       $cat->category = $request->cname;
       $cat->save();
       $data = compact('cname');
       return json_encode($data);
    }
    public function deleteCategory(Request $request){
        $cat = Category::find($request->cid);
        $cat->delete();
    }
}
