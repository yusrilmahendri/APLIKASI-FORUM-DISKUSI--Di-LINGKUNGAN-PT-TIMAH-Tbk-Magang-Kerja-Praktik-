<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProfileController extends Controller
{
      //menampilkan profile pada setiap user
    public function profilesaya()
    { 
      $karyawan = auth()->user()->karyawan;
      return view('karyawan.profilesaya',compact(['karyawan']));
    }

     public function updateprofile(Request $request,$id)
    {  

        $karyawan =  \App\Models\Karyawan::find($id);
        $karyawan->update($request->all());

         //tambah gambar
        if ($request->hasFile('avatar')) {
          $request->file('avatar')->move('images/',$request->file('avatar')->getClientOriginalName());
          $karyawan->avatar = $request->file('avatar')->getClientOriginalName();
          $karyawan->save();
        }

         return redirect('/profilesaya')->with("sukses",'Data Identitas Berhasil Di Update');
    }

}
