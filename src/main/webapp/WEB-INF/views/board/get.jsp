<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<script>
var appRoot = '${root}';
var bno = ${board.bno};
</script>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>



<title>Insert title here</title>
</head>
<body>
	<u:navbar></u:navbar>


	<div class="container-sm">
		<div class="row">
			<div class="col-12 col-lg-6 offset-lg-3">
				<h1>게시물 보기</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-lg-6 offset-lg-3">

			<form method="post" id="rentForm" name="rentform">
					
					<div class="form-group">
						<label for="input1">제목</label> <input name="title" readonly value='<c:out value="${board.title }" />' type="text"
							class="form-control" id="input1" >
					</div>
					
					<div class="form-group">
						<label for="input2">작성자</label> <input name="writer" readonly value='<c:out value="${board.writer }" />' type="text"
							class="form-control" id="input2" >
					</div>
					
					
					<div class="form-group">
						<label for="input3">내용</label> <input name="content" readonly value='<c:out value="${board.content }" />' type="text"
							class="form-control" id="input3" >
					</div>
					
					<div class="form-group">
						<label for="input4">대여여부</label> <input name="Jugment" readonly value='N' type="text"
							class="form-control" id="input4" >
					</div>
			
				
					
					<c:url value="/board/modify" var="modifyLink">
						<c:param name="bno" value="${board.bno }"></c:param>
						<c:param name="pageNum" value="${cri.pageNum }"></c:param>
						<c:param name="amount" value="${cri.amount }"></c:param>
						<c:param name="type" value="${cri.type }" ></c:param>
						<c:param name="keyword" value="${cri.keyword }" ></c:param>
					</c:url>
					<a href="${modifyLink }" class="btn btn-primary">
						수정
					</a>
				
					<a href="${root }/board/list" class="btn btn-secondary" role="button">
						돌아가기
					</a>
						<c:url value="/rent/register" var="rent_Link">
						<c:param name="bno" value="${board.bno }"></c:param>
						<c:param name="title" value="${board.title }"></c:param>
						</c:url>
					<a href="${rent_Link}" class="btn btn-secondary" role="button" id="rent_btn">
						대출하기
					</a>
					
					</form>
			</div>
		</div>
	</div>

</body>
</html>




