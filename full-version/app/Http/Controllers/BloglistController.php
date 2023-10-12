<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;


use App\Models\blog_posts;

use App\Models\blog_categories;

use App\Models\blog_post_categories;



use Illuminate\Http\Request;

class BloglistController extends Controller
{
    public function show()
    {
        $data=[];
        $data['categories'] = DB::select('select * from blog_posts');
        //dd($data);
        return view('content.blog-list.blog-post-display',$data);

    }

     public function destroy($id){
          $data_delete =DB::table('blog_posts')
          ->leftJoin('blog_posts_categories','blog_posts.id', '=','blog_posts_categories.post_id')
          ->where('blog_posts.id', $id);
          DB::table('blog_posts_categories')->where('post_id', $id)->delete();
          $data_delete->delete();
          return redirect()->to('/blog-list');

     }



}
