<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class RoleUserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::find('7f84b7d8-3e2c-4a1a-96f3-9e8a2b6c74d1')->roles()->attach(1); // 1 = Admin
        User::find('162a92ce-b3e7-42d6-9b8f-8bd38f2c2622')->roles()->attach(1); // KrenjerJS - 1 = Admin
        User::find('bceadf0c-87c1-4a42-b2a7-aa2ef35049a6')->roles()->attach(1); // KurbyJO - 1 = Admin
        User::find('dbf58ad0-4c28-4ee8-be60-eaff7438ba01')->roles()->attach(1); // KrislouJN - 1 = Admin
        User::find('798d842c-a7fb-4524-bf7e-75dcdc5593f2')->roles()->attach(1); // AceSJ - 1 = Admin
        
    }
}
