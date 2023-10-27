<?php

namespace Modules\Blog\Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use Modules\Blog\Entities\Blog;

class BlogTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Model::unguard();

        for($i=0;  i< 5;  $i++){
            Blog::create([
              'title'=>'Title Number '.$i+1,
            ]);
        }

        // $this->call("OthersTableSeeder");
    }
}
