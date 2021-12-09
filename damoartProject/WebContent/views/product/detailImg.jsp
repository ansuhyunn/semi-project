<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product" %>
<% 
	ArrayList<Product> detailImg = (ArrayList<Product>)request.getAttribute("detailImg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	
	<%@ include file="../product/detailImg.jsp" %>
	
	이거나오나요?
	
	<%@ include file="../common/footerbar.jsp" %>

</body>
</html>