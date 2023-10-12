<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
     // Account Settings billing
     public function home_page()
     {
         $breadcrumbs = [['link' => "/", 'name' => "Home"], ['link' => "javascript:void(0)", 'name' => "Account Settings"], ['name' => "Billing & Plans"]];
         return view('/content/pages/home-page', ['breadcrumbs' => $breadcrumbs]);
     }

}
