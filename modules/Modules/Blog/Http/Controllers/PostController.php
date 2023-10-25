<?php

namespace Modules\Blog\Http\Controllers;

use Modules\Blog\Entities\blog_posts;

use Modules\Blog\Entities\blog_categories;

use Modules\Blog\Entities\blog_post_categories;


use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;



class PostController extends Controller
{
    //
    public function PostUpload()
    {
        $data=[];
        Cache::put('key', 'value', $seconds = 1);
        $data['categories']= Cache::remember('categories',$seconds, function (){
            return DB::select('select * from blog_categories');
         });

        return view('blog::content.blog-post.post-upload',$data);


    }


    public function store(Request $request)
    {

        Cache::put('key', 'value', $seconds = 1);
        Cache::remember('blog_post_cache_key', $seconds, function () use ($request) {
            $blog_post = new blog_posts;
            $blog_post->title = $request->title;
            if($request->hasfile('photo')){
                $file = $request->file('photo');
                $extention = $file->getClientOriginalExtension();
                $filename = time().'.'.$extention;
                $file->move('storage/blog/',$filename);
                $blog_post->photo=$filename;
             }
            $blog_post->summary = $request->summary;
            $blog_post->content = $request->content;
            $blog_post->save();

            $seconds=1;
            Cache::remember('blog_post_category_cache_key', $seconds, function () use ($blog_post, $request) {
             $blog_post_categories = new blog_post_categories;
             $blog_post_categories->post_id = $blog_post->id;
             $blog_post_categories->category_id = $request->category_id;
             $blog_post_categories->save();
           });

        });
        return redirect()->back()->with('status','Blog photo added successfully');

    }

}
