<?php

namespace App\Http\Requests;

use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Http\FormRequest;

class UpdateMembershipRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return Auth::check();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'member_id' => ['required', 'string', 'exists:members,id'],
            'plan_id' => ['required', 'integer', 'exists:plans,id'],
            'status' => ['required', 'integer', 'max:1'],
            'start_date' => ['required', 'date'],
            'expiry_date' => ['required', 'date'],
        ];
    }

    public function attributes() {
      return [
        'member_id' => 'member',
        'plan_id' => 'plan',
        'status' => 'status',
        'start_date' => 'start date',
        'expiry_date' => 'expiry date',
      ];
    }
}
