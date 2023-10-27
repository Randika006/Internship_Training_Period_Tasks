<?php

namespace App\Http\Controllers;


use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;

use App\Models\blog_post_comments;

use App\Models\blog_posts;


use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function manageComment(){
        //dd($id);
        $comments = blog_post_comments::where('parent_id', '=', 1)->get();
        $allComments = blog_post_comments::pluck('content','id')->all();
        return view('content.comment-reply.blog-comment-reply',compact('comments','allComments'));

    }

    public function addComment(Request $request){
        /*$this->validate($request, [
            'content' => 'required',
        ]);
        $input = $request->all();
        $input['parent_id'] = empty($input['parent_id']) ? 0 : $input['parent_id'];

        blog_post_comments::create($input);
        return back()->with('success', 'New Category added successfully.');*/

         $blog_post_comments=new blog_post_comments;
         $blog_post_comments->content=$request->input('content');
         return redirect()->back()->with('status','comments added successfully');



    }


}
