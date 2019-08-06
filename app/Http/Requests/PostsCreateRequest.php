<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class PostsCreateRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title'       =>'required',
            // 'category_id' =>'required',
            'photo_id'    =>'required',
            'body'        =>'required'
        ];
    }

    /**
     * Get the validation rule error messages that apply to the request.
     *
     * @return array
     */
    public function messages()
    {
        return [
            'title.required'       => 'Error!!! A title is required.',
            'category_id.required' => 'Error!!! A category must be selected.',
            'photo_id.required'    => 'Error!!! A photo is required.',
            'body.required'        => 'Error!!! The description cannot be left blank.',
        ];
    }
}
