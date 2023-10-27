<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notifications\UserFollowNotification;
use App\Models\User;
use Illuminate\Support\Facades\Auth;


class HomeController extends Controller
{
    public function index(){
        return view('welcome');
    }

    public function notify(){

        if(auth()->user()){
          //$user=User::first();
            $user=User::whereId(Auth::user()->id)->first();


          auth()->user()->notify(new UserFollowNotification($user));
        }
        //dd('done');
        return redirect()->to('/dashboard');

    }

    public function markasred($id){
       if($id){
         auth()->user()->unreadNotifications->where('id',$id)->markAsRead();
       }
       //return back();

       return redirect()->to('/dashboard');
    }
}
