<?php

namespace Database\Factories;
use App\Models\blog_categories;

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
    protected $model = App\Models\blog_categories::class;

    public function definition(): array
    {
        return [
            'title' => $this->faker->title,
            'meta_title' => $this->faker->meta_title,
            'slug' => $this->faker->slug,
            'content' => $this->faker->content,
        ];
    }
}
