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
     */
    public function run(): void
    {
        //
        User::create([
            'name'=> 'writer_two',
            'email'=> 'writer1996@gmail.com',
            'email_verified_at'=> now(),
            'password'=> 'writer1996',
           // 'password' => Hash::make('writer123'),

        ])->assignRole('writer');

    }
}
