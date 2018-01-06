<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../common/head.jsp"/>
<div style="height: 100px;width: 300px;margin: 0 auto">
	<h1 style="text-align: center;margin-top: 50px">게 시 글</h1>
</div>
<div style="width: 80%;margin:0 auto">
	<label for="">총 게시글 수: 100</label>
	<button id="write_btn" type="button" class="btn btn-warning" style="width: 200px;float:right">글쓰기</button>
</div>
<div style="margin-top: 20px">
	<div class="input-group mb-3" style="width:80%;margin: 0 auto;">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01"></label>
  </div>
  <select class="custom-select" id="inputGroupSelect01">
    <option selected>제 목</option>
    <option value="1">ID</option>
    <option value="2">이 름</option>
  </select>
  <input type="text" class="form-control" aria-label="Text input with dropdown button">
  <button type="button" class="btn btn-dark" style="width: 200px">검 색</button>
</div>

  
</div>
	

<table id="board_table">
  <tr>
    <th>Company</th>
    <th>Contact</th>
    <th>Country</th>
  </tr>
  <tr>
    <td>Alfreds Futterkiste</td>
    <td>Maria Anders</td>
    <td>Germany</td>
  </tr>
  <tr>
    <td>Centro comercial Moctezuma</td>
    <td>Francisco Chang</td>
    <td>Mexico</td>
  </tr>
  <tr>
    <td>Ernst Handel</td>
    <td>Roland Mendel</td>
    <td>Austria</td>
  </tr>
  <tr>
    <td>Island Trading</td>
    <td>Helen Bennett</td>
    <td>UK</td>
  </tr>
  <tr>
    <td>Laughing Bacchus Winecellars</td>
    <td>Yoshi Tannamuri</td>
    <td>Canada</td>
  </tr>
  <tr>
    <td>Magazzini Alimentari Riuniti</td>
    <td>Giovanni Rovelli</td>
    <td>Italy</td>
  </tr>
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
$('#write_btn').click(function(){
	location.href = "${pageContext.request.contextPath}/board/write_form";
});
</script>















