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
	           <img src="{{$karyawan->getAvatar()}}" class="img-circle" style="width:320px;height:320px;" alt="Avatar">
           
	              <h3 class="name">{{$karyawan->nama}}</h3>
	                <span class="status status-available"></span>
	        </div>
	
	<div class="profile-stat">
	   <div class="row">
	     <div class="col-md-4 stat-item"><span></span>
	</div>
	
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
           <li>
             <i class="fas fa-key activity-icon"></i>
                <p><span>{{$karyawan->password}}</span></p>
           </li>
         
          <li>
            <i class="fas fa-envelope activity-icon"></i>
               <p><span>{{$karyawan->email}}</span></p>
          </li>

         <li>
            <i class="fas fa-phone activity-icon"></i>
               <p><span>{{$karyawan->no_telp}}</span></p>
         </li>
 
         <li>
           <i class="fas fa-venus-mars activity-icon"></i>
               <p><span>{{$karyawan->jenis_kelamin}}</span></p>
         </li>
     </ul>

<div class="margin-top-30 text-center"><a href="/karyawan/{{$karyawan->id}}/edit" class="btn btn-warning">Edit Profile</a></div>
    </div>
    
     	<!-- END TABBED CONTENT -->
	               </div>
     	<!-- END RIGHT COLUMN -->
        	     </div>
	          </div>
	       </div>
      </div>
	<!-- END MAIN CONTENT -->
  </div>
@stop