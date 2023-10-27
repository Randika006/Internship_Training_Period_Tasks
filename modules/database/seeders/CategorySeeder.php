<?php

namespace Database\Seeders;

use App\Models\blog_categories;
use Illuminate\Support\Facades\DB;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use Database\Factories\CategoryFactory; // Import the factory

use Faker\Factory as FakerFactory;




class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
       //blog_categories::factory()->count(5)->create();
       // blog_categories::factory()->count(3)->make();
       //CategoryFactory::factory()->count(5)->create();

        //$blog_categories= factory(blog_categories::class)->create();
        // CategoryFactory::new(5)->create();

         $faker = FakerFactory::create();
        foreach(range(1,5) as $index){

         $data = [
             'title' => $faker->title,
             'meta_title' => $faker->sentence,
             'slug' => $faker->slug,
             'content' => $faker->paragraphs(23, true),
         ];
          DB::table('blog_categories')->insert($data);
        }
    }
}
