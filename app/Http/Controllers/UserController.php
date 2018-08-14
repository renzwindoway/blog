<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\User;
use Session;
class UserController extends Controller
{
    public function manageUsers(){
        $users = User::orderBy('created_at','desc')->get();
        return view('partials.manage_user_tab',compact('users'));
    }
    public function saveUserEdit(Request $request){
        $name = $request->uname;
        $email = $request->uemail;
        $edit = User::find($request->uid);
        $edit->name = $request->uname;
        $edit->email = $request->uemail;
        $edit->save();
        $data = compact('name','email');
        return json_encode($data);
    }

    public function deleteUser(Request $request){
        $user = User::find($request->uid);
        $user->delete();
    }
    public function addUser(Request $request){
        $rules = array(
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required'
        );
        $this->validate($request, $rules);
        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();

        Session::flash('success_message', 'User "'.$request->name.'" has been added' );

        return redirect('/secretdashboard');
    }
}
