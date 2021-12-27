<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product, com.kh.common.model.vo.PageInfo"%>
<% 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
	
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
        width:1300px; 
        height:auto; 
        padding:20px;
        margin:auto;
        margin-top:200px;
        margin-left:230px;
    }  
	.wrapper>a{
        color:rgb(64, 64, 64);
    }
	.name>h4{
		font-weight: bolder;
	}
    #list-area{
    	width: 1200px;
    	margin-left: auto;
    	margin-right: 150px;
    }
	.header{width:100%; height:40px; position:relative;}
    .header>div{float:left;}
    .header a{
        background-color:rgb(151, 138, 116);
        color:white;
    }
	.button{
		margin-left: 850px;
	}
	#enroll{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }
    #delete{
        background-color:rgb(151, 138, 116);
        color:white;
    }
	#list-area *{
		text-align: center;
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

</style>

</head>
<body>

	<%@ include file="../../common/manageMenubar_2.jsp" %>
	
    <div class="wrapper">

		<div class="name">
			<h4>진행중 상품</h4>
			<br>
		</div>
		<hr class="my-2">
		<div class="header">
			<div class="search-area" align="center">
                    <form action="search.ing">
                        <select name="searchCategory">
                            <option value="searchTitle">타이틀</option>
                            <option value="searchArea">지역</option>
                            <option value="searchSoldOut">판매여부</option>
                        </select>
                        <input type="text" name="keyword" required>
                        <input type="hidden" name="cpage" value="1">
                        <button type="submit" class="btn btn-sm">검색</button>
                    </form>
                </div>
			<div class="button">
				<a href="<%= contextPath %>/delete.pro" class="btn btn-sm" id="delete">선택삭제</a>
			</div>
		</div>

        <table align="center" id="list-area" class="table table-bordered">
			<thead>
	            <tr style="background-color: lightgrey;">
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
	            <% for(Product p : list){ %>
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
            	<button class="btn" onclick="location.href='<%=contextPath%>/manageIng.man?cpage=<%=currentPage-1%>';">&lt;</button>
            <% } %>
            
            <!-- 페이지 p가 startPage부터 endPage까지 1씩 증가 --> 
            <% for(int p=startPage; p <= endPage; p++){ %>
            	<% if(currentPage == p) {%>
            		<button class="btn" disabled><%= p %></button>		
	            <% }else { %>
	            	<button class="btn" onclick="location.href='<%=contextPath%>/manageIng.man?cpage=<%= p %>';"><%= p %></button>
	            <% } %>
            <% } %>
            
            <% if(currentPage != maxPage){%>
            	<button class="btn" onclick="location.href='<%=contextPath%>/manageIng.man?cpage=<%=currentPage+1%>';">&gt;</button>
			<% } %>
			
        </div>
        
        <script>
	    	$(function(){
	    		$("#list-area>tbody>tr").click(function(){
					console.log($(this).children().eq(0).text())
	    			location.href='<%=contextPath %>/manageDetail.pro?pno=' + $(this).children().eq(1).text();
	    		})
	    	})
	    </script>
    
    </div>
    

</body>
</html>