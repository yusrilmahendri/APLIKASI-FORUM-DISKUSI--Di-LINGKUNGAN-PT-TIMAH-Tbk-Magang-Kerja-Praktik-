<!DOCTYPE html>
<html lang="en">
<head>

     <title>{{config('forum.title')}}</title>

     <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="description" content="">
         <meta name="keywords" content="">
           <meta name="author" content="">
              <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

      <link rel="stylesheet" href="{{asset('/template') }}/css/bootstrap.min.css">
        <link rel="stylesheet" href="{{asset('/template') }}/css/font-awesome.min.css">
          <link rel="stylesheet" href="{{asset('/template') }}/css/owl.carousel.css">
            <link rel="stylesheet" href="{{asset('/template') }}/css/owl.theme.default.min.css">

     <!-- MAIN CSS -->
               <link rel="stylesheet" href="{{asset('/template') }}/css/style.css">


</head>

<body id="top" data-spy="scroll" data-target=".navbar-collapse"   data-offset="50">

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">
               <span class="spinner-rotate"></span>
          </div>
     </section>

     <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header">
             <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon icon-bar"></span>
                  <span class="icon icon-bar"></span>
                     <span class="icon icon-bar"></span>
             </button>

     <!-- lOGO TEXT HERE -->
     <a href="/" class="navbar-brand"><img src="/admin/gambar/logo-logo.png"></a>
    </div>

     <!-- MENU LINKS -->
     <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-nav-first">
               <li class="active"><a href="/">Home</a></li>
            
                      <li><a href="/about">About Us</a></li>
                          <li class="dropdown">
                             <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sign In | Sign Up<span class="caret"></span></a>
                                 <ul class="dropdown-menu">
                                    <li><a href="/login">Sign In</a></li>
                                        <li><a href="/daftar">Sign Up</a></li>
                     </ul>
                  </li>
                <li><a href="/kontaks">Contact Us</a></li>
           </ul>
         </div>
       </div>
     </section>

@yield('content')
     
     <footer id="footer">
       <div class="container">
          <div class="row">
            <div class="col-md-4 col-sm-6">
               <div class="footer-info">
                  <div class="section-title">
                     <h2>KANTOR PUSAT</h2>
                   </div>                          
                      <address>
                           <p><br>Jl. Jenderal Sudirman 51 Pangkalpinang 33121, Bangka, Indonesia</p>
                      </address>

      <ul class="social-icon">
        <li><a href="@officialtimah" class="fa fa-facebook-square" attr="facebook icon"></a></li>
          <li><a href="@official_TIMAH" class="fa fa-twitter"></a></li>
           <li><a href="@officialtimah" class="fa fa-instagram"></a></li>
     </ul>

     <div class="copyright-text"> 
      <p>Copyright &copy; 2020 PT TIMAH Tbk</p>
            </div>
         </div>
    </div>

     <div class="container">
       <div class="row">
         <div class="col-md-4 col-sm-6">
             <div class="footer-info">
               <div class="section-title">
                  <h2>KANTOR PERWAKILAN JAKARTA</h2>
               </div>                          
                 <address>
                     <p><br>Jl. Medan Merdeka Timur 15 Jakarta Pusat, Jakarta, Indonesia</p>
                 </address>

       <ul class="social-icon">
           <li><a href="@officialtimah" class="fa fa-facebook-square" attr="facebook icon"></a></li>
                <li><a href="@official_TIMAH" class="fa fa-twitter"></a></li>
                     <li><a href="@officialtimah" class="fa fa-instagram"></a></li>
        </ul>
      </div>
    </div>

    <div class="col-md-4 col-sm-6">
      <div class="footer-info">
        <div class="section-title">
            <h2>Contact Info</h2>
        </div>
            <address>
               <p>Tel. +62 717 425 8000</p>
                   <p>Fax. +62 717 425 8080</p>
                         <p><a href="corsec@pttimah.co.id">corsec@pttimah.co.id</a></p>
            </address>
     </footer>

     <!-- SCRIPTS -->
     <script src="{{asset('/template') }}/js/jquery.js"></script>
     <script src="{{asset('/template') }}/js/bootstrap.min.js"></script>
     <script src="{{asset('/template') }}/js/owl.carousel.min.js"></script>
     <script src="{{asset('/template') }}/js/smoothscroll.js"></script>
     <script src="{{asset('/template') }}/js/custom.js"></script>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


</body>
</html>


