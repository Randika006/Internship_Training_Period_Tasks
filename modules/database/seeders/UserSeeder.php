<?php

namespace Database\Seeders;
use App\Models\User;


use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;



class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        User::create([
            'name'=> 'user_five',
            'email'=> 'user2003@gmail.com',
            'email_verified_at'=> now(),
            'password'=> 'user2003',
           // 'password' => Hash::make('user123'),

        ])->assignRole('writer', 'user');

    }
}
