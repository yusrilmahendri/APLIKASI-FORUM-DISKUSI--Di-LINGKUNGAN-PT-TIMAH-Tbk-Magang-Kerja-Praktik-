@extends('layouts.master') 

@section('content')

<div class="main">
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">

    <div class="panel panel-headline">
      <div class="panel-heading">
         <h3 class="panel-title">{{$diskusi->judul}}</h3>
            <p class="panel-subtitle">   {{$diskusi->created_at->diffForHumans()}}</p>
    </div>

        <div class="panel-body">
            {{$diskusi->konten}}
        <hr>

        <div class="btn-group">
          <div class="interaction">
            <!-- tampung data dari pasing setiap user login -->
            <?php $x = auth()->user()->id;?>
                                
    <?php 
       $if_null = App\Models\Like::where('diskusi_id','=',$diskusi->id)->where('user_id','=',$x)->first();
          
          if (is_null($if_null)) {
                 ?>
            <a class="btn btn-succes" href="{{route('like',$diskusi->id)}}"><i class="fa fa-thumbs-up"></i></a>
                <?php }

          else {?>
            <a class="btn btn-succes" href="{{route('unLike',$diskusi->id)}}"><i class="fa fa-thumbs-down"></i></a>
                <?php } ?>



         <!-- KOMENTAR -->
        <button class="btn btn-succes" id="btn-komentar-utama" style="margin:3px;"><i class="fa fa-comment"></i> Komentar</button>
            
            </div>
        </div>

        <!-- fORM komentar -->
        <form action="" method="POST" style="margin-top: 12px; display: none;" id="komentar-utama">
                                
            @csrf
                                
            <input type="hidden" name="diskusi_id" value="{{$diskusi->id}}">
            <input type="hidden" name="parent" value="0">
            <textarea name="konten" style="border-radius: 25px;" class="form-control" id="komentar-utama" rows="4" required></textarea>
            <input type="submit" class="btn btn-primary" value="kirim">
        </form>

            <ul class="list-unstyled activity-list">
              @foreach($diskusi->komentar()->where('parent',0)->orderBy('created_at','desc')->get() as $komentar)
            <li>
            
            <img src="{{$komentar->user->karyawan->getAvatar()}}" alt="Avatar" class="img-circle pull-left avatar" style="width: 37px; height: 37px;">
            <p><a href="#">{{$komentar->user->karyawan->nama}}</a><br>{{$komentar->konten}}<span class="timestamp">{{$komentar->created_at->diffForHumans()}}</span></p>

        <!-- untuk membalas komentar dari komentar -->
            <form action="" method="POST" style="padding-left: 3.5sem;">
                @csrf
                
                <input type="hidden" name="diskusi_id" value="{{$diskusi->id}}">
                <input type="hidden" name="parent" value="{{$komentar->id}}">
                <input type="text" name="konten" class="form-control" required>
                <input type="submit" class="btn btn-primary btn-xs" value="replay">
            </form>

    <!-- membalas komentar dari koemntar yang di komentar ok -->
    <br> @foreach($komentar->childs()->orderBy('created_at','desc')->get() as $child)
                                     
    <img src="{{$komentar->user->karyawan->getAvatar()}}" alt="Avatar" class="img-circle pull-left avatar" style="width: 30px; height: 30px;">
                                    
    <p><a href="#">{{$child->user->karyawan->nama}}</a><br>{{$child->konten}}<span class="timestamp">{{$child->created_at->diffForHumans()}}</span></p>
                                    
                                      @endforeach
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
         </div>
      </div>
    </div>
  </div>
</div>
@endsection 

@section('footer')

<!-- menggunakan jqury efek untuk ketika komentar di klik maka diplay textarea -->
<script type="text/javascript">
    $(document).ready(function() {
        $('#btn-komentar-utama').click(function() {
            $('#komentar-utama').toggle('slide'); //nampil kolom komentar dengan nge-slide
        });

    });
</script>
@endsection