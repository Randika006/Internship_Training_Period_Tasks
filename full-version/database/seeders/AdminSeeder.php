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
     *
     * @return void
     */
    public function run()
    {
        //
        User::create([
            'name'=> 'admin',
            'email'=> 'admin@gmail.com',
            'email_verified_at'=> now(),
            'password'=> 'admin123',
            //'password' =>Hash::make('admin123'),
        ])->assignRole('writer', 'admin');
    }
}
