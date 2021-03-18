<?php

namespace App\Http\Controllers;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use \App\Models\Karyawan;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;

class KaryawanController extends Controller
{
  
    public function index(Request $request)
    {   
    //mengecek apakah query string ada yakni tujuan ea untuk mencari  data yang sudah ada pada database
        if ($request->has('cari')) {
            $data_karyawan =  \App\Models\Karyawan::where('nama','LIKE',
                '%'.$request->cari.'%')->paginate(10);
        }
        else {
            //men gagal ya nampilin kesulurahan data
            $data_karyawan =  \App\Models\Karyawan::orderBy('created_at','desc')->paginate(10);
        }
        
        return view('karyawan.index',['data_karyawan' => $data_karyawan]);
    }
     

     //PROSES insert data (create)
    public function create(Request $request)
    { 
         //insert ke tabel users 
          $user = new   \App\Models\User;
          $user->role = 'karyawan';
          $user->name = $request->nama;
          $user->email = $request->email;
          $user->password = bcrypt($request->password);
          $user->remember_token = str::random(60);
          $user->save(); 

         // kasih tahu klo berhasil
          $request->request->add(['user_id' => $user->id]);
          $karyawan =  Karyawan::create($request->all()); 
    	
          return redirect('/karyawan')->with('sukses','Data Berhasil Ditambahkan');
    } 
    

    //proses update dan edit 
    public function edit($id)
    {
      $karyawan =  \App\Models\Karyawan::find($id);
      return view('karyawan.edit', ['karyawan' => $karyawan]);
    }


      //update
        public function update(Request $request,$id)
    {   

        $karyawan =  \App\Models\Karyawan::find($id);
        $karyawan->update($request->all());
        
        return redirect('/karyawan')->with('sukses','Data Berhasil Di Update');
    }


    //hapus
    public function delete(Karyawan $karyawan)
    {  
        $karyawan->delete($karyawan);
       
         return redirect('/karyawan')->with('sukses','Data berhasil dihapus');
    }
    

    // read profil
    public function profile($id)
    { 
        $karyawan = \App\Models\Karyawan::find($id);
        
        return view('karyawan.profile',['karyawan' => $karyawan]);
     }


    //daftar (create)
    public function register()
    {
      return view('daftar.register');
    }

    public function postregister(Request $request)
    {
         //insert ke tabel users 
         $user = new   \App\Models\User;
         $user->role = 'karyawan';
         $user->name = $request->nama;
         $user->email = $request->email;
         $user->password = bcrypt($request->password);
         $user->remember_token = str::random(60);
         $user->save();

       //nambah ke tabel karayawan
        $request->request->add(['user_id' => $user->id]);
        $karyawan =  Karyawan::create($request->all());        
      
      return redirect('/login')->with("sukses",'Terdaftarkan');
    }

   //profile use 
   public function profileuse()
     {
       return view('karyawan.profileuse');
     }  
     

}   
