<?php

namespace Database\Factories;
use App\Models\blog_categories;
use Faker\Generator as Faker;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\blog_categories>
 */
class CategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
        //protected $model = App\Models\blog_categories::class;
        protected $model =blog_categories::class;



    public function definition(): array
    {
         return [
            'title' => $this->faker->title,
            'meta_title' => $this->faker->sentence,
            'slug' => $this->faker->slug,
            'content' => $this->faker->paragraphs(23, true),
         ];



    }

}
