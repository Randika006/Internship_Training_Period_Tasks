<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SingleResponsibilityController;
use App\Http\Controllers\OpenClosedController;

use App\Http\Controllers\LiskovSubstititionController;

use App\Http\Controllers\InterfaceSergretionController;

use App\Http\Controllers\DependencyInventionController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/add',[ SingleResponsibilityController::class,'register']);
Route::get('/OpenClosed',[ OpenClosedController::class,'AddCountry']);

Route::get('/business',[ LiskovSubstititionController::class,'insertBusinessCustomers']);
Route::get('/normal',[ LiskovSubstititionController::class,'insertNormalCustomers']);

Route::get('/normal-customer',[ InterfaceSergretionController::class,'CreateNormalCustomers']);
Route::get('/business-customer',[ InterfaceSergretionController::class,'CreateBusinessCustomers']);

Route::get('/insert-normal-customers', [DependencyInventionController::class,'insertNormalCustomers']);
Route::get('/insert-business-customers', [DependencyInventionController::class,'insertBusinessCustomers']);





