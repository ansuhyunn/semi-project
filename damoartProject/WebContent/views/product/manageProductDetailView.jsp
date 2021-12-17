<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ 
	page import="java.util.ArrayList, com.kh.common.model.vo.Attachment, com.kh.product.model.vo.Product"

%>
    
<% 
	Product p = (Product)request.getAttribute("p");
	//Attachment at = (Attachment)request.getAttribute("at");
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
    .name{
    	font-size: 16px;
    	font-weight:600;
    }
    form>table{
        width: 600px;
        height: 800px;
        margin: 0 auto;
    }
    table th{text-align: center;}
    table td{padding-left: 20px;}
    input{border: none;}
    #insert, #back{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }
    #cancel{
        background-color:rgb(151, 138, 116);
        color:white;
    }

</style>    
</head>
<body>

	<%@ include file="../common/manageMenubar_2.jsp" %>
	
    <div class="wrapper">
        <div class="name">
            <h4>상품 상세 조회</h4>			
		</div>
		<hr class="my-2">
        </div>
        <form action="<%= request.getContextPath() %>/manageInsert.pro" method="post" enctype="multipart/form-data">
            <table border=1px>
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
                <button id="insert" class="btn btn-sm" type="submit">수정</button>
                <button id="cancel" class="btn btn-sm" type="reset">삭제</button>
                <button id="back" class="btn btn-sm" type="button" onclick="history.back()">목록으로</button>
            </div>
            
             <br><br>
        </form>
    </div>
    
</body>
</html>