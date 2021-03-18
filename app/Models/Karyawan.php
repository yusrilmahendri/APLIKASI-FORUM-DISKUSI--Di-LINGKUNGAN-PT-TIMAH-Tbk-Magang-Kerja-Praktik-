<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Karyawan extends Model
{
    protected $table = 'karyawan';
    protected $fillable = 
              [ 'nama','password','email','no_telp','jenis_kelamin','avatar','user_id' ];

            

    public function getAvatar()
    {
    	if(!$this->avatar)
        { return asset('images/default.jpg'); }
    	
        return asset('images/'.$this->avatar);
    }
}
