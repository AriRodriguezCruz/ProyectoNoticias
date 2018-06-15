<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{
    protected $fillable = [
        'user_id','title','slug','body','image','status'

    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
