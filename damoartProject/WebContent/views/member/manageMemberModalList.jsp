<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.member.model.vo.Point" %>
<%
	ArrayList<Point> list = (ArrayList<Point>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>적립날짜</th>
					<th>적립내역</th>
					<th>적립금</th>
				</tr>
			</thead>
			<tbody>
				<% if(list.isEmpty()) { %>
		                <!--case1. 회원 없을 경우-->
		                <tr>
		                    <td colspan="3">적립내역이 없습니다</td>
		                </tr>
		        <% }else { %> 
					<% for(Point p : list) { %>
						<tr>
							<td><%= p.getPoiDate() %></td>
							<td><%= p.getPoiContent() %></td>
							<td><%= p.getPoiPoint() %></td>
						</tr>
					<% } %> 
				<% } %> 
				
			</tbody>
		</table>
	</div>


</body>
</html>