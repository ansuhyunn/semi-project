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
   
    .wrap{
        background:#e1d5bf;
        color: black;
        width: 1000px;
        height: 1000px;
        margin: auto;
        margin-top: 50px;
    }
    .review-list{
        width:980px;
        margin:auto;
    }
     /*전시회 썸네일 - 전시회 썸네일 크기 적당한 사이즈 찾을것(리사이즈)*/
    .thumbnail{
        border:1px solid black; /*경계선 구분용---다하고 지움*/
        width:210px;
        display:inline-block;
        margin:15px;
    }
    .thumbnail:hover{
    	cursor:pointer;
    	opacity:0.6;
    }

    /*상단 현재 보고있는 카테고리 표시*/
    #review_on{
        width: 100%;
        font-size: 25px;
        padding: 30px;
    }

</style>
</head>
<body>

    <%@ include file="../common/menubar.jsp" %>

    <div class="wrapper">
        <div class="name">
            <div id="name1">REVIEW 게시판</div>
        </div>
        <hr class="my-2">
        <div class="content1">
	        <% if(list.isEmpty()) { %>
	        	<p> 결과가 없습니다 </p>
	        <% } else {%> 
		        <% for(Review r : list){ %>
		            <div class="content" id="">
		           		<div class="poster">
		                	<a href="<%=request.getContextPath()%>/detail.pro?num=<%= r.getRvNo() %>">
		                		<img src="<%=request.getContextPath()%>/<%= r.getMainImg() %>" width="100%" height="100%">
		                	</a>
		            	</div>
		            	<div class="info">
		                    <p class="title">
		                        <%= r.getTitle() %>
		                    </p>
		                </div>
		            </div>
		        <% } %> 
	        <% } %> 
    	</div>
    	
    </div> <!-- wrapper클래스 -->    
    
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