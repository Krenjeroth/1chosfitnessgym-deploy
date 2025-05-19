<?php

namespace Database\Factories;

use App\Models\Membership;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Payment>
 */
class PaymentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'membership_id' => Membership::factory(),
            'amount' => fake()->randomFloat($nbMaxDecimals = 2, $min = 100, $max = 1000),
            'method' => fake()->randomElement($array = array ('Cash','Gcash','Bank Transfer')),
            'status' => fake()->randomElement($array = array ('Pending','Completed', 'Failed')),
        ];
    }
}
