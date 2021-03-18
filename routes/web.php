<?php

use Illuminate\Support\Facades\Route;


//home  
Route::get('/','App\Http\Controllers\SiteController@home');
Route::get('/about','App\Http\Controllers\SiteController@about');


//kontak
Route::get('/kontaks','App\Http\Controllers\KontakController@kontak');
//mengirim data kirm pesan
Route::post('/postkontak','App\Http\Controllers\KontakController@postkontak');


// login 
Route::get('/login','App\Http\Controllers\AuthController@login')->name('login');
Route::post('/postlogin','App\Http\Controllers\AuthController@postlogin');

//keluar
Route::get('/logout','App\Http\Controllers\AuthController@logout');


//daftar
Route::get('/daftar','App\Http\Controllers\KaryawanController@register');
//kirm data yang mendaftar ke tampilan admin
Route::post('/postregister','App\Http\Controllers\KaryawanController@postregister');


//cara pertama menggunakan middleware('auth') yang fungsinya sesion
Route::get('/dashboard','App\Http\Controllers\DashboardController@index')->middleware('auth');


//yang mana hanya admin yang bisa akses from / layanan di bawah ini
Route::group(['middleware'=>['auth','checkRole:admin']],function(){


//cara magic untuk crud
// Route::resource('karyawan', 'App\Http\Controllers\KaryawanController');

//read                      
 Route::get('/karyawan','App\Http\Controllers\KaryawanController@index')->name('karyawan');

 //create
 Route::post('/karyawan/create','App\Http\Controllers\KaryawanController@create'); 

//delete data karyawan
Route::get('/karyawan/{karyawan}/delete','App\Http\Controllers\KaryawanController@delete'); 

//read profile ne ok
 Route::get('/karyawan/{id}/profile','App\Http\Controllers\KaryawanController@profile');

 //proses update dan edit data 
 Route::get('/karyawan/{id}/edit','App\Http\Controllers\KaryawanController@edit');

 //update
 Route::post('/karyawan/{id}/update','App\Http\Controllers\KaryawanController@update');

//posts postingan di halaman home
Route::get('/diskusi','App\Http\Controllers\ForumController@index')->name('diskusi.index'); 

//read post forum
Route::get('/diskusiadmin','App\Http\Controllers\AddViewController@addview');

//hapus postingan forum
Route::get('/diskusiadmin/{id}/delete','App\Http\Controllers\AddViewController@delete');

//read profile ne ok
Route::get('/karyawan/{id}/profile','App\Http\Controllers\KaryawanController@profile');

//proses read
Route::get('/kontak','App\Http\Controllers\KontakController@index');

//proses delete
Route::get('/kontak/{id}/delete','App\Http\Controllers\KontakController@delete');

});



//bisa di kases karaywan/ user dan admin pun bisa akses
Route::group(['middleware'=>['auth','checkRole:admin,karyawan']],function(){

//dashboard
Route::get('/dashboard','App\Http\Controllers\DashboardController@index');

//diskusi forum
//read post forum
Route::get('/diskusi','App\Http\Controllers\ForumController@index');

//create post
Route::post('diskusi/create','App\Http\Controllers\ForumController@create');

//kirmkan ke view atau read detail dari post forum
Route::get('/diskusi/{diskusi}/view','App\Http\Controllers\ForumController@view');

//read like kirim ke madding onile
Route::get('/diskusi/{id}/view','App\Http\Controllers\ForumController@bacaLike');

//membalas komentar
Route::post('/diskusi/{diskusi}/view','App\Http\Controllers\ForumController@postkomentar');

//meng - like 
Route::get('diskusi/{id}','App\Http\Controllers\ForumController@postLikePost')->name('like');

//unlike
Route::get('diskusi/{id}/unLike','App\Http\Controllers\ForumController@unLike')->name('unLike');

//follow unfollow 
Route::get('/diskusi/{id}/profileuse','App\Http\Controllers\ForumController@edit');

});	



//bisa di akses oleh karyawan dan admin
Route::group(['middleware' => ['auth', 'checkRole:karyawan,admin']],function(){
    
    //untuk menampilkan profile pada setiap user(karyawan)
    Route::get('/profilesaya','App\Http\Controllers\ProfileController@profilesaya');

     //update
    Route::patch('/profilesaya/{id}/updateprofile','App\Http\Controllers\ProfileController@updateprofile');
});

