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

		var UserId=session.getId();
		
		$('#register_btn').click(function(){
			
			
			var queryString = $('#registerForm2').serialize();
		
			$.ajax({
				type:'post',
				url:'/rent/register',
				data: queryString,
				dataType:'json',
				success: function(data){
				alert("데이터전송 성공");
				console.log(data);
				},
				error: function(error){
					alert("에러");
				}
			});
		  });
		
		
	});

	function autoDate () {
		var tDay = new Date();
		var tMonth = tDay.getMonth()+1;
		var tDate = tDay.getDate();

		if ( tMonth < 10) tMonth = "0"+tMonth;
		if ( tDate < 10) tDate = "0"+tDate;
		document.getElementById("tDate").value = tDay.getFullYear()+"년"+tMonth+"월"+tDate+"일";

	 }
	function addLoadEvent(func) {
		  var oldonload = window.onload;
		  if (typeof window.onload != 'function') {
		    window.onload = func;
		  } else {
		    window.onload = function() {
		      if (oldonload) {
		        oldonload();
		      }
		      func();
		    }
		  }
		}

		addLoadEvent(function() {
		  autoDate();
		});
		
		function checkModal(result) {
			if (result === '' || history.state) {
				return;
			}
			
			if (parseInt(result) > 0) {
				$("#myModal .modal-body p")
 				 .html("게시글 " + result + "번이 등록되었습니다.");
			}
			$("#myModal").modal("show");
		}
		

		var result = '${result}';
		var message = '${message}';
		
	
		checkModal2(message);
		
		history.replaceState({}, null, null);
		
		function checkModal2(message) {
			if (message && history.state == null) {
				$("#myModal .modal-body p").html(message);
				$("#myModal").modal("show");
			}
		}
		

</script>
<title>Insert title here</title>
</head>
<body>
	<u:navbar></u:navbar>

	<div class="container-sm">

		<div class="row">
			<div class="col-12 col-sm-6 offset-sm-3">
			
				<form method="post" id="registerForm2" name="registerForm2" action="${root }/rent/register">
					
					
				    <div class="form-group">
						<label for="input2">UserId</label> <input name="UserId" type="text"
							class="form-control" id="input2"value="${member.userId}" readonly>
					</div>
				    <div class="form-group">
						<label for="input3">제목</label> <input name="Title" type="text"
							class="form-control" id="input3"  value='${board.title}' readonly>
					</div>
					<div class="form-group">
						<label for="input5">등록번호</label> <input name="bno" type="number"
							class="form-control" id="input5"  value='${board.bno}'  readonly>
					</div>
					<div class="form-group">
						<label for="tDate">Rent_Date</label> <input id="tDate" name="Rent_Date" type="text"
							class="form-control" readonly>
					</div>

					
					<button id="register_btn"  type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>
	
<div id="myModal" class="modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">알림</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>처리가 완료되었습니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

</body>
</html>
