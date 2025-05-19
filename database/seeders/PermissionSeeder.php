<?php

namespace Database\Seeders;

use App\Models\Permission;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $permissions = [
            ['title' => 'user_index'],
            ['title' => 'user_store'],
            ['title' => 'user_update'],
            ['title' => 'user_show'],
            ['title' => 'user_destroy'],

            ['title' => 'plan_index'],
            ['title' => 'plan_store'],
            ['title' => 'plan_update'],
            ['title' => 'plan_show'],
            ['title' => 'plan_destroy'],

            ['title' => 'member_index'],
            ['title' => 'member_store'],
            ['title' => 'member_update'],
            ['title' => 'member_show'],
            ['title' => 'member_destroy'],

            ['title' => 'membership_index'],
            ['title' => 'membership_store'],
            ['title' => 'membership_update'],
            ['title' => 'membership_show'],
            ['title' => 'membership_destroy'],

            ['title' => 'role_index'],
            ['title' => 'role_store'],
            ['title' => 'role_update'],
            ['title' => 'role_show'],
            ['title' => 'role_destroy'],

            ['title' => 'permission_index'],
            ['title' => 'permission_store'],
            ['title' => 'permission_update'],
            ['title' => 'permission_show'],
            ['title' => 'permission_destroy'],
        ];

        Permission::insert($permissions);
    }
}
