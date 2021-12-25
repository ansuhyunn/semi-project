<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product, com.kh.common.model.vo.PageInfo" %>
<% 
	ArrayList<Product> ingList = (ArrayList<Product>)request.getAttribute("ingList");
    String keyword = request.getParameter("keyword");
	
	PageInfo pi = (PageInfo)request.getAttribute("pi");
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
	div{ box-sizing:border-box;}
    .wrapper{
        width: 1000px;
        height: auto;
        margin: auto;
        margin-top: 50px;

    }
     /* 페이지 이름 스타일 */
    .name{ width: 100%; height: 30px; }
    #name1{
        width: 70%;
        font-size: 23px;
        font-weight: bolder;
        float: left;
    }
    /* 페이지 정렬 버튼 스타일 */
    .name>a{
        width: 6%; 
        font-size: 10px;
        margin-top: 10px;
        padding-top: 10px;
        float: left;
        text-decoration: none;
        color: black;
    }
    .name>a:hover{font-weight: bolder; text-decoration: none; color: black;}
    .content1{
        width: 100%;
        height: auto;
        margin: auto;
        margin-top: 30px;
        margin-bottom: 50px;

    }
    
    .content{
        width: 20%;
        height: 350px;
        margin-left: 25px;
        margin-right: 20px;
        margin-bottom: 80px;
        margin-top: 0px;
        display: inline-block;

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
    	<br>
        <div class="name">
            <div id="name1">"<%= keyword %>"(으)로 검색한 결과</div>
        </div>
        <hr class="my-2">
        <div class="content1">
            <% if(ingList.isEmpty()) { %>
        		<p> 검색 결과가 없습니다. </p>
	        <% } else {%> 
		        <% for(Product p : ingList){ %>
                    <div class="content" id="">
		           		<div class="poster">
		                	<input type="hidden" name="num" value="<%= p.getpNo() %>">
		                	<a href="<%=request.getContextPath()%>/detail.pro?num=<%=p.getpNo()%>">
		                		<img src="<%=request.getContextPath()%>/<%= p.getMainImg() %>" width="100%" height="100%">
		                	</a>
		            	</div>
		            	<div class="info">
		                    <p class="title">
		                        <%= p.getTitle() %>
		                    </p>
		                    <p class="summary">
		                        <%= p.getsDate() %> ~ <%= p.geteDate() %><br>
		                        <%= p.getArea() %>
		                    </p>
		                </div>
		            </div>
		        <% } %> 
	        <% } %> 
        </div>
        
        <div class="paging-area" align="center">
          	<% if(currentPage != 1) {%>
              	<button class="btn" onclick="location.href='<%=contextPath%>/menuSearchPro.me?keyword=<%=keyword %>&cpage=<%=currentPage-1%>';">&lt;</button>
              <% } %>
              
              <% for(int p=startPage; p<=endPage; p++) { %>
              	<% if(p == currentPage) { %>
              		<button class="btn" disabled><%=p %></button>
              	<% }else { %>
              		<button class="btn" onclick="location.href='<%=contextPath %>/menuSearchPro.me?keyword=<%=keyword %>&cpage=<%=p%>';"><%=p %></button>
              	<% } %>
              <% } %>
              <% if(currentPage != maxPage) {%>
              <button class="btn" onclick="location.href='<%=contextPath%>/menuSearchPro.me?keyword=<%=keyword %>&cpage=<%=currentPage+1%>';">&gt;</button>
              <% } %>
          </div>
        
    </div>    
    <br><br><br>
    <%@ include file="../common/footerbar.jsp" %>

</body>
</html>