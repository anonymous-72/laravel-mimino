<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Reservation extends Model
{
    protected $fillable = ['table_id', 'name', 'email', 'phone_number', 'reservation_date', 'comment', 'status'];

    protected $casts = ['reservation_date' => 'datetime',];

    public function table(): BelongsTo
    {
        return $this->belongsTo(Table::class);
    }
}
