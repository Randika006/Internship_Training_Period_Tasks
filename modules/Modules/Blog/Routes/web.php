<?php

use Modules\Blog\Http\Controllers\PostController;

use Modules\Blog\Http\Controllers\BloglistController;

use Modules\Blog\Http\Controllers\UpdateController;

use Modules\Blog\Http\Middleware\CheckStatus;

use Modules\Blog\Http\Middleware\DomainBasedCSS;

use Illuminate\Support\Facades\Route;


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

Route::prefix('blog')->group(function() {
    Route::get('/', 'BloglistController@show');

});

Route::get('/about', function () {
    return view('blog::about');
})->middleware('domain');



//Post Upload
Route::get('/post', [ PostController::class,'PostUpload'])->middleware('CheckStatus');

Route::post('/add-post',[ PostController::class,'store']);

//Blog-list-update
Route::get('/edit-post-display', [ UpdateController::class,'show']);
Route::get('edit-post/{id}', [ UpdateController::class,'edit']);
Route::post('update-post/{id}',[ UpdateController::class,'update']);


//Blog-list-delete
Route::get('delete/{id}', [ BloglistController::class,'destroy']);

//Read-more
Route::get('read-more/{id}', [ UpdateController::class,'show']);

//post comments
Route::post('comment/{id}', [ UpdateController::class,'comments']);

//post reply
Route::post('reply-comment/{id}', [ UpdateController::class,'comments']);


?>
