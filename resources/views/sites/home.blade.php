@extends('layouts.frontend')

@section('content')
 <section id="home">
     <div class="row">
       <div class="owl-carousel owl-theme home-slider">
          <div class="item item-first">
             <div class="caption">
               <div class="container">
                  <div class="col-md-6 col-sm-12">
                    <h1>Timah Diskusi</h1>
                    <h3> mengumpulkan pertanyaan-pertanyaan dan jawabannya pada topik-topik tertentu dan memperbolehkan pengguna untuk ikut berkolaborasi dengan memberikan suara atau mengusulkan perbaikan jawaban.</h3>
               </div>
           </div>
         </div>
     </div>

 <div class="item item-second">
     <div class="caption">
         <div class="container">
            <div class="col-md-6 col-sm-12">
               <h1>Every idea needs a Timah Diskusi</h1>
               <h3>Ide-ide terbaik bisa mengubah siapa kita. Media adalah tempat ide-ide tersebut terbentuk, lepas landas, dan memicu percakapan yang kuat. Kami adalah platform terbuka tempat 170 juta pembaca datang untuk menemukan pemikiran yang berwawasan dan dinamis. Di sini, suara ahli dan yang belum ditemukan sama-sama menyelami inti dari topik apa pun dan membawa ide-ide baru ke permukaan. Tujuan kami adalah menyebarkan ide-ide ini dan memperdalam pemahaman tentang dunia.</h3>
               <a href="https://www.google.com/" class="section-btn btn btn-default">SEARCH</a>
            </div>
          </div>
      </div>
 </div>

<div class="item item-third">
   <div class="caption">
     <div class="container">
          <div class="col-md-6 col-sm-12">
               <h1>Di mana ide-ide bagus menemukan Anda bersama Timah diskusi</h1>
               <h3>Baca dan bagikan perspektif baru tentang topik apa saja. Selamat datang semuanya</h3>
               <a href="https://www.google.com/" class="section-btn btn btn-default">SEARCH</a>
            </div>
          </div>
        </div>
     </div>
  </div>
</div>
 
</section>
  <main>
     <section id="about">
        <div class="container">
           <div class="row">
              <div class="col-md-12 col-sm-12">
                 <div class="text-center">
                     <h2>apa itu Timah Diskusi</h2>
                     <br>
                    <p class="lead">merupakan media diskusi online yang dapat diakses tanpa dibatasi ruang dan waktu. Melalui forum, pengguna dapat berdiskusi satu sama lain mengenai suatu topik yang dimoderasi oleh moderator sehingga diskusi berjalan secara kondusif</p>
                 </div>
               </div>
          </div>
     </div>
</section>

<section>
     <div class="container">
          <div class="row">
               <div class="col-md-12 col-sm-12">
                    <div class="section-title text-center">
                         <h2>Berita Terbaru</h2>
                    </div>
               </div>
            
  @foreach($diskusi as $diskusi)
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
          <a href=/login class="section-btn btn btn-primary btn-block">View Details</a>
           </div>
        </div>
     </div>
            @endforeach
            
  
        </div>
     </div>
</section>

     <!-- CONTACT -->
<section id="contact">
     <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-12">
              <form id="contact-form" role="form" action="/postkontak" method="POST">
                   {{csrf_field()}}
          <div class="section-title">
               <h2>Contact us <small>we love conversations. let us talk!</small></h2>
     </div>

<div class="col-md-12 col-sm-12">
    <input type="text" class="form-control" placeholder="Enter full name" name="nama" required>      

    <input type="email" class="form-control" placeholder="Enter email address" name="email" required>
    
     <textarea class="form-control" rows="6" placeholder="Tell us about your message" name="pesan" required></textarea>
</div>

<div class="col-md-4 col-sm-12">
           <button type="submit" class="form-control">Send Mesaage</button>
    </div>
  </form>
</div>

<div class="col-md-6 col-sm-12">
   <div class="contact-image">
           <img src="/admin/gambar/back.jpg" class="img-responsive" alt="Smiling Two Girls">
         </div>
       </div>
     </div>
   </div>
 </section>  
@stop