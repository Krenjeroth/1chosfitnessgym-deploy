<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;
class UpdatePlanRequest extends FormRequest
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
            'name' => ['required', 'string', 'max:255'],
            'description' => ['required', 'string', 'max:1000'],
            'validity' => ['required', 'integer', 'min:1', 'max:12'],
            'price' => ['required', 'numeric', 'min:1'],
            'status' => ['required', 'integer', 'max:1'],
        ];
    }

    public function attributes() {
      return [
        'name' => 'plan',
        'description' => 'description',
        'validity' => 'validity',
        'price' => 'price',
        'status' => 'status',
      ];
    }
}
