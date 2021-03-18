<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Like extends Model
{     
      protected $guarded = ['id'];
     
    public function user()
    { return $this->belongsTo(User::class); }
    
     public function diskusi()
   { return $this->belongsTo(Diskusi::class);  }    
}
