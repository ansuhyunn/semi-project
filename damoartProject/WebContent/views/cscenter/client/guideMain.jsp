<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.kh.cscenter.model.vo.Guide, com.kh.common.model.vo.Attachment"%>
    
<% 
    Guide g = (Guide)request.getAttribute("g");
	Attachment at = (Attachment)request.getAttribute("at");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    div{ box-sizing:border-box;}
    .outer{
    }

    #outer{

        width:1000px; 
        height:1050px; 
        padding:40px;
        margin-top:50px;
        margin:auto;
    }

    #outer>a{
        color:rgb(64, 64, 64);
    }

    .inner{
        width:750px;
        height:auto;
        margin:auto;
    }

    .title{
        height:50px;
        font-size:20px;
        font-weight:700;
        line-height:50px;
    }


</style>
</head>
<body>
	<%@ include file="../../common/menubar.jsp" %>
	
        <div id="outer">
			<a href="">고객센터</a><i class="fas fa-angle-right"></i><a href=""><b>이용안내</b></a>
            <br><br>
			<h4 style="font-weight: bolder;" align="center">이용안내</h4>
            <br>
            <hr>
            <br>
            <div class="inner">

                <div class="title">
                	<%=g.getGuideTitle() %>
                </div>
                <div class="img">
                    <% if(at != null) {%>
                		<img src="<%=contextPath%>/<%=at.getFilePath() + at.getChangeName()%>" width="750" height="auto">
                	<% } %>
                </div>
                <div class="content">
                    <%=g.getGuideContent() %>
                </div>
            </div>
           
        </div>

    <%@ include file="../../common/footerbar.jsp" %>

</body>
</html>