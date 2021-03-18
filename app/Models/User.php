<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
 
class User extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name','email','password','role',
    ];

     protected $guarded = ['id'];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    
    public function karyawan()
    { return $this->hasOne(Karyawan::class); }

    public function karyawanProfile()
    { return $this->hasOne(Karyawan::class); }

    public function diskusi()
    { return $this->hasMany(Diskusi::class);}

    public function komentar()
    { return $this->hasMany(Komentar::class); }

    public function likes()
    { return $this->hasMany(Like::class); }
   
}
