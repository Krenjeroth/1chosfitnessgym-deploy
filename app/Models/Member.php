<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Member extends Model
{
    use HasFactory;

    protected $with = ['gender'];

    protected $fillable = [
        'full_name',
        'name',
        'age',
        'email',
        'phone',
        'date_of_birth',
        'address',
        'join_date',
        'emergency_contact_name',
        'emergency_contact_phone',
        'created_at',
        'updated_at',
        'gender_id',
        'img_path',
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

    public function gender() {
      return $this->belongsTo(Gender::class);
    }

    public function memberships() {
      return $this->hasMany(Membership::class);
    }
}
