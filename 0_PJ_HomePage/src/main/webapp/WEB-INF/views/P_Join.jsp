<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Register</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script>



	
	$(document).ready(function(){
		
		var emailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		//이메일 유효성


		
		$("#login").click(function(){
			if($("#user_id").val() == ""){
				alert("아이디를 입력해주세요");
				return false;
			}
			if($("#user_name").val() ==""){
				alert("이름을 입력하세요");
				alert()
				return false;
			}
			if(!emailCheck.test($("#user_email").val())){
				alert("이메일 형식을 지켜주세요");
				return false;
			}
			if($("#user_pwd").val() == ""){
				alert("비밀번호를 입력해 주세요");
				return false;
			}
/* 			var pw = $("#user_pwd").val();
			//비밀번호 값
			var num = pw.search(/[0-9]/g); 
			//비밀번호 유효성 숫자 0~9
			var eng = pw.search(/[a-z]/ig); 
			//비밀번호 유효성 영문 소문자 a-z
			var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			//비밀번호 유효성 특수문자
			
    			if(pw.length <8 || pw.length > 20){
    				alert("8자리 ~ 20자리 이내로 입력해주세요");
    				return false;
    			}else if(pw.search(/\s/) != -1){
    				alert("비밀번호에 공백은 들어갈 수 없습니다.");
    			}else if(spe < 0 || eng <0 || num<0){
    				alert("영문,숫자,특수문자를 혼합하여 입력해주세요");
    				return false;
    			}
 */
    			if($("#user_pwd_check").val() == ""){
    				alert("비밀번호를 다시 한번 입력해주세요");
    				return false;
    			}
/*     			
    			if($("#user_pwd").val() != $("#user_pwd_check").val()){
    				alert("입력하신 비밀번호와 일치하지 않습니다.");
    				return false;
    			} */
    			$("#frmJoin").submit();
		})
	})
	
</script>
<body class="bg-gradient-primary">

  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
              </div>
              
              <form action="Join_Post" method="POST" id="frmJoin" > 
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" id="user_id" name="U_ID" placeholder="ID" >
                  </div>
                  <div class="col-sm-6">
                    <input type="text" class="form-control form-control-user" id="user_name" name="U_NAME" placeholder="NAME">
                  </div>
                </div>
                <div class="form-group">
                  <input type="email" class="form-control form-control-user" id="user_email" name="U_EMAIL" placeholder="EMAIL" >
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="password" class="form-control form-control-user" id="user_pwd" name="U_PWD" placeholder="Password">
                  </div>
                  <div class="col-sm-6">
                    <input type="password" class="form-control form-control-user" id="user_pwd_check" name="U_PWD_CHECK" placeholder="Repeat Password">
                  </div>
                </div>
              </form>
              
                <a href="#" id="login" class="btn btn-primary btn-user btn-block">
                  Register Account
                </a>
                <hr>
                <a href="index.html" class="btn btn-google btn-user btn-block">
                  <i class="fab fa-google fa-fw"></i> Register with Google
                </a>
                <a href="index.html" class="btn btn-facebook btn-user btn-block">
                  <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                </a>
              <hr>
              <div class="text-center">
                <a class="small" href="forgot-password.html">Forgot Password?</a>
              </div>
              <div class="text-center">
                <a class="small" href="login.html">Already have an account? Login!</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
