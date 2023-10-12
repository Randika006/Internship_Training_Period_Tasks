<?php

namespace Database\Seeders;

use App\Models\User;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class WriterSeeder extends Seeder
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
            'name'=> 'writer',
            'email'=> 'writer@gmail.com',
            'email_verified_at'=> now(),
            'password'=> 'writer123',
           // 'password' => Hash::make('writer123'),

        ])->assignRole('writer');
    }
}
