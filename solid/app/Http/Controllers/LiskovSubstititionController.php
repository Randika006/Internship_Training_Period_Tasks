<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Customer;
use App\Models\BusinessCustomer;
use Faker\Factory as Faker;


use Illuminate\Http\Request;

class Controller{
    public function insertBusinessCustomers(BusinessCustomer $business){
          $faker = Faker::create();
          $business->brand = $faker->company;
          $business->country = $faker->country;
          $business->email = $faker->email;
          $business->tel = $faker->phoneNumber;
          $business->save();
          return 'Business customer record inserted successfully';
    }

    public function insertNormalCustomers(Customer $customer){
        $faker = Faker::create();
        $customer->name = $faker->name;
        $customer->address = $faker->address;
        $customer->email = $faker->email;
        $customer->tel = $faker->phoneNumber;
        $customer->country = $faker->country;
        $customer->save();
        return 'Normal customer record inserted successfully';
   }
}



class LiskovSubstititionController extends Controller
{
    public function BusinessCustomers(){
        $business = new BusinessCustomer;
        parent::insertBusinessCustomers($business);
    }

    public function NormalCustomers(){
        $customer = new Customer;
        parent::insertNormalCustomers($customer);
    }
}

