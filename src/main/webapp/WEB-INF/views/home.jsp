<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<html>
<head>
	<title>Home</title>
</head>
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
$(document).ready(function(){
	$("#logoutBtn").on("click", function(){
		location.href="${root}/UserInfo/logout";
	})
	
})
</script>

<body>

 <u:navbar />
  <div class="container">
    <div class="jumbotron">
      <h1 class="display-4">도서 대출서비스.</h1>
      <p class="lead">안녕하세요. 숭실대도서관입니다. 무엇을 도와 드릴까요?</p>
      <hr class="my-4">
      <p>어떤 책이 있을까요?</p>
      <a class="btn btn-primary btn-lg" href="${root }/board/list" role="button">도서리스트</a>
    </div>
  </div>
  

  
</body>
</html>
