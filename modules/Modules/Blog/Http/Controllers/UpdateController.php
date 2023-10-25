<?php

namespace Modules\Blog\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Validator;

use Modules\Blog\Entities\blog_posts;

use Modules\Blog\Entities\blog_categories;

use Modules\Blog\Entities\blog_post_categories;

use Modules\Blog\Entities\blog_post_comments;

use Illuminate\Http\Request;

class UpdateController extends Controller
{
    public function show(Request $request,$id)
    {

        Cache::put('key', 'value', $seconds = 1);
        $blog_post= Cache::remember($id,$seconds, function () use ($id){
            return blog_posts::findOrFail($id);
        });

        $comments=blog_post_comments::where('post_id', $id)->get();
        $reply_comments=blog_post_comments::select('id')->where('post_id',$id)->get();

        //$reply_comments=blog_post_comments::where('parent_id','=',0)->get();
        //$all_comments=blog_post_comments::pulk('content','id')->all();

        return view('blog::content.blog-details.show-blog-details', compact('blog_post','comments','reply_comments'));


    }


    public function comments(Request $request,$id){
        $request->validate([
            'content' => 'required',
        ]);

        Cache::put('key', 'value', $seconds = 1);
        Cache::remember('blog_post_update_cache_key', $seconds, function () use ($request,$id) {
          $blog_post_comments=new blog_post_comments;
          $blog_post_comments->post_id=$id;
          $blog_post_comments->parent_id=$request->input('parent_id');
          $blog_post_comments->content=$request->input('content');
          $blog_post_comments->save();
        });
          return redirect()->back()->with('status','comments added successfully');
    }


     public function edit($id){

        Cache::put('key', 'value', $seconds = 1);
        $blog_post= Cache::remember($id,$seconds, function () use ($id){
            return blog_posts::find($id);
        });

        $select_categories = blog_categories::select('id','title')->where('id',$id)->get();
        $categories = blog_categories::all();
        return view('blog::content.blog-update.post-blog-update', compact('blog_post', 'categories','select_categories'));

    }


      public function update(Request $request , $id){
         Cache::put('key', 'value', $seconds = 1);
         Cache::remember('blog_post_update_cache_key', $seconds, function () use ($request,$id) {
            $blog_post = blog_posts::find($id);
            $blog_post->title = $request->title;
             if($request->hasfile('photo')){

                $destination='storage/blog/'.$blog_post->photo;
                if(File::exists($destination)){

                   File::delete($destination);

                }
                $file = $request->file('photo');
                $extention = $file->getClientOriginalExtension();
                $filename = time().'.'.$extention;
                $file->move('storage/blog/',$filename);
                $blog_post->photo=$filename;

              }
               $blog_post->summary = $request->summary;
               $blog_post->content = $request->content;
               $blog_post->update();

             $seconds=1;
             Cache::remember('blog_post_category_update_cache_key', $seconds, function () use ($blog_post, $request) {
              $blog_post_categories = new blog_post_categories;
              $blog_post_categories->post_id = $blog_post->id;
              $blog_post_categories->category_id = $request->category_id;
              $blog_post_categories->update();
            });

         });
         return redirect()->back()->with('status','Blog post updated successfully');


    }



}
