<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="common/head.jsp"/>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<script>
location.href = "${pageContext.request.contextPath}/login_form";
</script>
<jsp:include page="common/footer.jsp"/>

