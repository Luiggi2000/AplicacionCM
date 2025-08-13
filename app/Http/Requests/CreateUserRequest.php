<?php

namespace App\Http\Requests;

use App\Models\User;
use Illuminate\Foundation\Http\FormRequest;

/**
 * Class CreateUserRequest
 */
class CreateUserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     */
    public function rules(): array
{
    return [
        'first_name' => 'required|string|max:255',
        'last_name' => 'required|string|max:255',
        'email' => 'required|email:filter|unique:users,email',
        'password' => 'nullable|same:password_confirmation|min:6',
        'department_id' => 'required|integer',
        'doctor_department_id' => request()->get('department_id') == 2 ? 'required' : 'nullable',
        'gender' => 'required|string',
        'dob' => 'nullable|date',
        'image_url' => 'nullable|mimes:jpeg,png,jpg,gif,webp',
    ];
}

}
