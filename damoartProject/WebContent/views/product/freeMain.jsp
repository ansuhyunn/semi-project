<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product" %>
<% 
	ArrayList<Product> freeList = (ArrayList<Product>)request.getAttribute("freeList");
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
     /* 페이지 이름 스타일 */s
    .name{ width: 100%; height: 30px; }
    #name1{
        width: 78%;
        font-size: 23px;
        font-weight: bolder;
        float: left;
    }
    /* 페이지 정렬 버튼 스타일 */
    .name>button{
        border: none;
        width: 7%; 
        font-size: 10px;
        color: black;
        margin-top: 20px;
    }
    .name>button:hover{font-weight: bolder; text-decoration: none; color: black;}
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
        margin-left: 40px;
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
            <div id="name1">무료 전시</div>
            <button id="type1">오픈날짜순</button>
            <button id="type2">마감임박순</button>
            <button id="type3">별점순</button>
        </div>
        <hr class="my-2">
        <div id="content1">
        <% if(freeList.isEmpty()) { %>
        	<p> 결과가 없습니다 </p>
        <% } else {%> 
	        <% for(Product p : freeList){ %>
	            <div id="content">
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
    </div>   <!-- wrapper클래스 -->
    
    <script>
        $(function(){
            $("#type1").click(function(){
                $.ajax({
                    url : "arrayOpen.pro",
                    success:function(list){
                    	
                    	let result = "";
                    	for(let i=0; i<list.length; i++){
							result += "<div id=\"content\">"
									+ "<div class=\"poster\">"
									+ "<input type=\"hidden\" name=\"num\" value=\"" + list[i].pno + ">"
									+ "<a href=\"" + "<%=request.getContextPath()%>/detail.pro?num=" + list[i].pno + ">"
	                			    + "<img src=\"<%=request.getContextPath()%>/" + list[i].mainImg + "\" width=\"100%\" height=\"100%\">"
		                		    + "</a>"
		                		    + "</div>"
		                		    + "<div class=\"info\">"
		                		    + "<p class=\"title\">" + list[i].title
		                		    + "</p>"
		                		    + "<p class=\"summary\">" + list[i].sDate + "~" + list[i].eDate + "<br>" + list[i].area
		                		    + "</p>"
		                		    + "</div>"
		                		    + "</div>"
                    	}
                    	
                    	$("#content1").html(result);
                    	console.log(result);
                    },error:function(){
                        
                    }
                });
            })
            
        })
    </script>
   

    
    <%@ include file="../common/footerbar.jsp" %>
     
</body>
</html>