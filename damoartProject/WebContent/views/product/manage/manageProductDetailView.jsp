<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ 
	page import="java.util.ArrayList, com.kh.common.model.vo.Attachment, com.kh.product.model.vo.Product"

%>
    
<% 
	Product p = (Product)request.getAttribute("p");
	Attachment at1 = (Attachment)request.getAttribute("at1");
	Attachment at2 = (Attachment)request.getAttribute("at2");
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

	<%@ include file="../../common/manageMenubar_2.jsp" %>
	
    <div class="wrapper">
        <div class="name" style="font-size: 24px; font-weight: bolder;">상품 상세 조회</div>
		<hr class="my-2">
		<br>
        </div>
        <form action="<%= request.getContextPath() %>/manageInsert.pro" method="post" enctype="multipart/form-data">
            <table id="table" border=1px;>
                <tr>
                    <th>상품코드</th>
                    <td><%= p.getpNo() %></td>
                </tr>
                <tr>
                    <th>등록날짜</th>
                    <td><%= p.getEnrollDate() %></td>
                </tr>
                <tr>
                    <th>타이틀</th>
                    <td><%= p.getTitle() %></td>
                </tr>
                <tr>
                    <th>지역</th>
                    <td><%= p.getRegion() %></td>
                </tr>
                <tr>
                    <th>장소</th>
                    <td><%= p.getArea() %></td>
                </tr>
                <tr>
                    <th>관람연령</th>
                    <td><%= p.getAge() %></td>
                </tr>
                <tr>
                    <th>시작일</th>
                    <td><%= p.getsDate() %></td>
                </tr>
                <tr>
                    <th>종료일</th>
                    <td><%= p.geteDate() %></td>
                </tr>
                <tr>
                    <th>관람시간</th>
                    <td><%= p.getTime() %></td>
                </tr>
                <tr>
                    <th>성인가격</th>
                    <td><%= p.getaPrice() %></td>
                </tr>
                <tr>
                    <th>청소년가격</th>
                    <td><%= p.gettPrice() %></td>
                </tr>
                <tr>
                    <th>소아가격</th>
                    <td><%= p.getcPrice() %></td>
                </tr>
                <tr>
                    <th>메인포스터</th>
                    <td>
	                    <img src="<%=contextPath%>/<%= p.getMainImg() %>" width="500" height="350">
                    </td>
                </tr>
                <tr>
                    <th>상세포스터</th>
                    <td>
                    	<img src="<%=contextPath%>/<%= p.getDetailImg() %>" width="500" height="350">
                    </td>
                </tr>
                <tr>
                    <th>기타등록사항</th>
                    <td><%= p.getEtc() %></td>
                </tr>
                <tr>
                    <th>품절여부</th>
                    <td><%= p.getSoldOut() %></td>
                </tr>
            </table>
            <br><br>

            <div align="center">
                <a href="<%= contextPath %>/manageUpdateForm.pro?pno=<%= p.getpNo() %>" class="btn" id="insert">수정</a>
                <a href="<%= contextPath %>/manageDelete.pro?pno=<%= p.getpNo() %>" class="btn" id="delete">삭제</a>
                <a href="<%= contextPath %>/managelist.man?cpage=1" class="btn" id="back">목록가기</a>	
            </div>

             <br><br>
        </form>
    </div>
    
</body>
</html>