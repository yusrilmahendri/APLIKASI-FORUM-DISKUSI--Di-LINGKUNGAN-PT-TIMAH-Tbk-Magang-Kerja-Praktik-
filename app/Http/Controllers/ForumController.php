<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Diskusi;
use App\Models\Komentar;
use App\Models\Like;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;


class ForumController extends Controller
{
     //menampilkan list posting  
    public function index()
    {
    	$diskusi = Diskusi::orderBy('created_at','desc')->paginate(5);
    	return view('diskusi.index',compact(['diskusi']));
    }
     
     //membuat postigan    
    public function create(Request $request)
    {   
    	$request->request->add(['user_id' => auth()->user()->id]);
    	$diskusi = Diskusi::create($request->all());
        return redirect()->back()->with('sukses','Conten Berhasil di Unggah');
    }
   
    //read postinga
    public function view(Diskusi $diskusi)
    { 
      return view('diskusi.view',compact(['diskusi']));
    }

    
    //komentar    
    public function postkomentar(Request $request)
    {   
        $request->request->add(['user_id' => auth()->user()->id]);
        $komentar = Komentar::create($request->all());
        return redirect()->back()->with('sukses','Komentar Berhasil di Tambahkan');
    }

    //like
  public function postLikePost($id)
       {
        $like = New Like;
        $like->user_id = Auth::user()->id;
        $like->diskusi_id = $id;
        $like->save();
      
        return redirect()->back()->with('sukses','Berhasil Like');
    }
  //unlike
  public function unLike($id)
  {
          \App\Models\Like::where('user_id', Auth::user()->id)
               ->where('diskusi_id',$id)
               ->delete();

               return redirect()->back()->with('sukses','Berhasil Unlike');
  }


 
  //proses follow un follow 
    public function edit($id)
    {
      
       $profile =  \App\Models\Karyawan::find($id);
       return view('karyawan.profileuse', ['profile' => $profile]);
    }







}
