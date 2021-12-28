<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ 
	page import="com.kh.cscenter.model.vo.FAQ"

 %>
    
<% 
	FAQ f = (FAQ)request.getAttribute("f");
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
		/* border:1px solid black; */
        width:1000px; 
        height:auto; 
        padding:20px;
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
    
    .content{
        border-top:1px solid rgb(163, 162, 162);
        border-bottom:1px solid rgb(163, 162, 162);
        padding-top:50px;
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
    
    #myModal{
    	padding-top:150px;
    }
    

</style>
</head>
<body>

	<%@ include file="../../common/manageMenubar_2.jsp" %>
	
	<div id="outer">
        <br><br>
		<h4 style="font-weight:bolder;">FAQ</h4>
        <br>
        <hr>
        <br><br>
        <div class="detail-area">
            <div class="title">
                <%= f.getfCategoryCode() %>&nbsp;&nbsp;&nbsp;<%= f.getFaqTitle() %>
            </div>
            <div class="detail-data">
                <div class="writer">
                    <%= f.getFaqWriter() %>
                </div>
                <div class="date">
                    <%= f.getCreateDate() %>
                </div>
            </div>
            <div class="content">
			    <%= f.getFaqContent() %>
            </div>
        </div>
        <div class="button">
            <div>
                <a id="list" href="<%=contextPath%>/adminList.fa?cpage=1" class="btn btn-sm">목록가기</a>			
            </div>
            <div align="right">
                <a id="delete" class="btn btn-sm" data-toggle="modal" data-target="#myModal" type="button">삭제하기</a>
                <a id="update" href="<%=contextPath %>/updateForm.fa?fno=<%=f.getFaqNo() %>" class="btn btn-sm">수정하기</a>
            </div>
        </div>
        <br><br><br><br><br><br>
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
	      	<button id ="deleteCheck" type="button" class="btn" data-dismiss="modal" onclick="location.href='<%=contextPath%>/delete.fa?fno=<%=f.getFaqNo()%>';">확인</button>
		  </div>	
	    </div>
	  </div>
	</div>
    

</body>
</html>