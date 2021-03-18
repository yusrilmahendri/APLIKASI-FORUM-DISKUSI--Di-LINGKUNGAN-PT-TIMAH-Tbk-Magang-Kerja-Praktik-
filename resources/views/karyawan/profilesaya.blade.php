@extends('layouts.master')

@section('content')

  <div class="main">

    <!-- MAIN CONTENT -->
     <div class="main-content">
       <div class="container-fluid">
           <div class="panel panel-profile">
               <div class="clearfix">
							
	<!-- LEFT COLUMN -->
       <div class="profile-left">
								
	 <!-- PROFILE HEADER -->
	  <div class="profile-header">
	    <div class="overlay"></div>
	        <div class="profile-main">
	           <img src="{{ $karyawan->getAvatar() }}" class="img-circle" style="width:320px;height:320px;" alt="Avatar">
                             
	              <h3 class="name">{{$karyawan->nama}}</h3>
	                <span class="status status-available"></span>
	        </div>
	
	<div class="profile-stat">
	   <div class="row">
	     <div class="col-md-4 stat-item"><span></span>
	</div>

       <div class="col-md-4 stat-item"><span></span>
          </div>
	    </div>
    </div>
</div>
		

<!-- END PROFILE HEADER -->
<!-- PROFILE DETAIL -->
<div class="profile-detail">
  <div class="profile-info">
    <ul class="list-unstyled list-justify">
                    <h4 class="heading" style="margin-bottom: 25px;">Identitas Saya</h4>
                    <ul class="list-unstyled list-justify">
                      <li>Email<span>{{$karyawan->email}}</span></li>
                      <li>Phone<span>{{$karyawan->no_telp}}</span></li>
                      <li>Jenis Kelamin<span>{{$karyawan->jenis_kelamin}}</span></li>
                    </ul>
    </div>
  </div>
  <!-- END PROFILE DETAIL -->
</div>


<!-- END LEFT COLUMN -->
<!-- RIGHT COLUMN -->
   <div class="profile-right">
<!-- TABBED CONTENT -->
<div class="custom-tabs-line tabs-line-bottom left-aligned">
   <ul class="nav" role="tablist">
     <li class="active"><a href="#tab-bottom-left1" role="tab" data-toggle="tab">DATA DIRI</a></li>
      </ul>
</div>

<div class="tab-content">
      <div class="tab-pane fade in active" id="tab-bottom-left1" >
        <ul class="list-unstyled activity-timeline">
            
            <form action="/profilesaya/{{$karyawan->id}}/updateprofile" method="POST" enctype="multipart/form-data">  

               @method('patch')                  
              {{csrf_field()}}
                    
                    <li>
                      <p><span>   
                        <div class="form-group">
                          <label for="nama">Nama</label>
                            <input type="text" name="nama" class="form-control" placeholder="nama depan" aria-describedby="nama" value="{{$karyawan->nama}}"  required/>
                        </div></span></p>
                    </li>  
                    
                    <li>
                      <p><span> 
                        <div class="form-group">
                          <label for="password">Password</label>
                            <input type="password"class="form-control"name="password"placeholder="password"
                            value="{{$karyawan->password}}" required/>
                        </div> </span></p>
                    </li> 
                    
                    <li>
                      <p><span>
                        <div class="form-group">
                           <label for="email">Email</label>
                              <input type="email" placeholder="Email" class="form-control" name="email" value="{{$karyawan->email}}" required/>
                        </div></span></p>
                    </li>  

                    <li> 
                      <p><span> <div class="form-group">
                        <label for="no_telp">No Telp</label>
                          <input type="text" placeholder="No Telp" class="form-control" id="no_telp" name="no_telp" value="{{$karyawan->no_telp}}" required/>
                      </div></span></p>
                     </li>                     
                     
                     <li>
                       <p><span><div class="form-group">
                         <label for="jenis_kelamin">
                            Pilih Jenis Kelamin</label>
                              <select class="form-control" name="jenis_kelamin">
                                    <option
                                      value="male"
                                          @if($karyawan->jenis_kelamin == 'male')selected @endif>laki-laki
                                      </option>
                                      
                                      <option
                                          value="pemale"
                                            @if($karyawan->jenis_kelamin == 'pemale')selected @endif>perempuan
                                      </option>
                                  </select>
                              </div>
                          </span>
                        </p>
                    </li> 

                    <li><p><span>
                      <div class="form-group">
                          <label for="no_telp">IMAGE</label>
                            <input type="file" class="form-control" name="avatar">
                        </div>
                      </span></p></li> 
                      
                      <div class="margin-top-30 text-center">
                         <button type="submit" class="btn btn-warning">Update Profile</button>
                      </div>
                  </ul>
               </form>
    
     	<!-- END TABBED CONTENT -->
	            </div>
     	<!-- END RIGHT COLUMN -->
        	 </div>
	     </div>
	   </div>
    </div>
	<!-- END MAIN CONTENT -->
  </div>




  <!-- edit profile -->
@stop
    @section('content')
                <h1>Edit Data Karyawan</h1>
                @if(session('sukses'))
                <div class="alert alert-success" role="alert">
                    {{ session("sukses") }}
                </div>
                @endif 
    @endsection 

    @section('footer')
      <script type="text/javascript"></script>
    @endsection