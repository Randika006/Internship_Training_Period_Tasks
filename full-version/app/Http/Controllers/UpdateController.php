<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;


use App\Models\blog_posts;

use App\Models\blog_categories;

use App\Models\blog_post_categories;

use App\Models\blog_post_comments;

use Illuminate\Http\Request;

class UpdateController extends Controller
{
    public function show(Request $request,$id)
    {
        //show more post details
        $blog_post = blog_posts::findOrFail($id);

        $comments=blog_post_comments::where('post_id', $id)->get();

        $reply_comments=blog_post_comments::select('id')->where('post_id',$id)->get();

        //$reply_comments=blog_post_comments::where('parent_id','=',0)->get();
        //$all_comments=blog_post_comments::pulk('content','id')->all();

        return view('content.blog-details.show-blog-details', compact('blog_post','comments','reply_comments'));
    }




      public function comments(Request $request,$id){
          /*$blog_post=new blog_posts;
          $id=$blog_post->id;
          $blog_post_comments=new blog_post_comments;
          $blog_post_comments->post_id=$post_id;
          $blog_post_comments->content=$request->input('content');
          $blog_post_comments->save();*/

          //$blog_post=new blog_posts;
          //$post_id=$blog_post->id;

          //$blog_post=new blog_posts;
          //$post_id=$blog_post->id;

          //$comment_id=blog_post_comments::select('id')->where('post_id',$id)->get();
          //dd($comment_id);



          $blog_post_comments=new blog_post_comments;
          $blog_post_comments->post_id=$id;
          $blog_post_comments->parent_id=$request->input('parent_id');
          $blog_post_comments->content=$request->input('content');
          $blog_post_comments->save();

          return redirect()->back()->with('status','comments added successfully');
      }


     public function edit($id){

        $blog_post = blog_posts::find($id);

        //$categories = blog_categories::all();
        //dd($categories);
        $select_categories = blog_categories::select('id','title')->where('id',$id)->get();
        $categories = blog_categories::all();
        return view('content.blog-update.post-blog-update', compact('blog_post', 'categories','select_categories'));
     }


      public function update(Request $request , $id){
         //dd($request->all());
         //dd($id);
         blog_posts::where('id',$id)->update(['title'=>$request->title,'summary'=>$request->summary,'content'=>$request->content]);
         $post_id=$request->id;
         blog_post_categories::where('id',$post_id)->update(['category_id'=>$request->category_id]);



         /************************Update a picture***************************************************/
          $blog_post=blog_posts::find($id);
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
           $blog_post->update();
           return redirect()->back()->with('status','Blog post updated successfully');

        /********************************************************************************************/

      }



}
