<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminDashboardController extends Controller
{
     // Dashboard - Analytics
  public function AdmindashboardAnalytics()
  {
    $pageConfigs = ['pageHeader' => false];

    return view('/content/dashboard/admin-dashboard-analytics', ['pageConfigs' => $pageConfigs]);
  }

}
