<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use App\Models\blog_categories;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class DemoCron extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'demo:cron';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        info("Cron Job running at ". now());
        $faker= Faker::create();
        foreach(range(1,5) as $index){
         DB::table('blog_categories')->insert([
             'title' => $faker->sentence(5),
             'meta_title' => $faker->sentence(5),
             'slug' => $faker->sentence(5),
             'content'=> $faker->paragraph(4)

         ]);
        }

    }
}
