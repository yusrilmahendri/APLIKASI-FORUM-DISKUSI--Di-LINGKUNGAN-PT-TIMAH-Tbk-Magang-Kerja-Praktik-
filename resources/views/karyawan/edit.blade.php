@extends('layouts.master') 

@if(session('sukses'))
<div class="alert alert-success" role="alert">
    {{ session("sukses") }}
</div>
@endif 

@section('content')

<div class="main">
    <div class="main-content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">Edit Data Karyawan</h3>
                        </div>

        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">

                    <!-- enctype ini untuk file gambar maksud ea bebas inputan format -->
                    <form action="/karyawan/{{$karyawan->id}}/update" method="POST" enctype="multipart/form-data">                  
                                                                         
                        {{csrf_field()}}

                    <div class="form-group">
                        <label for="password">Password</label>
                    
                    <input type="password" class="form-control" name="password" placeholder="password" value="{{$karyawan->password}}" required/>
                </div>
                                        
                <button type="submit" class="btn btn-warning">
                        Update
                </button>
                                    
              </form>
            </div>
         </div>
      </div>
   </div>
</div>

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
            </div>
        </div>
    </div>
</div>