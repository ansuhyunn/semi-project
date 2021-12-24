<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.kh.common.model.vo.PageInfo, java.util.ArrayList, com.kh.community.model.vo.Review" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Review> list = (ArrayList<Review>)request.getAttribute("list");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>

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
    #name1{
        width: 100%;
        font-size: 26px;
        font-weight: bolder;
        text-align: center;
    }
    /* 페이지 정렬 버튼 스타일 */
    .name>a{
        width: 6%; 
        font-size: 10px;
        padding-top: 20px;
        float: left;
        text-decoration: none;
        color: black;
    }
    .name>a:hover{font-weight: bolder; text-decoration: none; color: black;}
    .content1{
        width: 100%;
        height: 350px;
        margin: auto;
        margin-top: 30px;
    }
    .content{
        width: 20%;
        height: 100%;
        float: left;
        margin-left: 25px;
        margin-right: 25px;
        margin-bottom: 80px;
        margin-top: 0px;
        display: block;
    }
    .poster{
        width: 100%;
        height: 75%;
    }
    .info{
        width: 100%;
        height: 25%;
    }
    /* 텍스트 글자수 표시 제한*/
    .info>p{
        width: 100%;
        text-align: center;
        display: inline-block;
        overflow:hidden;
        text-overflow:ellipsis;
        white-space:nowrap; 
    }
    .title{font-weight: bolder; padding-top: 10px;}
    .summary{font-size: 12px; font-weight: bolder; margin-top: -20px;}
    .paging-area{
    	width: 100%;
    	margin-top: -10px;
    	margin-bottom: 100px;
    }

</style>
</head>
<body>

    <%@ include file="../common/menubar.jsp" %>

    <div class="wrapper">
        <div class="name">
            <div id="name1">REVIEW</div>
        </div>
        <br>
        <hr class="my-2">
        <div class="content1">
	        <% if(list.isEmpty()) { %>
	        	<p> 결과가 없습니다 </p>
	        <% } else {%> 
		        <% for(Review r : list){ %>
		            <div class="content" id="">
		           		<div class="poster">
		                	<a href="<%=request.getContextPath()%>/rvDetail.pro?num=<%= r.getRvNo() %>">
		                		<img src="<%=request.getContextPath()%>/<%= r.getMainImg() %>" width="100%" height="100%">
		                	</a>
		            	</div>
		            	<div class="info">
		                    <p class="title">
		                        <%= r.getReviewTitle() %>
		                    </p>
		                    <p class="summary">
		                        <%= r.getNickName() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= r.getReviewDate() %>
		                    </p>
		                </div>
		            </div>
		        <% } %> 
	        <% } %> 
    	</div>
    	
    </div> <!-- wrapper클래스 -->    
    
    <!-- 페이징바 -->
    <div class="paging-area" align="center">
    
		<% if(currentPage != 1){ %>
           	<button class="btn" onclick="location.href='<%=contextPath%>/review.pro?cpage=<%=currentPage-1%>';">&lt;</button>
           <% } %>
           
           <% for(int p=startPage; p <= endPage; p++){ %>
           	<% if(currentPage == p) {%>
           		<button class="btn" disabled><%= p %></button>		
            <% }else { %>
            	<button class="btn" onclick="location.href='<%=contextPath%>/review.pro?cpage=<%= p %>';"><%= p %></button>
            <% } %>
           <% } %>
           
           <% if(currentPage != maxPage){%>
           	<button class="btn" onclick="location.href='<%=contextPath%>/review.pro?cpage=<%=currentPage+1%>';">&gt;</button>
		<% } %>
			
     </div>
     

    
    <%@ include file="../common/footerbar.jsp" %>

</body>
</html>