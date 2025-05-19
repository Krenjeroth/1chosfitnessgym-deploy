<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Gender extends Model
{
    protected $fillable = ['type'];

    public function members() {
      return $this->hasMany(Member::class);
    }
}
