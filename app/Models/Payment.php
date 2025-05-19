<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Payment extends Model
{
    use HasFactory;

    protected $fillable = [
        'membership_id',
        'amount',
        'method',
        'status',
    ];

    public $incrementing = false;
    protected $keyType = 'string';

    protected static function boot() {
      parent::boot();
      static::creating(function ($model) {
        if(!$model->id) {
          $model->id = Str::uuid();
        }
      });
    }

    public function membership() {
      return $this->belongsTo(Membership::class);
    }
}
