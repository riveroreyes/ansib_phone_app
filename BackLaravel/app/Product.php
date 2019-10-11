<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Order;

class Product extends Model
{
    public function orderProducts()
    {
        return $this->belongsToMany('App\OrderProduct');
    }    
}
