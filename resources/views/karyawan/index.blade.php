@extends('layouts.master')

@section('content')

 
 <!-- tabel -->
<div class="main">
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                      
          <div class="left">                         
             <form class="navbar-form navbar-left" method="GET" action="/karyawan">
                 <div class="input-group">
                   <input type="Search" name="cari" class="form-control" placeholder="Search...">
                      <span class="input-group-btn"><button type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button></span>
          </div>
              </form>
                    </div>
                <div class="panel-heading">
           <div class="right">
        <button type="button" class="btn" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-user-plus"></i>
     </button>
   </div>
 </div>




<!-- insert data user -->        
<div class="panel-body">
  <table class="table table-striped" id="datatable">
      <thead>
        <tr>
           <th>NAMA</th>
           <th>EMAIL</th>
           <th>NO TELP</th>
           <th>JENIS KELAMIN</th>
           <th>TINDAKAN</th>
        </tr>
    </thead>
 
  <tbody>
      @foreach($data_karyawan as $karyawan)
        <tr>
           <td><a href="/karyawan/{{$karyawan->id}}/profile">{{$karyawan->nama}}</a></td>
           <td>{{$karyawan->email}}</td>
           <td>{{$karyawan->no_telp}}</td>
           <td>{{$karyawan->jenis_kelamin}}</td>
           <td><a href="/karyawan/{{$karyawan->id}}/edit"class="btn btn-warning sm"><i class="fas fa-user-edit"> Edit</i></a>
           <a href="#" class="btn btn-danger btn-sm delete" karyawan-id ="{{$karyawan->id}}"><i class="fas fa-trash-alt"> Delete</i></a></td>
        </tr>
    @endforeach
                     </tbody>
                  </table>
                      <div class="d-flex justify-content-center">
                       {!! $data_karyawan->links() !!}
                    </div>
                </div>
              </div>
           </div>
        </div>
      </div>    
    </div>   
  </div>


<!-- daftar -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
           <h5 class="modal-title" id="exampleModalLabel">DAFTARKAN</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
              </button>
          </div>
       

<div class="modal-body">
    <form action="/karyawan/create" method="POST">
       {{csrf_field()}} 
          <div class="form-group">
             <label for="nama">Nama</label> 
                 <input type="text" name="nama" class="form-control" placeholder="nama" aria-describedby="nama" required>
                   <small id="nama" class="form-text text-muted">We'll never share your nama with anyone else.</small>
           </div>

<div class="form-group">
   <label for="password">Password</label>
      <input type="password" class="form-control" name="password" placeholder="password" required>
</div>
   
<div class="form-group">
    <label for="email">Email</label>
    
      <input type="email" placeholder="Email" class="form-control" id="email" name="email" required>

      

</div>

<div class="form-group">
   <label for="no_telp">No telp</label>
       <input type="text" placeholder="No telp" class="form-control" id=" no_telp" name="no_telp" required>
</div>

<label for="jenis_kelamin"> Pilih Jenis Kelamin</label>
   <select class="form-control" id="jenis_kelamin" name="jenis_kelamin">
      <option value="male">laki-laki</option>
        <option value="pemale">perempuan</option>
   </select>

<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       <button type="submit" class="btn btn-primary">Submit</button>
   </div>
</form>
               </div>
            </div>
          </div>
       </div>
    </div>
  </div>  
@stop


@section('footer')
  <script type="text/javascript">
 $('.delete').click(function() {
               var karyawan_id = $(this).attr('karyawan-id');
                  swal({
                     title: "YAKIN ?",
                      text: "Mau di hapus data karyawan ini dengan id"+karyawan_id +  "??",
                      icon: "warning",
                      buttons: true,
                      dangerMode: true, })

            .then((willDelete) => {
                    if (willDelete) { window.location = "/karyawan/"+karyawan_id+"/delete";} 
       });
    });         
   </script>
@stop



  