<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Customer;
use App\Models\BusinessCustomer;
use Faker\Factory as Faker;

use Illuminate\Http\Request;

/***
 * Dependency Invention
 * The decoupling of software modules, depends on abstractions
 *high-level modules depending on low-level modules,both will depend on abstraction

*/
interface Customers{
    public function CustomerDetails();
}

class NormalCustomers implements Customers{
    public function CustomerDetails(){
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

}

class BusinessCustomers implements Customers{
    public function CustomerDetails(){
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

class DependencyInventionController extends Controller
{
    public function insertNormalCustomers()
    {
        $normalCustomers = new NormalCustomers();
        $normalCustomers->CustomerDetails();
    }

    public function insertBusinessCustomers()
    {
        $businessCustomers = new BusinessCustomers();
        $businessCustomers->CustomerDetails();
    }
}
