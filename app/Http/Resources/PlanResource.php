<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PlanResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
          'id' => $this->id,
          'name' => $this->name,
          'description' => $this->description,
          'validity' => $this->validity,
          'status' => $this->status,
          'price' => $this->price,
          'created_at' => $this->created_at,
        ];
    }
}
