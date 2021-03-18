
@extends('layouts.master')

@section('content')
  <div class="main">
    <div class="main-content">
      <div class="container-fluid">
         <div class="row">
            <div class="col-md-12">
               <div class="panel">
                  <div class="panel-heading">
  	                  <h3 class="panel-title">FORUM ADMIN</h3>        
  </div>

  <div class="panel-body">
    <ul class="list-unstyled activity-list">
   	 @if($diskusi->count())
       @foreach($diskusi as $frm)
   	     <li>

          <!-- kondiskan untuk ambil gambar jika true maka nampil else maka default gamabr -->
   		      <img src="

            @if($frm->user->karyawan)
           {{$frm->user->karyawan->getAvatar()}} 
              @else
                 /images/default.jpg
               @endif "
          
          alt="avatar" class="img-circle pull-left avatar" style="width: 40px; height: 40px;">
   		       <p><a href="#">{{$frm->user->name}} : {{$frm->judul}}
               <p><span class="timesstamp">{{$frm->created_at->diffForHumans()}}</span></p></p>
   	    </li>
        
        <a href="#" class="btn btn-danger btn-sm delete" diskusi-id ="{{$frm->id}}"><i class="fas fa-trash-alt"> Delete</i></a></td> 
   	  @endforeach

                      </ul>
                      {{$diskusi->render()}}
                      @endif
                   </div>
                </div>			
             </div>
          </div>		
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
    <script>
          $('.delete').click(function() {
               var diskusi_id = $(this).attr('diskusi-id');
                  swal({
                     title: "YAKIN ?",
                      text: "Mau di hapus pesan ini dengan id"+diskusi_id +  "??",
                      icon: "warning",
                      buttons: true,
                      dangerMode: true, })

            .then((willDelete) => {
                    if (willDelete) { window.location = "/diskusiadmin/"+diskusi_id+"/delete";} 
       });
    });
    </script>
  @stop
