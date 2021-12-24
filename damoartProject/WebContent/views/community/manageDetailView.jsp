<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.community.model.vo.Review"%>

    
<% 
	Review r = (Review)request.getAttribute("r");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div{ box-sizing:border-box; }
    .wrapper{
        width: 1000px;
        height: auto;
        margin: auto;
        margin-left: auto; 
        margin-right: auto;
        margin-top: 200px
    }
    form>table{
        width: 800px;
        height: 800px;
        margin: 0 auto;
    }
    #table th{text-align: center;}
    #table td{padding-left: 30px;}
    input{border: none;}
    a{margin-left: 20px}
    #insert, #back{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }
    #delete{
        background-color:rgb(151, 138, 116);
        color:white;
    }

</style>    
</head>
<body>

	<%@ include file="../common/manageMenubar_2.jsp" %>
	
    <div class="wrapper">
        <div class="name" style="font-size: 24px; font-weight: bolder;">상품 상세 조회</div>
		<hr class="my-2">
		<br>
        <form action="<%= request.getContextPath() %>/manageInsert.pro" method="post" enctype="multipart/form-data">
            <table id="table" border=1px;>
                <tr>
                    <th>리뷰번호</th>
                    <td><%= r.getRvNo() %></td>
                </tr>
                <tr>
                    <th>회원아이디</th>
                    <td><%= r.getMemId() %></td>
                </tr>
                <tr>
                    <th>주문번호</th>
                    <td><%= r.getOrderNo() %></td>
                </tr>
                <tr>
                    <th>리뷰제목</th>
                    <td><%= r.getReviewTitle() %></td>
                </tr>
                <tr>
                    <th>리뷰내용</th>
                    <td><%= r.getReviewContent() %></td>
                </tr>
                <tr>
                    <th>작성날짜</th>
                    <td><%= r.getReviewDate() %></td>
                </tr>
                <tr>
                    <th>별점</th>
                    <td><%= r.getReviewStar() %></td>
                </tr>
                <tr>
                    <th>블라인드처리</th>
                    <td><%= r.getDeleteStatus() %></td>
                </tr>
                
            </table>
            <br><br>

            <div align="center">
                <a href="<%= contextPath %>/delete.rv?rno=<%= r.getRvNo() %>" class="btn" id="delete">삭제</a>
                <a href="<%= contextPath %>/manageList.rv?cpage=1" class="btn" id="back">목록가기</a>	
            </div>

             <br><br>
        </form>
    </div>
    
</body>
</html>