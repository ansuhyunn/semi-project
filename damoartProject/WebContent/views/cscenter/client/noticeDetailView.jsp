<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ 
	page import="java.util.ArrayList, com.kh.common.model.vo.Attachment, com.kh.cscenter.model.vo.Notice"

 %>
    
<% 
	Notice n = (Notice)request.getAttribute("n");
	ArrayList<Attachment> atList = (ArrayList<Attachment>)request.getAttribute("atList");
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
    div{box-sizing:border-box;}
    #outer{
        width:1000px; 
        height:auto; 
        padding:40px;
        margin:auto;
    }
    #outer>a{
        color:rgb(64, 64, 64);
    }
    .detail-area{
        width:750px;
        height:auto;
        margin:auto;
    }

    .detail-data>div{
        float:left;
    }
    .detail-data{
        height:40px;
    }
    .title{
        height:40px;
        line-height:40px;
        background:rgb(203, 185, 153);
        /* border-top:1px solid rgb(163, 162, 162); */
        border-bottom:1px solid rgb(163, 162, 162);
        padding-left:10px;
        font-weight:600;
    }
    .writer{
        width:13%;
        height:40px;
        line-height:40px;
        padding-left:10px;
    }
    .date{
        width:67%;
        height:40px;
        line-height:40px;
    }
    .count{
        width:20%;
        height:40px;
        line-height:40px;
        padding-right:10px;
    }
    .content{
        border-top:1px solid rgb(163, 162, 162);
        border-bottom:1px solid rgb(163, 162, 162);
        padding-top:50px;
        padding-bottom:50px;
        padding-left:10px;
    }

    .button>a{
        background-color:rgb(151, 138, 116);
        color:white;
    }

    .button{
        width:750px;
        margin:auto;
        margin-top:20px;
    }
    

</style>
</head>
<body>

	<%@ include file="../../common/menubar.jsp" %>
	
	<div id="outer">
        <a href="">????????????</a>&gt<a href=""><b>????????????</b></a>
        <br><br>
		<h4 style="font-weight:bolder;" align="center">????????????</h4>
        <br>
        <hr>
        <br><br>
        <div class="detail-area">
            <div class="title">
                <%= n.getNoticeTitle() %>
            </div>
            <div class="detail-data">
                <div class="writer">
                    <%= n.getNoticeWriter() %>
                </div>
                <div class="date">
                    <%= n.getCreateDate() %>
                </div>
                <div class="count" align="right">
                                             ????????? <%= n.getCount() %>
                </div>
            </div>
            <div class="content">
                <% if(atList == null) {%>
                		
                <% }else { %>
                	<% for(Attachment a : atList) { %>
                		<img src="<%=contextPath%>/<%=a.getFilePath() + a.getChangeName()%>" width="400" height="300">
                        <br><br>
                	<% } %>
                <% } %>
			    <%= n.getNoticeContent() %>
            </div>
        </div>
        <div class="button" align="right">
        	<a href="<%=contextPath%>/list.no?cpage=1" class="btn btn-sm" >????????????</a>			
        </div>
            
    </div>
    <br><br><br><br><br><br>
    <%@ include file="../../common/footerbar.jsp" %>

</body>
</html>