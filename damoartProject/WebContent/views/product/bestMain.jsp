<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Best" %>
<% 
	ArrayList<Best> bestList = (ArrayList<Best>)request.getAttribute("bestList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	div{ box-sizing:border-box;}
    .wrapper{
        width: 1000px;
        height: 1500px;
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
    .content1{
        width: 100%;
        height: 400px;
        margin: auto;
        margin-top: 20px;
        margin-bottom: 50px;
        padding-left: 20px;
    }
    .content{
        width: 25%;
        height: 100%;
        float: left;
        margin-left: 30px;
        margin-right: 25px;
        margin-bottom: 50px;
        margin-top: 0px;
        display: block;
    }
    .rank{
        width: 24px;
        height: 25%;
        float: left;
        font-size: 24px;
        font-weight: bolder;
    }
    .poster{
        width: 100%;
        height: 75%;
        width: 100%;
        height: 80%;
        float: left;
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
            <div id="name1">월간 BEST</div>
            <br>
        </div>
        <br>
        <hr class="my-2">
         <% int i = 0; %>
         <div class="content1">
	        <% if(bestList.isEmpty()) { %>
	        	<p> 결과가 없습니다 </p>
	        <% } else {%> 
	        	<% for(int j=1; j<10; i++) { %>
		        <% for(Best b : bestList){ %>
		        	<div class="rank">
		            		<%= j++ %>
		            </div>
		            <div class="content" id="">    
		           		<div class="poster">
		           			<input type="hidden" name="num" value="<%= b.getpNo() %>">
		                	<a href="<%=request.getContextPath()%>/detail.pro?num=<%=b.getpNo()%>">
		                		<img src="<%=request.getContextPath()%>/<%= b.getMainImg() %>" width="100%" height="100%">
		                	</a>
		            	</div>
		            	<div class="info">
		                    <p class="title">
		                        <%= b.getTitle() %>
		                    </p>
		                    <p class="summary">
		                        <%= b.getsDate() %> ~ <%= b.geteDate() %><br>
		                        <%= b.getArea() %>
		                    </p>
		                </div>
		            </div>
		             <% i++; if(i>8){ break; }%>  
		             <% } %> 
		         <% } %> 
	        <% } %> 
    	</div>
        
        
    </div>   <!-- wrapper클래스 -->
    
    <%@ include file="../common/footerbar.jsp" %>
     
</body>
</html>