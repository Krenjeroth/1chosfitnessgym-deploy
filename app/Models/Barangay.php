<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Barangay extends Model
{
  protected $fillable = ['name', 'code', 'municipality_id'];

  public function municipality()
  {
    return $this->belongsTo(Municipality::class);
  }
}
