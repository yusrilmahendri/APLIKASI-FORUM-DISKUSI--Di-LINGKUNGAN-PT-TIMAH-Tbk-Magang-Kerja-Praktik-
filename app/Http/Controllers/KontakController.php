<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;


class KontakController extends Controller
{  
   //read kontak halaman 
    public function kontak()
    {
        return view('kontak.postkontak');
    }

	//read data 
    public function index()
    {
        $data_kontak =  \App\Models\Kontak::paginate(10); 
        return view('kontak.index', ['data_kontak' => $data_kontak]);
    }

    //hapus data 
      public function delete($id)
    {
        $kontak =  \App\Models\Kontak::find($id);
        $kontak->delete($kontak);
        return redirect('/kontak')->with('sukses','Data berhasil di hapus');
    }
    
    //post kontak pesan
   public function postkontak(Request $request)
    {
          $kontak = new   \App\Models\Kontak;
          $kontak->nama = $request->nama;
          $kontak->email = $request->email;
          $kontak->pesan = $request->pesan;
          $kontak->save();

          return redirect()->back();
        
    }

}
