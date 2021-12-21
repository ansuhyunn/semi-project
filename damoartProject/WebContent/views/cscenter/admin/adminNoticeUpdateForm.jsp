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
    div{ box-sizing:border-box;}
    

    #outer{
		/* border:1px solid black; */
        width:1000px; 
        height:auto; 
        padding:20px;
        margin:auto;
        margin-top:150px;
        margin-left:230px;
    }

    #inner{
        width:100%;
        margin-top:40px;
    }

    #enroll-form input, #enroll-form textarea{
        width:100%;
        box-sizing:border-box;
    }
    th{
        height:40px;
        background:rgb(203, 185, 153);
    }

    #button{
        width:83%;
    }

    #cancel{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }

    #insert{
        background-color:rgb(151, 138, 116);
        color:white;
    }

    #enroll-tb{
        border:1px solid rgb(173, 157, 128);
    }
</style>
</head>
<body>
	<%@ include file="../../common/manageMenubar_2.jsp" %>

    <div id="outer">
        <br><br>
        <h4 style="font-weight: bolder;">공지사항 관리</h4>
        
        <br>
        <hr>
        <div id="inner" align="center">
            <form id="enroll-form" action="<%=contextPath%>/update.no" method="post" enctype="multipart/form-data">
            	<input type="hidden" name="nno" value="<%=n.getNoticeNo()%>"> 
                <table id="enroll-tb">
                    <tr style="border-bottom:1px solid rgb(173, 157, 128)">
                        <th width="120">&nbsp;&nbsp;&nbsp;제목</th>
                        <td width="700"><input type="text" name="title" size="80" required value="<%=n.getNoticeTitle()%>"></td>
                    </tr>
                    <% if(atList.isEmpty()){ %>
                    	<tr>
	                        <th rowspan="3">&nbsp;&nbsp;&nbsp;첨부 파일</th>
	                         <td>
		                        <input type="file" name="upfile1">
	                         </td>
	                    </tr>
	                    <tr>
	                        <td>
		                        <input type="file" name="upfile2">
	                         </td>
	                    </tr>
	                    <tr style="border-bottom:1px solid rgb(173, 157, 128)">
	                        <td>
		                        <input type="file" name="upfile3">
	                         </td>
	                    </tr>
                    <% }else {%>
	                    <tr>
	                        <th>&nbsp;&nbsp;&nbsp;첨부 파일</th>
	                         <td>
		                        <%for(int i=1; i<=atList.size(); i++){ %>
									첨부파일<%=i%> : <%=atList.get(i-1).getOriginName()%>
									<input type="hidden" name="OriginFileNo<%=i%>" value="<%=atList.get(i-1).getFileNo()%>">
									<input type="file" name="upfile<%=i%>">
								<% } %>
								<%for(int i=atList.size()+1; i<=3; i++){ %>									
									첨부파일<%=i%> : <input type="file" name="upfile<%=i%>">
								<% } %>
	                         </td>
	                    </tr>
	                   
                    <% } %>
                    <tr style="border-bottom:1px solid rgb(173, 157, 128)">
                        <th>&nbsp;&nbsp;&nbsp;내용</th>
                        <td><textarea name="content" id=""rows="20" required style="resize:none;"><%=n.getNoticeContent()%></textarea></td>
                    </tr>
                </table>
	            <br>
	            <div id="button" align="right">
	                <a href="<%=contextPath%>/adminDetail.no?nno=<%= n.getNoticeNo() %>" class="btn btn-sm" id="cancel">취소하기</a>
	                <button type="submit" class="btn btn-sm" id="insert">수정하기</button>
	            </div>
                <br><br><br><br><br><br>
            </form>
        </div>
    </div>
</body>
</html>