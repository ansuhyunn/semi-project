<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ 
	page import="com.kh.common.model.vo.Attachment, com.kh.cscenter.model.vo.QnA"

%>
    
<% 
	QnA q = (QnA)request.getAttribute("q");
	Attachment at = (Attachment)request.getAttribute("at");
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
        margin-top:150px;
        margin-left:230px;
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
        border-bottom:1px solid rgb(163, 162, 162);
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
        width:20%;
        height:40px;
        line-height:40px;
        padding-left:10px;
    }
    .date{
        width:60%;
        height:40px;
        line-height:40px;
    }
    .answer{
        width:20%;
        height:40px;
        line-height:40px;
        padding-right:10px;
    }

    .product{
        padding-top:10px;
        padding-bottom:10px;
        padding-left:10px;
        border-bottom:1px solid rgb(163, 162, 162);
    }
    .qcontent{
        border-bottom:1px solid rgb(163, 162, 162);
        padding-top:20px;
        padding-bottom:50px;
        padding-left:10px;
    }
    
    .acontent{
        border-bottom:1px solid rgb(163, 162, 162);
        padding-top:20px;
        padding-bottom:50px;
        padding-left:10px;
    }
    
    textarea{
        width:100%;
        box-sizing:border-box;
    }

    #update{
        background-color:rgb(151, 138, 116);
        color:white;
    }

    #cancel{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }

    .button{
        width:750px;
        margin:auto;
        margin-top:20px;
    }

    span{
        font-size:30px;
        font-weight:750;
    }
    

</style>
</head>
<body>

	<%@ include file="../../common/manageMenubar_2.jsp" %>
	
	<div id="outer">
        <br><br>
		<h4 style="font-weight:bolder;">Q&A</h4>
        <br>
        <hr>
        <br><br>
        <form action="<%=contextPath %>/adminUpdate.qa" method="post">
            <div class="detail-area">
                
                <div class="title">
                    <%= q.getqCategoryCode() %>&nbsp;&nbsp;&nbsp;<%= q.getqTitle() %>
                </div>
                <div class="detail-data">
                    <div class="writer">
                    	<% if(q.getMemNo() == 0) {%>
                    		(비회원)
                    	<% } %>
                        <%= q.getqWriter() %>
                    </div>
                    <div class="date">
                        <%= q.getCreateDate() %>
                    </div>
                    <div class="answer" align="right">
                        <% if(q.getaContent() != null) { %>
                                	답변완료
                        <% }else { %>
                                	미답변
                        <% } %>
                    </div>
                </div>
                <% if(q.getpNo() != null) { %>
                    <div class="product">
                        <img src="<%=contextPath%>/<%= q.getpMainImg() %>" width="100" height="130">
                        <%= q.getpNo() %>
                    </div>
                <% } %>
                <div class="qcontent">
                    <span>Q</span> <br>
                    <% if(at != null) {%>
                        <img src="<%=contextPath%>/<%=at.getFilePath() + at.getChangeName()%>" width="400" height="300"> <br>
                    <% } %>
                    <%= q.getqContent() %>
                </div>

                <div class="detail-data">
                                        답변 내용
                </div>    
                
                <div class="acontent">
                	<input type="hidden" name="adminNo" value="<%=loginUser.getMemNo() %>">
                    <input type="hidden" name="qno" value="<%= q.getqNo() %>">
                    <textarea name="answer" rows="15" required style="resize:none;"><%=q.getaContent().replace("<br>", "\r\n")%></textarea>
                </div>

                
            </div>
            <div class="button" align="right">
                    <a id="cancel" href="<%=contextPath%>/adminDetail.qa?qno=<%= q.getqNo() %>" class="btn btn-sm">취소하기</a>
                    <button id="update" type="submit" class="btn btn-sm">수정하기</button>
            </div>
        </form>
            
    </div>
    


</html>