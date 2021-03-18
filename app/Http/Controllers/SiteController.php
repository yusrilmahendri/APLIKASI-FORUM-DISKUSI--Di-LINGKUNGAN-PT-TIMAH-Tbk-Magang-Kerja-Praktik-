<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Diskusi;

class SiteController extends Controller
{   

    //home
    public function home()
    {
       $diskusi = Diskusi::orderBy('created_at','desc')->paginate(3);
       return view('sites.home',compact(['diskusi'])); 
    }

    public function about()
    { return view('sites.about'); }

     public function kontak()
    { return view('sites/kontaks'); } 
     
    



    
}
