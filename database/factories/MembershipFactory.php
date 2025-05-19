<?php

namespace Database\Factories;

use App\Models\Plan;
use App\Models\Member;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Membership>
 */
class MembershipFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'member_id' => Member::factory(),
            'plan_id' => Plan::factory(),
            'status' => fake()->randomElement([0, 1]),
            'start_date' => fake()->dateTimeBetween('-1 months', now()),
            'expiry_date' => fake()->dateTimeBetween(now(), '+1 months'),
        ];
    }
}
