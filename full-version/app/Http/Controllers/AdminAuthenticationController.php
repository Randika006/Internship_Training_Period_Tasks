<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;
use \Illuminate\Http\Response;
use DB;


class AdminAuthenticationController extends Controller
{
    //Login basic
    public function admin_login_basic()
    {
        $pageConfigs = ['blankPage' => true];

        return view('/content/authentication/admin-auth-login-basic', ['pageConfigs' => $pageConfigs]);
    }

    public function LoginSystem(Request $req)
    {

        $user= $req ->input('email');
        $pass= $req ->input('password');

        $checkLogin=DB::table('users')->where(['email'=>$user,'password'=>$pass])->get();

        if(count($checkLogin) > 0){
            return redirect()->to('/blog-list');
        }else{
            return redirect()->to('/Login');
        }
    }





}
