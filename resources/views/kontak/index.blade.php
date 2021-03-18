@extends('layouts.master')

@section('content')

 
 <!-- tabel -->
<div class="main">
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                <div class="panel-heading">
              <h3 class="panel-title">Data Kontak Pesan</h3>
          </div>


       
<div class="panel-body">
  <table class="table table-striped">
      <thead>
        <tr>
           <th>NAMA</th>
           <th>EMAIL</th>
           <th>pesan</th>
           <th>TINDAKAN</th>
        </tr>
    </thead>
 
  <tbody>
      @foreach($data_kontak as $kontak)
        <tr>
           <td>{{$kontak->nama}}</td>
           <td>{{$kontak->email}}</td>
           <td>{{$kontak->pesan}}</td>
           <td>
           <a href="#" class="btn btn-danger btn-sm delete" kontak-id ="{{$kontak->id}}">Delete</a></td>
        </tr>
    @endforeach
                     </tbody>
                 </table>
                   {{ $data_kontak->render() }}
                </div>
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
               var kontak_id = $(this).attr('kontak-id');
                  swal({
                     title: "YAKIN ?",
                      text: "Mau di hapus pesan ini dengan id"+kontak_id +  "??",
                      icon: "warning",
                      buttons: true,
                      dangerMode: true, })

            .then((willDelete) => {
                    if (willDelete) { window.location = "/kontak/"+kontak_id+"/delete";} 
       });
    });
   </script>
@stop



  