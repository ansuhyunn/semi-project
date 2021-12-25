<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ 
	page import="java.util.ArrayList, com.kh.common.model.vo.Attachment, com.kh.cscenter.model.vo.QnA"

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

    #list, #update, #deleteCheck{
        background-color:rgb(151, 138, 116);
        color:white;
    }

    #delete, #deleteCancel{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }

    .button{
        width:750px;
        margin:auto;
        margin-top:20px;
    }
    .button>div{
        width:50%;
        float:left;
    }
    span{
        font-size:30px;
        font-weight:750;
    }
    
    #myModal{
    	padding-top:150px;
    }
    

</style>
</head>
<body>

	<%@ include file="../../common/menubar.jsp" %>
	
	<div id="outer">
        <a href="">고객센터</a>&gt<a href=""><b>Q&A</b></a>
        <br><br>
		<h4 style="font-weight:bolder;" align="center">Q&A</h4>
        <br>
        <hr>
        <br><br>
        <div class="detail-area">
            <div class="title">
                <%= q.getqCategoryCode() %>&nbsp;&nbsp;&nbsp;<%= q.getqTitle() %>
            </div>
            <div class="detail-data">
                <div class="writer">
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
                    <%= q.getpTitle() %>
                </div>
            <% } %>
            <div class="qcontent">
                <span>Q</span> <br>
                <% if(at != null) {%>
                	<img src="<%=contextPath%>/<%=at.getFilePath() + at.getChangeName()%>" width="400" height="300"> <br>
                <% } %>
			    <%= q.getqContent() %>
            </div>
            <% if(q.getaContent() != null) { %>
            
	            <div class="detail-data">
	                <div class="writer">
	                    <%= q.getaWriter() %>
	                </div>
	                <div class="date">
	                    <%= q.getaCreateDate() %>
	                </div>
	            </div>    
	            
	            <div class="acontent">
	            	<span>A</span> <br>
	            	<%= q.getaContent().replace("\r\n", "<br>") %>
	            </div>
            <% } %>
        </div>
        <div class="button">
            <div>
                <a id="list" href="<%= contextPath %>/list.qa?cpage=1" class="btn btn-sm">목록가기</a>			
            </div>
            <div align="right">
            	<%if(loginUser != null) {%>
	            	<%if(loginUser.getNickName().equals(q.getqWriter())) { %>
		                <a id="delete" class="btn btn-sm" data-toggle="modal" data-target="#myModal" type="button">삭제하기</a>
		                <% if(q.getaContent() == null) { %>
		                    <a id="update" href="<%=contextPath %>/updateForm.qa?qno=<%=q.getqNo() %>" class="btn btn-sm">수정하기</a>
		                <% } %>
		            <% } %>
		        <% } %>
            </div>
        </div>
            
    </div>
    
    <!-- The Modal -->
		<div class="modal" id="myModal">
		  <div class="modal-dialog modal-sm">
		    <div class="modal-content">
		
		      <!-- Modal body -->
		      <div class="modal-body" align="center">
		        	삭제하시겠습니까?
		      </div>
		
		      <!-- Modal footer -->
		      <div class="modal-footer">
		      	<button id="deleteCancel" type="button" class="btn" data-dismiss="modal">취소</button>
		      	<button id ="deleteCheck" type="button" class="btn" data-dismiss="modal" onclick="location.href='<%=contextPath%>/delete.qa?qno=<%=q.getqNo()%>';">확인</button>
			  </div>	
		    </div>
		  </div>
		</div>
    
    <%@ include file="../../common/footerbar.jsp" %>

</html>