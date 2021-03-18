<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>{{config('forum.title')}}</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="{{ asset('frontend') }}/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('frontend') }}/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{ asset('frontend') }}/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('frontend') }}/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="{{ asset('frontend') }}/plugins/iCheck/square/blue.css">

  <!-- font awessome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  </head>

  <body class="hold-transition register-page">
    
    <div class="register-box">
       <div class="register-logo">
          <a href="/daftar"><b>Sign</b>Up</a>
    </div>

    <div class="register-box-body">
       <p class="login-box-msg">Register a new membership</p>

    <form action="/postregister" method="POST">
     
      {{csrf_field()}}
    
    <div class="form-group has-feedback">
      <input type="text" class="form-control" name="nama" placeholder="Full name" required>
        <span class="glyphicon glyphicon-user form-control-feedback" required></span>
    </div>
    
    <div class="form-group has-feedback">
       <input type="email" class="form-control" name="email" placeholder="Email" required>
          <span class="glyphicon glyphicon-envelope form-control-feedback" required></span>
    </div>

    <div class="form-group has-feedback">
      <input type="password" class="form-control" name="password" placeholder="Password" required>
       <span class="glyphicon glyphicon-lock form-control-feedback"></span>
    </div>

    <div class="form-group has-feedback">
      <input type="text" class="form-control" name="no_telp" placeholder="No Telp" required>
        <span class="glyphicon glyphicon-phone form-control-feedback"></span>
    </div>

   <div class="form-group has-feedback">
     <select class="form-control" id="jenis_kelamin" name="jenis_kelamin">
       <option value="male">laki-laki</option>
       <option value="pemale">perempuan</option>
    </select>
   </div>

    <div class="row">
      <div class="col-xs-8">
        <div class="checkbox icheck">
           <a href="/login" class="text-center">I already have a membership</a>
        </div>
      </div>
    
        <!-- /.col -->
    <div class="col-xs-4">
      <button type="submit" class="btn btn-primary btn-block btn-flat ">Register</button>
    </div>

      </div>
    </form>      
  </div>
</div>


  <!-- jQuery 3 -->
<script src="{{ asset('frontend') }}/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="{{ asset('frontend') }}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="{{ asset('frontend') }}/plugins/iCheck/icheck.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
  $(function () {
     swal("Hello selamat datang, Isi data anda yang benar");
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>

</body>
</html>
