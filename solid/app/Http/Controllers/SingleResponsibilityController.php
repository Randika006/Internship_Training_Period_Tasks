<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Models\Customer;
use Faker\Factory as Faker;


use Illuminate\Http\Request;

//Single Responsibility

///class should only have one responsibility and be focused on doing one thing well

class SingleResponsibilityController extends Controller
{
    public function register(){
        $faker = Faker::create();
        foreach(range(1, 5) as $index) {

            Customer::create([
                'name' => $faker->name,
                'address' => $faker->address,
                'email' => $faker->email,
                'tel' => $faker->phoneNumber,
            ]);
        }
     // dd('done');
      echo '<div style="background-color: lightblue; padding: 10px; border: 1px solid #ccc;font-weight: bold;">';
      echo 'Records Insert succesfully';
      echo '</div>';

    }
}





