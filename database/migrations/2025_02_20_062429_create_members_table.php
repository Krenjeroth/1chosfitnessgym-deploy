<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('members', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->foreignId('gender_id')
            ->constrained()
            ->onDeleteCascade();
            $table->text('full_name');
            $table->json('name');
            $table->string('age');
            $table->string('email');
            $table->string('phone')->nullable();
            $table->date('date_of_birth');
            $table->text('address')->nullable();
            $table->timestamp('join_date');
            $table->string('emergency_contact_name')->nullable();
            $table->string('emergency_contact_phone')->nullable();
            $table->string('img_path', 1000)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('members');
    }
};
