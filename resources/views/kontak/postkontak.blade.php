@extends('layouts.frontend')

@section('content')
     <!-- CONTACT -->
<section id="contact">
     <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-12">
              <form id="contact-form" role="form" action="/postkontak" method="POST">
                   {{csrf_field()}}
          <div class="section-title">
               <h2>Contact us <small>we love conversations. let us talk!</small>
               </h2>
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
