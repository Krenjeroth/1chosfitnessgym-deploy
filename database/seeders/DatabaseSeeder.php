<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory()->create([
            'id' => '7f84b7d8-3e2c-4a1a-96f3-9e8a2b6c74d1',
            'name' => 'Admin',
            'email' => 'admin@1chosfg.com',
        ]);

        User::factory()->create([
            'id' => '162a92ce-b3e7-42d6-9b8f-8bd38f2c2622',
            'name' => 'KrenjerJS',
            'email' => 'krenjerjs@1chosfg.com',
        ]);

        User::factory()->create([
            'id' => 'bceadf0c-87c1-4a42-b2a7-aa2ef35049a6',
            'name' => 'KurbyJO',
            'email' => 'kurbyjo@1chosfg.com',
        ]);

        User::factory()->create([
            'id' => 'dbf58ad0-4c28-4ee8-be60-eaff7438ba01',
            'name' => 'KrislouJN',
            'email' => 'krisloujn@1chosfg.com',
        ]);

        User::factory()->create([
            'id' => '798d842c-a7fb-4524-bf7e-75dcdc5593f2',
            'name' => 'AceSJ',
            'email' => 'acesj@1chosfg.com',
        ]);

        $this->call([
          MunicipalitySeeder::class,
          BarangaySeeder::class,
          RoleSeeder::class,
          PermissionSeeder::class,
          PermissionRoleTableSeeder::class,
          RoleUserTableSeeder::class,
          GenderSeeder::class,
          // MemberSeeder::class,
          // PlanSeeder::class,
          // MembershipSeeder::class,
          // PaymentSeeder::class,
        ]);

    }
}
