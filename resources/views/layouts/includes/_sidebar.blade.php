 
 <div id="sidebar-nav" class="sidebar">
    <div class="sidebar-scroll">
       <nav>
         <ul class="nav">
           <li><a href="/diskusi" class="active"><i class="lnr lnr-home"></i><span>Home</span></a></li>
                <li><a href="/diskusi" class=""><i class="fab fa-discourse"></i><span>Forum Diskusi</span></a></li>

 @if(auth()->user()->role == 'admin')
   <li><a href="/karyawan" class=""><i class="lnr lnr-users"></i> <span>Data Karyawan</span></a></li>
    <li><a href="/kontak" class=""><i class="fas fa-inbox"></i><span>Pesan Kontak</span></a></li>
      <li><a href="/diskusiadmin" class=""><i class="fab fa-discourse"></i><span>Forum Admin</span></a></li>
  
      @endif           
         </ul>
     </nav>
   </div>
 </div>