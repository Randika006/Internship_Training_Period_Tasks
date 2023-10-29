<?php

namespace Database\Seeders;

use App\Models\Customer;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;


class SingleResponsibilitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        Customer::create([
            'name'=> "Saman",
            'address'=> "Colombo",
            'email'=>"saman1990@gmail.com",
            'tel'=> "077-1234567",
        ]);
    }
}
