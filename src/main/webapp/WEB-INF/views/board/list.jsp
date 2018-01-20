<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:include page="../common/head.jsp"/>
<div style="height: 100px;width: 300px;margin: 0 auto">
	<h1 style="text-align: center;margin-top: 50px">게 시 글</h1>
</div>
<div style="width: 80%;margin:0 auto">
	<label for="">총 게시글 수: ${count}</label>
	<button id="write-btn" type="button" class="btn btn-warning" style="width: 200px;float:right">글쓰기</button>
</div>
<div style="margin-top: 20px">
	<div class="input-group mb-3" style="width:80%;margin: 0 auto;">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01"></label>
  </div>
  <select class="custom-select" id="select">
    <option selected value="seq">ID</option>
    <option value="title">제 목</option>
    <option value="name">이 름</option>
  </select>
  <input id="search-word" type="text" class="form-control" aria-label="Text input with dropdown button">
  <button id="search-btn" type="button" class="btn btn-dark" style="width: 200px">검 색</button>
</div>

  
</div>
	

<table id="board_table">
  <tr>
    <th>번 호</th>
    <th>글쓴이</th>
    <th>제 목</th>
    <th>내 용</th>
    <th>등록일</th>
    <th>수정 / 삭제</th>
  </tr>
  <c:forEach var="article" items="${articles}">
  	<tr>
    <td>${article.seq}</td>
    <td>${article.id}</td>
    <td>${article.title}</td>
    <td>${article.content}</td>
    <td>${article.regdate}</td>
    <td>
    	<a href="">수정</a> /
    	<a href="${pageContext.request.contextPath}/board/delete/${article.seq}">삭제</a>
    </td>
  </tr>
  </c:forEach>
  
  
</table>
<nav aria-label="Page navigation example" style="width: 30%;margin:50px auto">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">4</a></li>
    <li class="page-item"><a class="page-link" href="#">5</a></li>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>
<jsp:include page="../common/footer.jsp"/>
<script>
$('#write-btn').click(function(){
	location.href = "${pageContext.request.contextPath}/move/board/write";
});
$('#search-btn').click(function(){
	location.href = "${pageContext.request.contextPath}/board/search/"
	+$('#select').val()+"/"+$('#search-word').val();
});
</script>















