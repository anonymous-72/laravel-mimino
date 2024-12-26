<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{
    protected $fillable = ['table_id', 'name', 'email', 'phone_number', 'reservation_date', 'comment', 'status'];
}
