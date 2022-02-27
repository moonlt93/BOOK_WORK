<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>

<link href="jquery-ui.css" rel="stylesheet"></link>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>



<script>
$(document).ready(function() {
	
	
	$('#validation_btn').click(function(){
		
		   var pwd1 = $("#password_1").val();
	        var pwd2 = $("#password_2").val();
	        
	        if ( pwd1 != '' && pwd2 == '' ) {
	           null;
	        } else if (pwd1 != "" || pwd2 != "") {
	            if (pwd1 == pwd2) {
	                $("#alert-success").css('display', 'inline-block');
	                $("#alert-danger").css('display', 'none');
	            } else {
	                alert("비밀번호가 일치하지 않습니다. 비밀번호를 재확인해주세요.");
	                $("#alert-success").css('display', 'none');
	                $("#alert-danger").css('display', 'inline-block');
	            }
	        }
	  
	
	});
	
		
		function RegisterForm(){
		    var regform = document.registerForm2;
		    var UserId = regform.UserId.value;
		    var Password = regform.Password.value;
		    
		    if(!UserId || !Password){
		        alert("아이디와 비밀번호를 모두 입력해주세요.")
		    }else{
		    	regform.submit();
		    }
		}

		
		
		$('#register_btn').click(function(){
			
			
			var queryString = $('#registerForm2').serialize();
		
			$.ajax({
				type:'post',
				url:'/UserInfo/register',
				data:form,
				dataType:'html',
				success: function(data){
				alert("데이터전송 성공");
				},
				error: function(error){
					alert("에러");
				}
			});
		  });
		

	});


</script>
<title>Insert title here</title>
</head>
<body>
	<u:navbar></u:navbar>

	<div class="container-sm">

		<div class="row">
			<div class="col-12 col-sm-6 offset-sm-3">
			
				<form method="post" id="registerForm2" name="registerForm2" action="${root}/UserInfo/register">
					<div class="form-group">
					<label for="input1">이름</label> <input name="name" type="text"
							class="form-control" id="input1" placeholder="이름을 입력하세요.">
					</div>
				    <div class="form-group">
						<label for="input2">연락처</label> <input name="phone" type="text"
							class="form-control" id="input2" placeholder="아이디를 입력하세요.">
					</div>
				    <div class="form-group">
						<label for="input3">주소</label> <input name="Address" type="text"
							class="form-control" id="input3" placeholder="주소를 입력하세요.">
					</div>
					<div class="form-group">
						<label for="input4">등급</label> <input name="Grade" type="text"
							class="form-control" id="input4" placeholder="등급을 입력하세요."
							value="3" readonly>
					</div>


					<div class="form-group">
						<label for="input5">UserId</label> <input name="UserId" type="text"
							class="form-control" id="input5" placeholder="아이디를 입력하세요.">
					</div>
					<div class="form-group" id="password">
					<div class="form-group">
						<label for="input6">Password</label> <input name="UserPw" type="text"
							class="form-control" id="UserPw2" placeholder="패스워드를 입력하세요.">
					</div>
					<div class="form-group">
						<label for="input6">비밀번호 확인</label> <input name="UserPw2" type="text"
							class="form-control" id="UserPw2" placeholder="패스워드를 입력하세요.">
					</div>
					<button id="validation_btn" type="button" onclick="test()">비밀번호 확인</button>
					</div>

					<button id="register_btn"  type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
