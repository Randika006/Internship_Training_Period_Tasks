<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
use Illuminate\Database\Seeder;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
           
         $user =User::create([
            'name'=>'admin',
            'email'=>'admin@gmail.com',
            'email_verified_at'=> now(),
            'password'=>'admin1234',
         ]);

         $user->assignRole('writer', 'admin');
    }
}
