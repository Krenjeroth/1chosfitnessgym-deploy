<?php

namespace App\Http\Resources;

use App\Models\Membership;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class MemberResource extends JsonResource
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
          'name' => json_decode($this->name),
          'full_name' => $this->full_name,
          // 'prefix' => $this->prefix,
          // 'first_name' => $this->first_name,
          // 'middle_name' => $this->middle_name,
          // 'last_name' => $this->last_name,
          // 'suffix' => $this->suffix,
          'age' => $this->age,
          'email' => $this->email,
          'phone' => $this->phone,
          'date_of_birth' => $this->date_of_birth,
          'address' => $this->address,
          'join_date' => $this->join_date,
          'emergency_contact_name' => $this->emergency_contact_name,
          'emergency_contact_phone' => $this->emergency_contact_phone,
          'gender' => GenderResource::make($this->whenLoaded('gender')),
          'memberships' => MembershipResource::collection($this->whenLoaded('memberships')),
          'img_path' => $this->img_path ? asset("storage/{$this->img_path}") : null,
        ];
    }
}
