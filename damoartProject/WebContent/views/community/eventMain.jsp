<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList, com.kh.common.model.vo.PageInfo, com.kh.community.model.vo.Event" %>
    
<% PageInfo pi = (PageInfo)request.getAttribute("pi");
    ArrayList<Event> list = (ArrayList<Event>)request.getAttribute("list");
    
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
    
    .wrap{
        background:#e1d5bf;
        color: black;
        width: 1000px;
        height: 1000px;
        margin: auto;
        margin-top: 50px;
    }
    .event-list{
        width:980px;
        margin:auto;
    }
    .banner-thumbnail{
        border:1px solid black; /*경계선 구분용--- 다하고 지울것*/
        width:450px;
        display:inline-block;
        margin:15px;
    }

    .banner-thumbnail:hover{
    	cursor:pointer;
    	opacity:0.6;
    }
    #event_on{
        width: 100%;
        font-size: 30px;
        padding: 60px;
    }
	.evnlink{
         
        font-size: 20px;
        padding-top: 20px;
        float: center;
        text-decoration: none;
        color: black;
	}
	.evnlink>a:hover{
	font-weight: bolder;
	text-decoration: none;
	color: gray;
	}

    
    .more_event{
    margin: auto;    /*더보기 길쭉하게 중앙으로 오도록..div로 감싸서?*/
    }

    div>a{
			color:rgb(82, 82, 82);
			font-size: 20px;
			font-weight: bold;
		}
		div>a:hover{
			color: rgb(0, 0, 0);
			text-decoration-line:none;
			font-weight: bold;
		}
   

</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="wrap">
        <br>
        
        <div class="">
            <br><br>
            <b id="event_on">이벤트</b>
            <br><br>
        </div>

        <br>

        <!-- 누르면 해당하는 목록으로 보여지는 형태로..아님 ajax로 바꾸기-->
        <div align="center" class="evnlink">
            <a href="">진행중인 이벤트</a>
            <a href="">종료된 이벤트</a>
        </div>


        <hr> <!-- 잘리는 부분? 여튼 구분선-->

        <div class="event-list">

             <!-- 이벤트 배너 1개-->
             <div class="banner-thumbnail" align="center">
                 <br>
                <img src="이미지 배너 경로" width="420" height="180">
                <p>
                    다모아트 sns 공유 특별 이벤트! <br>
                    이벤트 기간 : mm-dd ~ mm-dd
                </p>
            </div>


             <!-- 이벤트 배너 1개-->
             <div class="banner-thumbnail" align="center">
                <br>
               <img src="이미지 배너 경로" width="420" height="180">
               <p>
                   다모아트 sns 공유 특별 이벤트! <br>
                   이벤트 기간 : mm-dd ~ mm-dd
               </p>
           </div>

           
             <!-- 이벤트 배너 1개-->
             <div class="banner-thumbnail" align="center">
                <br>
               <img src="이미지 배너 경로" width="420" height="180">
               <p>
                   다모아트 sns 공유 특별 이벤트! <br>
                   이벤트 기간 : mm-dd ~ mm-dd
               </p>
           </div>

           
             <!-- 이벤트 배너 1개-->
             <div class="banner-thumbnail" align="center">
                <br>
               <img src="이미지 배너 경로" width="420" height="180">
               <p>
                   다모아트 sns 공유 특별 이벤트! <br>
                   이벤트 기간 : mm-dd ~ mm-dd
               </p>
           </div>

         </div>

	        <!-- 
         <div class="paging-area" align="center">
		        <button> &lt; </button>
		        <button>1</button>
		        <button>2</button>
		        <button>3</button>
		        <button>4</button>
		        <button>5</button>
		        <button>6</button>
		        <button>7</button>
		        <button>8</button>
		        <button>9</button>
		        <button>10</button>
		        <button>&gt;/button>
	        
        </div>
        	 -->
        
        
        <div class="paging-area" align="center">
			
			<% if(currentPage != 1) { %>
            	<button onclick="location.href='<%=contextPath%>/list.evn?cpage=<%=currentPage-1%>';"> &lt; </button>
            <% } %>
            
            <% for(int p=startPage; p<=endPage; p++){ %>
            	<% if(p == currentPage) { %>
            		<button disabled><%= p %></button>
            	<% }else { %>
            		<button onclick="location.href='<%=contextPath%>/list.evn?cpage=<%= p %>';"><%= p %></button>
            	<% } %>
            <% } %>
            
            <% if(currentPage != maxPage){ %>
            	<button onclick="location.href='<%=contextPath%>/list.evn?cpage=<%=currentPage+1%>';"> &gt; </button>
			<% } %>
			
        </div>
            
           
  </div>
</body>

</html>