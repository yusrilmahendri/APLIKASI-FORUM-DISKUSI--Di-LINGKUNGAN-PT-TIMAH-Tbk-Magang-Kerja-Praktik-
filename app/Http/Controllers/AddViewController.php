<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Diskusi;
use App\Models\Komentar;
use App\Models\Like;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class AddViewController extends Controller
{
       //menampilkan list posting  
    public function addview()
    {
    $diskusi = Diskusi::orderBy('created_at','desc')->paginate(5);
  
      return view('diskusi.addview', ['diskusi' => $diskusi]);     
    }
     
    //hapus data 
      public function delete($id)
    {
        
        $diskusi =  \App\Models\Diskusi::find($id);
        $diskusi->delete($diskusi);
   
      return redirect()->back()->with('sukses','Postingan Berhasil Di hapus');
    }
    
}
