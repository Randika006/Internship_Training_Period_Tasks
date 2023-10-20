<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;


use App\Models\blog_posts;

use App\Models\blog_categories;

use App\Models\blog_post_categories;

use App\Models\model_has_roles;

use App\Models\role_has_permission;


use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

use Illuminate\Support\Facades\Cache;


class BloglistController extends Controller
{
    public function show()
    {
       //  $data=[];
       //  $data['categories'] = DB::select('select * from blog_posts');
       //  return view('dashboard',$data);
         //$categories=blog_posts::paginate(5);
         Cache::put('key', 'value', $seconds = 1);
         $categories= Cache::remember('posts',$seconds, function (){
            return blog_posts::paginate(4);
         });
         return view('dashboard',['categories'=>$categories]);


    }

     public function destroy($id){

        $cacheKey = 'blog_post' . $id;
        Cache::put($cacheKey, 'value', $seconds = 1);
        $delete_data= Cache::remember($cacheKey,$seconds, function () use($id){
           return DB::table('blog_posts')
           ->leftJoin('blog_posts_categories','blog_posts.id', '=','blog_posts_categories.post_id')
           ->where('blog_posts.id', $id);

        });
         if($delete_data){
            DB::table('blog_posts_categories')->where('post_id', $id)->delete();
            DB::table('blog_posts')->where('id', $id)->delete();
            Cache::forget($cacheKey);

         }else{
            $data = DB::table('blog_posts')
            ->leftJoin('blog_posts_categories', 'blog_posts.id', '=', 'blog_posts_categories.post_id')
            ->where('blog_posts.id', $id)
            ->get();
              Cache::put($cacheKey, $data, $seconds);
         }
         return redirect()->to('/blog-list');

          /*$data_delete =DB::table('blog_posts')
          ->leftJoin('blog_posts_categories','blog_posts.id', '=','blog_posts_categories.post_id')
          ->where('blog_posts.id', $id);
          DB::table('blog_posts_categories')->where('post_id', $id)->delete();
          $data_delete->delete();*/


     }

}
