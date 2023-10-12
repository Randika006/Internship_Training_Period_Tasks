<?php

namespace App\Http\Controllers;

use App\Models\blog_posts;

use App\Models\blog_categories;

use App\Models\blog_post_categories;


use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

use Illuminate\Support\Facades\Auth;


class PostController extends Controller
{
    //
    public function PostUpload()
    {
        $data=[];
        $data['categories'] = DB::select('select * from blog_categories');
        return view('content.blog-post.post-upload',$data);

    }

    public function store(Request $request)
    {
         //dd($request->category_id);
         $blog_post=new blog_posts;

         $blog_post->title=$request->input('title');

         if ($request->hasFile('photo')) {
                try {
                    $filename = uniqid() . time() . '.' . $request->photo->getClientOriginalExtension();
                    Storage::put('blog' . '/' . $filename, file_get_contents($request->photo));
                    $blog_post->photo= $filename;


                } catch (\Exception $exp) {
                    return ['error' => $exp->getMessage()];
                }

            }

         $blog_post->summary=$request->input('summary');
         $blog_post->content=$request->input('content');


         $blog_post->save();


        $blog_post_categories=new blog_post_categories;
        $blog_post_categories->post_id=$blog_post->id;
        $blog_post_categories->category_id=$request->category_id;
        $blog_post_categories->save();


        return redirect()->back()->with('status','Blog photo added successfully');




    }



}
