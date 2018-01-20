<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="common/head.jsp"/>
<style>
#box{width: 500px;height: 200px;margin: 50px auto;}
#login-btn{width:200px;height: 200px;background: yellow;}
#board-btn{width:200px;height: 200px;background: green;margin-left: 50px;}
</style>
<div id="box">
<button id="login-btn">LOGIN</button> 
<button id="board-btn">BOARD</button>
</div>

<script>
$(function(){
	$('#login-btn').click(function(){
		location.href = "${pageContext.request.contextPath}/main";
	});
	$('#board-btn').click(function(){
		location.href = "${pageContext.request.contextPath}/board/list";
	});
});

</script>


