<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-sm mb-3">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="${root}/">MAIN</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
      	<c:url value="/board/list" var="listLink" ></c:url>
        <a class="nav-link" href="${listLink }">도서목록 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <c:if test="${member.grade == '1'}">
      	<c:url value="/board/register" var="registerLink" ></c:url>
        <a class="nav-link" href="${registerLink}">책등록</a>
      	</c:if>
      </li>
      <li class="nav-item">
		<c:if test="${member != null}"><a class="nav-link" href="/UserInfo/logout">로그아웃 <span class="sr-only">(current)</span></a></c:if>
		<c:if test="${member == null}"><a class="nav-link" href="/UserInfo/GetLogin">로그인 <span class="sr-only">(current)</span></a></c:if>
								 
	</li>
	<li class="nav-item">
	<c:if test="${member == null}">  <a class="nav-link"  href="/UserInfo/Getregister">회원가입 <span class="sr-only">(current)</span></a></c:if>
	</li>
	<li>
		<c:if test="${member != null}">
			<p>${member.userId}님 안녕하세요.</p>
		</c:if>
	</li>
    </ul>
    
    <form action="${root }/board/list" id="searchForm" class="form-inline my-2 my-lg-0">
      <select name="type" class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
	    <option value="T" ${pageMaker.cri.type eq 'T' ? 'selected' : '' }>제목</option>
	    <option value="C" ${pageMaker.cri.type eq 'C' ? 'selected' : '' }>내용</option>
	    <option value="W" ${pageMaker.cri.type eq 'W' ? 'selected' : '' }>작성자</option>
	    <option value="TC" ${pageMaker.cri.type eq 'TC' ? 'selected' : '' }>제목 or 내용</option>
	    <option value="TW" ${pageMaker.cri.type eq 'TW' ? 'selected' : '' }>제목 or 작성자</option>
	    <option value="TWC" ${pageMaker.cri.type eq 'TWC' ? 'selected' : '' }>제목 or 내용 or 작성자</option>
	  </select>
      <input name="keyword" required value="${pageMaker.cri.keyword }" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <input type="hidden" name="pageNum" value="1" />
      <input type="hidden" name="amount" value="${pageMaker.cri.amount }" />
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

</div>