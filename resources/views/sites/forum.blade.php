@extends('layouts.frontend')

@section('content')

<section>
     <div class="container">
          <div class="row">
          @foreach($diskusi as $diskusi)
               <div class="col-md-12 col-sm-12">
                    <div class="section-title text-center">
                         <h2>Berita Terbaru</h2>
                    </div>
               </div>

     <div class="col-md-4 col-sm-4">
          <div class="courses-thumb courses-thumb-secondary">
               <div class="courses-top">
                    <div class="courses-image">
                         <img src="#" class="img-responsive" alt="">
                    </div>
                     
     <div class="courses-date">
          <span title="Author"><i class="fa fa-user"></i>{{$diskusi->user->name}}</span>
          <span title="Posted on"><i class="fa fa-calendar"></i>{{$diskusi->created_at->format('d M Y')}}</span>
        </div>
     </div>

     <div class="courses-detail">
          {!!$diskusi->konten!!}
     </div>

     <div class="courses-info">
          <a href="job-details.html" class="section-btn btn btn-primary btn-block">View Details</a>
           </div>
        </div>
     </div>
            @endforeach   
        </div>
     </div>
</section>
@endsection