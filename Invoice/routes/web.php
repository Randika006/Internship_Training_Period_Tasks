<?php

use App\Http\Controllers\InvoiceAddController;
use App\Http\Controllers\DeleteController;
use App\Http\Controllers\UpdateController;
use App\Http\Controllers\PrintController;


use Illuminate\Support\Facades\Route;

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

Route::get('/invoice-show', [InvoiceAddController::class,'show']);
Route::post('/invoice-post', [InvoiceAddController::class,'store']);


Route::get('/change', [DeleteController::class,'show']);
Route::get('delete/{id}', [DeleteController::class,'delete']);


Route::get('edit/{id}', [UpdateController::class,'edit']);
Route::post('update-invoice/{id}',[ UpdateController::class,'update']);


Route::get('print/{id}', [PrintController::class,'print']);
Route::get('preview/{id}', [PrintController::class,'preview']);




