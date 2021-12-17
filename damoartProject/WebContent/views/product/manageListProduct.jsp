<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product, com.kh.common.model.vo.PageInfo" %>
<% 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Product> allList = (ArrayList<Product>)request.getAttribute("allList");
	
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

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
div{ box-sizing:border-box; }
    .wrapper{
        width: 1000px;
        height: auto; 
        margin: auto;
        margin-top: 150px
    }   
    #list-area{
    	width: 1000px;
    	margin-left: auto;
    	margin-right: 150px;
    }
    thead{
        background:rgb(207, 206, 206);
        font-size:12px;
    }
    #list-area>tbody{
        background:white;
        font-size:12px;
    }
     #list-area>tbody>tr:hover{
    	background:rgb(240, 239, 239);
    	cursor:pointer;
    }
    .btn{
        width: 115px;
        margin-left: 200px;
        margin-top: 40px;
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight: bolder;
    }
    .btn *:hover{
        background:rgb(240, 239, 239);
        font-weight: bolder;
    }

</style>

</head>
<body>

	<%@ include file="../common/manageMenubar_2.jsp" %>
	
    <div class="wrapper">
        
        <table align="center" id="list-area" class="table table-bordered">

			<thead>
	            <tr>
	                <th>&nbsp;&nbsp;&nbsp;</th>
	                <th>상품번호</th>
	                <th>등록날짜</th>
	                <th>Title</th>
	                <th>지역</th>
	                <th>장소</th>
	                <th>시간</th>
	                <th>관람연령</th>
	                <th>시작일</th> 
	                <th>종료일</th>
	                <th>품절여부</th>
	            </tr>
	        </thead>
	        <tbody>
	            <% for(Product p : allList){ %>
		            <tr>
		                <td><input type="checkbox"></td>
		                <td><%= p.getpNo() %></td>
		                <td><%= p.getEnrollDate() %></td>
		                <td><%= p.getTitle() %></td>
		                <td><%= p.getRegion() %></td>
		                <td><%= p.getArea() %></td>
		                <td><%= p.getTime() %></td>
		                <td><%= p.getAge() %></td>
		                <td><%= p.getsDate() %></td>
		                <td><%= p.geteDate() %></td>
		                <td><%= p.getSoldOut() %></td>
		            </tr>
		        <% } %>
		     </tbody>    
        </table>

        
        <div class="paging-area" align="center">
        
			<% if(currentPage != 1){ %>
            	<button onclick="location.href='<%=contextPath%>/managelist.man?cpage=<%=currentPage-1%>';">&lt;</button>
            <% } %>
            
            <% for(int p=startPage; p <= endPage; p++){ %>
            	<% if(currentPage == p) {%>
            		<button disabled><%= p %></button>		
	            <% }else { %>
	            	<button onclick="location.href='<%=contextPath%>/managelist.man?cpage=<%= p %>';"><%= p %></button>
	            <% } %>
            <% } %>
            
            <% if(currentPage != maxPage){%>
            	<button onclick="location.href='<%=contextPath%>/managelist.man?cpage=<%=currentPage+1%>';">&gt;</button>
			<% } %>
			
        </div>
        
        
        <div class="button">
            <a href="<%= contextPath %>/views/product/manageInsertProduct.jsp" class="btn">등록</a>
            <a href="<%= contextPath %>/update.pro" class="btn">수정</a>
            <a href="<%= contextPath %>/delete.pro" class="btn">삭제</a> 
        </div>
    </div>
    

</body>
</html>