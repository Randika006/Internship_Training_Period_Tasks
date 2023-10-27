<?php

namespace Database\Seeders;
use App\Models\User;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;


class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        User::create([
            'name'=> 'admin_two',
            'email'=> 'admin1996@gmail.com',
            'email_verified_at'=> now(),
            'password'=> 'admin1996',
            //'password' =>Hash::make('admin123'),
        ])->assignRole('writer', 'admin');

    }
}
