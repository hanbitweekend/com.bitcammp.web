<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../common/head.jsp" />
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="well well-sm">
				
					<fieldset>
						<legend id="legend" class="text-center header"> 게시글 상세</legend>
						<div class="form-group">
							<span class="col-md-1 col-md-offset-2 text-center"> <i
								class="fa fa-user bigicon"></i></span>
							<div class="col-md-12">
								<input id="fname" name="title" type="text" placeholder="제 목"
								value="${article.title}"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<span class="col-md-1 col-md-offset-2 text-center"> <i
								class="fa fa-user bigicon"></i></span>
							<div class="col-md-12">
								<input id="lname" name="name" type="text" placeholder="글쓴이"
								value="${article.id}"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<span class="col-md-1 col-md-offset-2 text-center"> <i
								class="fa fa-pencil-square-o bigicon"></i></span>
							<div class="col-md-12">
								<textarea class="form-control" id="message" name="message"
									rows="10">${article.content}</textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12 text-center">
								<button id="update-btn" style="width: 200px"
									class="btn btn-primary btn-lg">수 정</button>
								<button id="cancelBtn" type="reset" style="width: 200px"
									class="btn btn-danger btn-lg">취 소</button>
								
								<button id="cancelBtn" type="reset" style="width: 200px"
									class="btn btn-success btn-lg">목 록</button>
								
							</div>
						</div>
					</fieldset>
				
			</div>
		</div>
	</div>
</div>

<jsp:include page="../common/footer.jsp" />
<script>
$('#update-btn').click(function(){
	location.href = "${pageContext.request.contextPath}/move/board/update/${article.seq}";
});
</script>