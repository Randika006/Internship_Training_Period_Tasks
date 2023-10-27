<?php

namespace Modules\Blog\Http\Controllers;



use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;


use Modules\Blog\Entities\blog_posts;

use Modules\Blog\Entities\blog_categories;

use Modules\Blog\Entities\blog_post_categories;

use Modules\Blog\Entities\model_has_roles;

use Modules\Blog\Entities\role_has_permission;

use Illuminate\Routing\Controller;

use Illuminate\Contracts\Support\Renderable;


use Illuminate\Http\Request;



use Illuminate\Support\Facades\Auth;

use Illuminate\Support\Facades\Cache;


class BloglistController extends Controller
{
    public function show()
    {
         Cache::put('key', 'value', $seconds = 1);
         $categories= Cache::remember('posts',$seconds, function (){
            return blog_posts::paginate(4);
         });
         return view('blog::dashboard',['categories'=>$categories]);


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
         return redirect()->to('/blog');



     }

}
