  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="brand">
      <a href="/dashboard"><img src="{{asset('admin/gambar/logo-logo.png')}}"  class="img-responsive logo" width="100px" height="100px"></a>
    </div>
    
    <div class="container-fluid">
      <div class="navbar-btn">
        <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
    </div>
    
      <div id="navbar-menu">
        <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
     
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <img src=
            "@if(auth()->user()->role == 'karyawan')
            {{auth()->user()->karyawanProfile->getAvatar()}}
               @else
                 /images/default.jpg
               @endif"
               class="img-circle" style="width: 30px; height: 30px;" alt="Avatar"> 
            <span style="font-weight: bold;">{{auth()->user()->karyawan->nama}}</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
        <ul class="dropdown-menu">
          <li><a href="/profilesaya"><i class="lnr lnr-user"></i> <span>Profile Saya</span></a></li>
          <li><a href="/logout"><i class="lnr lnr-exit"></i> <span>Keluar</span></a></li>
        </ul>
        </li>
     
        </ul>
      </div>
      </div>

  </nav>