<?php

namespace App\Http\Requests;

use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Http\FormRequest;

class UpdateMemberRequest extends FormRequest
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
            'prefix' => ['string'],
            'firstname' => ['required', 'string', 'min:3', 'max:50'],
            'middlename' => ['required', 'string', 'min:3', 'max:50'],
            'lastname' => ['required', 'string', 'min:3', 'max:50'],
            'suffix' => ['string'],
            'name' => ['required', 'json', 'max:1000'],
            'full_name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:members,email,' . $this->member->id],
            'phone' => ['required', 'string', 'min:7', 'max:13', 'unique:members,phone,' . $this->member->id],
            'gender_id' => ['required', 'integer', 'exists:genders,id'],
            'date_of_birth' => ['required', 'date'],
            'age' => ['required', 'integer'],
            'join_date' => ['required', 'date'],
            'address' => ['required', 'string', 'max:255'],
            'emergency_contact_name' => ['required', 'string','min:3', 'max:50'],
            'emergency_contact_phone' => ['required', 'string', 'min:7', 'max:13'],
            'photo_id' => ['nullable', 'image', 'mimes:jpg,jpeg,png', 'max:2048'],
        ];
    }

    public function attributes() {
      return [
        'prefix' => 'Name prefix',
        'firstname' => 'First name',
        'middlename' => 'Middle name',
        'lastname' => 'Last name',
        'suffix' => 'Name suffix',
        'email' => 'Email address',
        'phone' => 'Phone number',
        'gender_id' => 'Gender',
        'dob' => 'Date of birth',
        'join_date' => 'Join date',
        'address' => 'Address',
        'emergency_contact_name' => 'Emergency contact name',
        'emergency_contact_phone' => 'Emergency contact phone number',
        'photo_id' => 'Photo ID',
      ];
    }
}
