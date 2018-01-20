<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../common/head.jsp" />
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="well well-sm">
				<form action="${pageContext.request.contextPath}/board/write" 
				class="form-horizontal" method="post">
					<fieldset>
						<legend id="legend" class="text-center header"> 게시글쓰기</legend>
						<div class="form-group">
							<span class="col-md-1 col-md-offset-2 text-center"> <i
								class="fa fa-user bigicon"></i></span>
							<div class="col-md-12">
								<input id="fname" name="title" type="text" placeholder="제 목"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<span class="col-md-1 col-md-offset-2 text-center"> <i
								class="fa fa-user bigicon"></i></span>
							<div class="col-md-12">
								<input id="lname" name="name" type="text" placeholder="글쓴이"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<span class="col-md-1 col-md-offset-2 text-center"> <i
								class="fa fa-pencil-square-o bigicon"></i></span>
							<div class="col-md-12">
								<textarea class="form-control" id="message" name="message"
									rows="10"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12 text-center">
								<button id="confirm-btn" type="submit" style="width: 200px"
									class="btn btn-primary btn-lg">확 인</button>
								<button id="cancelBtn" type="reset" style="width: 200px"
									class="btn btn-danger btn-lg">취 소</button>
								<button id="fileBtn" type="submit" style="width: 200px"
									class="btn btn-warning btn-lg">파일추가</button>
								<button id="list-btn" type="reset" style="width: 200px"
									class="btn btn-success btn-lg">목 록</button>
								
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>
<div class="modal fade alert" id="modal" tabindex="-1" role="dialog"
	aria-labelledby="modalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">x</span> <span class="sr-only">Close</span>
				</button>
				<h3 class="modal-title" id="modalLabel">정말 삭제하시겠습니까?</h3>
			</div>
			<div class="modal-body">
				<form action="">
					<div class="form-group">
						<label for="inputPass">Password</label> <input type="password"
							class="form-control" id="user-email2"
							placeholder="Enter Password">
					</div>
					<button type="submit" style="width: 200px"
						class="btn btn-primary center-block">확 인</button>
				</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../common/footer.jsp" />
<script>
$('#confirm-btn').click(function(){
	location.href = "${pageContext.request.contextPath}/move/board/detail";
});
$('#list-btn').click(function(){
	location.href = "${pageContext.request.contextPath}/move/board/list";
});
</script>