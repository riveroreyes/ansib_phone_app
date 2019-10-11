<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public function customer(){
        return $this->belongsTo('App\Customer');
    }

    public function products(){
        return $this->hasMany('App\Product');
    }

    public function orderProducts()
    {
        return $this->belongsToMany('App\OrderProduct');
    }    
}
