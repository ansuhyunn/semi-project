<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product, com.kh.product.model.vo.Search" %>
    
<% 
	ArrayList<Product> searchList = (ArrayList<Product>)request.getAttribute("searchList");

	Search sc = (Search)request.getAttribute("sc");
	String date = sc.getSearchDate();
	String price = sc.getSearchPrice();
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
        height: 1200px;
        top: 0; left: 0; right: 0; bottom: 0; margin: auto;
        margin-top: 50px;
    }
    .name{
        width: 100%;
        font-size: 28px;
        font-weight: bolder;
        text-align: center;
		margin-bottom: 20px;
	}
	.condition{
		width: 100%;
        font-size: 20px;
        font-weight: bolder;
        text-align: center;
		margin-bottom: 30px;
	}
	.content1{
        width: 100%;
        height: 300px;
        margin: auto;
        margin-top: 20px;
        margin-bottom: 50px;
    }
    .content1>p{
    	font-size: 20px;
    	text-align: center;
    	margin-top: 50px;
    }
    .content{
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
    /* 텍스트 글자수 표시 제한*/
    .info>p{
        width: 100%;
        text-align: center;
        display: inline-block;
        overflow:hidden;
        text-overflow:ellipsis;
        white-space:nowrap; 
    }
	button:hover{color: whitesmoke; background: white;}
	.title{font-weight: bolder; padding-top: 10px;}
    .summary{font-size: 12px; font-weight: bolder; margin-top: -10px;}

</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	
	<div class="wrapper">
		<div class="name">검색 결과</div>
		<div class="condition">
			<% int i = 0;%>
			<% for(Product p : searchList){ %>
				<%= date %> | <%= p.getRegion() %> | <%= price %> | <%= p.getAge() %> 
				<% i++; %>
				<% if(i == 1){ break; } %>
			<% } %> 
		</div>
		<hr class="my-2">
		
		<div class="content1">
           	<% if(searchList.isEmpty()) { %>
        		<p> 결과가 없습니다 </p>
        	<% } else {%> 
		        <% for(Product p : searchList){ %>
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
        
        <button class="btn btn-block" type="button" onclick="history.back()" style="background-color: rgb(151, 138, 116);"> 다시검색</button>
	</div>
	
	<%@ include file="../common/footerbar.jsp" %>
	
	

</body>
</html>