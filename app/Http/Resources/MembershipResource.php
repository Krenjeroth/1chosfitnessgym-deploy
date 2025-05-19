<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class MembershipResource extends JsonResource
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
          'member' => MemberResource::make($this->whenLoaded('member')),
          'plan' => PlanResource::make($this->whenLoaded('plan')),
          'status' => $this->status,
          'start_date' => $this->start_date,
          'expiry_date' => $this->expiry_date,
        ];
    }
}
