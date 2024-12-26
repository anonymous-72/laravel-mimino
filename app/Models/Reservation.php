<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{
    protected $fillable = ['name', 'email', 'phone_number', 'reservation_date', 'comment', 'status'];

    protected $casts = ['reservation_date' => 'datetime',];
}
