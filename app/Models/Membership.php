<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Membership extends Model
{
    use HasFactory;
    
    protected $with = ['member', 'plan'];

    protected $fillable = [
        'member_id',
        'plan_id',
        'status',
        'start_date',
        'expiry_date',
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

    public function member() {
      return $this->belongsTo(Member::class);
    }

    public function plan() {
      return $this->belongsTo(Plan::class);
    }

    public function payments() {
      return $this->hasMany(Payment::class);
    }
}
