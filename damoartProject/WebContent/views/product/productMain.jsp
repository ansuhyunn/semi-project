<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product" %>
<% 
	ArrayList<Product> freeList = (ArrayList<Product>)request.getAttribute("freeList");
	ArrayList<Product> monthList = (ArrayList<Product>)request.getAttribute("monthList");
	ArrayList<Product> regionList = (ArrayList<Product>)request.getAttribute("regionList");
%>>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    div{ box-sizing:border-box; }
    .wrapper{
        width: 1000px;
        height: 1000px;
        top: 0; left: 0; right: 0; bottom: 0; margin: auto;
        margin-top: 50px;
    }

     /* 페이지 이름 스타일 */
    .name{ width: 100%; height: 30px; }
    .name>div{float: left;}
    #name1{
        width: 95%;
        font-size: 23px;
        font-weight: bolder;
        float: left;
    }
    .name>a{
        width: 5%; 
        font-size: 10px;
        text-decoration: none;
        padding-top: 20px;
        float: left;
        color: black;
    }
    .name>a:hover{font-weight: bolder; text-decoration: none; color: black;}

    /* 본문 스타일 */
    .content1{
        width: 100%;
        height: 250px;
        margin: auto;
        margin-top: 20px;
        margin-bottom: 50px;
    }
    .content{
        border: 1px solid black;
        width: 20%;
        height: 100%;
        float: left;
        margin-left: 40px;
        margin-bottom: 10px;
        margin-top: 0px;
        display: block;
    }
</style>
</head>

<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="wrapper">
        <div class="name">
            <div id="name1">이달의 전시</div>
            <a href="<%=request.getContextPath() %>/month.pro">+더보기</a>
            
        </div>
        <hr class="my-2">
        <div class="content1">
            <div class="content" id="">
            	
            </div>
        </div>
        <div class="name">
            <div id="name1">지역별 전시</div>
            <a href="<%=request.getContextPath() %>/region.pro">+더보기</a>
        </div>
        <hr class="my-2">
        <div class="content1">
	        <div class="content" id="">
	           	
		    </div>
        </div>
        <div class="name">
            <div id="name1">무료 전시</div>
            <a href="<%=request.getContextPath() %>/free.pro">+더보기</a>
        </div>
        <hr class="my-2">
        <div class="content1">
       
        	
        </div>

    </div> <!-- wrapper클래스 -->

    <%@ include file="../common/footerbar.jsp" %>

</body>
</html>