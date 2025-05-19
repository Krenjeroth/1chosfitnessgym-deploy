<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Municipality extends Model
{
    protected $fillable = ['name', 'code'];

    public function barangays()
    {
        return $this->hasMany(Barangay::class);
    }
}
