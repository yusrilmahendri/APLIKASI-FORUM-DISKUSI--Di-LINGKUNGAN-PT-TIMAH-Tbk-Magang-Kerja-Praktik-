<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

 class Diskusi extends Model
{   
  

    protected $table = 'diskusi';
    protected $guarded = ['id'];

    public function user()
    { return $this->belongsTo(User::class);}

    public function komentar()
    {  return $this->hasMany(Komentar::class); }

    public function likes()
    { return $this->hasMany(Like::class); }
}

