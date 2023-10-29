<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Customer;
use App\Models\BusinessCustomer;
use Faker\Factory as Faker;

use Illuminate\Http\Request;


//Interface Sergreation

//Large Interfaces should be  spilite into smaller once.

Interface NormalCustomers{
    public function CreateNormalCustomers();
}

Interface BusinessCustomers{
    public function CreateBusinessCustomers();
}



class InterfaceSergretionController extends Controller
{
    //

    public function CreateNormalCustomers(){

        $faker = Faker::create();
        foreach(range(1, 5) as $index) {
          $customer = new Customer;
          $customer->name = $faker->name;
          $customer->address = $faker->address;
          $customer->email = $faker->email;
          $customer->tel = $faker->phoneNumber;
          $customer->country = $faker->country;
          $customer->save();
        }
        echo '<div style="background-color: lightblue; padding: 10px; border: 1px solid #ccc;font-weight: bold;">';
        echo 'Normal customers records Insert succesfully';
        echo '</div>';

    }

    public function CreateBusinessCustomers(){
        $faker = Faker::create();
        foreach(range(1, 5) as $index) {
          $business = new BusinessCustomer;
          $business->brand = $faker->company;
          $business->country = $faker->country;
          $business->email = $faker->email;
          $business->tel = $faker->phoneNumber;
          $business->save();
        }
        echo '<div style="background-color: lightblue; padding: 10px; border: 1px solid #ccc;font-weight: bold;">';
        echo 'Business customers records Insert succesfully';
        echo '</div>';

    }



}
