<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../common/head.jsp"/>
<table id="login_table" style="width: 100%;height: 600px">
	<tr style="width: 100%;height: 30%">
		<td style="width: 33%;"></td>
		<td style="width: 33%;"><h1 style="text-align: center;">로그인 화면</h1></td>
		<td style="width: 33%;"></td>
	</tr>
	<tr style="width: 100%;height: 30%">
		<td></td>
		<td>
			<form id="" action="${pageContext.request.contextPath}/member/login">
			  <div class="form-group">
			    <label for="exampleInputEmail1">ID</label>
			    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
			    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">Password</label>
			    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
			  </div>
			  <button type="submit" class="btn btn-primary" style="width: 40%;margin-left: 30px;margin-right: 20px">로 그 인</button>
			  <button type="reset" class="btn btn-warning" style="width: 40%;">취 소</button>
			</form>
		</td>
		<td></td>
	</tr>
	<tr style="width: 100%;height: 30%"> 
		<td></td>
		<td></td>
		<td></td>
	</tr>
</table>


<jsp:include page="../common/footer.jsp"/>