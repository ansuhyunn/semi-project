<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.community.model.vo.Review"%>
<%
	Review rev = (Review)request.getAttribute("rev");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
        padding:40px;
        margin:auto;
    }

    #enroll-form table input, #enroll-form textarea{
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

    #secret{
        
    }

    #button{
        text-align:right;
    }

    #pwd{
        background:rgb(203, 185, 153);
        font-weight: 700;
    }


</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>

    <div id="outer">
		<h4 style="font-weight:bolder;" align="center">리뷰작성</h4>
        <br>
        <hr>
        <br><br>
        <div id="inner" align="center">
            <form id="enroll-form" action="<%=contextPath%>/insert.rv" method="post">
                <table id="enroll-tb">
                    <tr style="border-bottom:1px solid rgb(173, 157, 128); border-top:1px solid rgb(173, 157, 128)">
                        <th width="120">&nbsp;&nbsp;&nbsp;제목</th>
                        <td width="700" colspan="3"><input type="text" size="80" name="title" required></td>
                    </tr>
                    
                    <tr style="border-bottom:1px solid rgb(173, 157, 128); border-top:1px solid rgb(173, 157, 128)">
                        <th >&nbsp;&nbsp;&nbsp;상품</th>
                        <td colspan="3">
                         	<%= rev.getTitle() %>
                        </td>
                    </tr>
                    <tr>
                        <th>&nbsp;&nbsp;&nbsp;작성자</th>  
                        <td><%= loginUser.getNickName() %></td>
                    </tr>
                    <tr style="border-bottom:1px solid rgb(173, 157, 128)">
                        <th>&nbsp;&nbsp;&nbsp;내용</th>
                        <td colspan="3"><textarea name="content" id=""rows="20" style="resize:none;" required></textarea></td>
                    </tr>
                </table>
                <br>
                <div id="button" align="right">
                    <button type="submit" class="btn btn-sm" id="insert">등록하기</button>
                    <button type="reset" class="btn btn-sm" id="cancel">취소하기</button>
                </div>
            </form>
        </div>
    </div>
    
    
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>