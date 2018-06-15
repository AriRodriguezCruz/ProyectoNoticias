<?php
namespace App\Http\Requests;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Storage;
class PostUpdateRequest extends FormRequest
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
        $rules = [
            // 'user_id','title','slug','body','image','status'
            'user_id'       => 'required',
            'title'       => 'required',
            //'slug'          => 'required|unique:Notices,slug'. $this->post,
            'body'          => 'required',
            'status'        => 'required|in:DRAFT,PUBLISHED',            
        ];
        if($this->get('image'))        
            $rules = array_merge($rules, ['image'         => 'mimes:jpg,jpeg,png']);
        return $rules;
    }
}