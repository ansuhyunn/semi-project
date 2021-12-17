<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	div{ box-sizing:border-box; }
    .wrapper{
        width: 1000px;
        height: 1200px;
        top: 0; left: 0; right: 0; bottom: 0; margin: auto;
        margin-top: 50px;
    }
     /* 페이지 이름 스타일 */
    .name{ width: 100%; height: 30px; }
    #name1{
        width: 100%;
        font-size: 24px;
        font-weight: bolder;
        text-align: center;
    }
    /* 페이지 정렬 버튼 스타일 */
    #name2{border:1px solid black; width: 500px; marginl-left: 500px;}
    #name2>a{
    	border:1px solid black;
        width: 50px; 
        font-size: 15px;
        margin-top: 10px;
        padding-top: 10px;
        margin-left: 100px;
        float: left;
        text-decoration: none;
        color: black;
        text-align: center;
    }
    #name2>a:hover{font-weight: bolder; text-decoration: none; color: black;}
    #content1{
        width: 100%;
        height: 300px;
        margin: auto;
        margin-top: 20px;
        margin-bottom: 50px;
    }
    #content{
        width: 20%;
        height: 100%;
        float: left;
        margin-left: 25px;
        margin-right: 25px;
        margin-bottom: 50px;
        margin-top: 0px;
        display: block;
    }
    .poster{
        width: 100%;
        height: 75%;
        width: 100%;
        height: 80%;
    }
    .info{
        width: 100%;
        height: 25%;
    }
    .info>p{
        width: 100%;
        text-align: center;
        display: inline-block;
        overflow:hidden;
        text-overflow:ellipsis;
        white-space:nowrap; 
    }
    .title{font-weight: bolder; padding-top: 10px;}
    .summary{font-size: 12px; font-weight: bolder; margin-top: -10px;}
</style>

</head>
<body>

    <%@ include file="../common/menubar.jsp" %>

    <div class="wrapper">
        <div class="name">
            <div id="name1">BEST 전시</div>
            <br>
            <div id="name2">
	            <a href="<%=request.getContextPath()%>/">주간</a>
	            <a href="<%=request.getContextPath()%>/">월간</a>
            </div>
        </div>
        <br>
        <hr class="my-2">
        
    </div>   <!-- wrapper클래스 -->
    
    
    <%@ include file="../common/footerbar.jsp" %>
     
</body>
</html>