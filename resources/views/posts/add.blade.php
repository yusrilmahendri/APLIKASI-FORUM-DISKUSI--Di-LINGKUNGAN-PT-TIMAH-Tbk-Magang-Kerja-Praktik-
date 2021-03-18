@extends('layouts.master')

@section('content')

  <div class="main">
    <div class="main-content">
       <div class="container-fluid">
          <div class="row">
             <div class="col-md-12">
               <div class="panel">
                  <div class="panel-heading">
                    <h3 class="panel-title">Add New Post</h3>
  </div>

  <div class="panel-body">
   <div class="col-md-6">
    <form action="{{route('posts.create')}}" method="POST" enctype="multipart/form-data">
  
      {{csrf_field()}}

      <div class="form-group{{$errors->has('title') ? 'has-error' : ''}}">
        <label for="title">Title</label>
           <input type="text" name="title" class="form-control" id="title" placeholder="Title" value="{{old('title')}}">  
        
        @if($errors->has('title'))
        <span class="help-block">{{$errors->first('title')}}</span>
        @endif 
      </div>

      <div class="form-group">
        <label for="content">Content</label>
        <textarea class="form-control" id="content" name="content" rows="3">{{old('alamat')}}</textarea>
      
         </div>
      </div>
 
   <div class="col-md-4">
      <div class="input-group">
        <span class="input-group-btn">
          <a id="lfm" name="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
             <i class="fa fa-picture-o" style="margin-top: "></i> Choose
        </a>
    </span>
  
  <input id="thumbnail" class="form-control" type="text" name="thumbnail">
    
      </div>
        <img id="holder" style="margin-top:15px;max-height:100px;">
      </div>

      <div class="input-group">
         <input type="submit"class="btn btn-info pull-right" value="Submit">
     </div>
   
              </div>
            </div>
           </div>
         </div>
       </div>
     </div>
  </div>
</div>
     
          
  @stop

   @section('footer')
  <script src="/vendor/laravel-filemanager/js/lfm.js"></script>
  <script>
    ClassicEditor
        .create(document.querySelector('#content'))
        .catch(error => {
            console.error( error );
        });
      $(document).ready(function() {
      $('#lfm').filemanager('image');     
     });
  </script>
  @stop

  