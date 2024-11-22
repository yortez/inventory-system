<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public function category() {
        return $this->belongsTo(Category::class);
    }
    
    public function supplier() {
        return $this->belongsTo(Supplier::class);
    }
    
    public function stockTransactions() {
        return $this->hasMany(StockTransaction::class);
    }
    
}
