<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Member>
 */
class MemberFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $gender = fake()->randomElement(['male', 'female']);
        $suffix = fake()->randomElement(['JR', 'SR', 'II', 'III']);
        return [
            'gender_id' => fake()->randomElement([1, 2]),
            'full_name' => fake()->name($gender),
            'name' => json_encode([
              fake()->randomElement([
                'prefix' => fake()->title($gender),
                'firstname' => fake()->firstName($gender),
                'middlename' => fake()->lastName(),
                'lastname' => fake()->lastName(),
                'suffix' => $suffix,
              ])
            ]),
            'age' => fake()->numberBetween(18, 70),
            'email' => fake()->unique()->safeEmail(),
            'phone' => fake()->phoneNumber(),
            'date_of_birth' => fake()->dateTimeBetween('-60 years', '-18 years'),
            'address' => fake()->address(),
            'join_date' => fake()->dateTimeBetween('-1 months', now()),
            'emergency_contact_name' => fake()->name($gender),
            'emergency_contact_phone' => fake()->phoneNumber(),
            'created_at' => fake()->dateTime(),
            'updated_at' => fake()->dateTime(),
        ];
    }
}
