<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product" %>
<% 
	ArrayList<Product> detailList = (ArrayList<Product>)request.getAttribute("detailList");
%>>%>
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
	.wrapper, .content1, .content2, .content3{
		top: 0; left: 0; right: 0; bottom: 0; margin: auto;
	}
    .wrapper{
        width: 1000px;
        height: 2000px;
        margin-top: 50px;	
    }
	.content1{
		width: 80%;
		height: 100px;
		margin-bottom: -20px;
	}
	.content2{
		width: 90%;
		height: 33%;
	}
	.poster{
		width: 300px;
		height: 400px;
		float: left;
		margin-top: 20px;
		margin-left: 50px;
		margin-right: 50px;
	}
	.info{
		width: 450px;
		float: left;
		margin-top: 20px;
		font-size: 16px;
		padding: 30px;
	}
	.info th{width: 100px; height: 60px;}
	.info td{width: 300px; height: 60px;}
	#pay th{width: 400px; height: 40px;}
	.content3{
		width: 90%;
		height: 67%;
	}
	.content3>a{text-decoration: none; color: black; font-size: 20px; font-weight: bolder; margin:60px;}
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	<% for(Product p : detailList){ %>
	<div class="wrapper">
		<div class="content1">
			<div class="title" style="font-size: 40px; font-weight: bolder; margin-bottom: 7px;"><%= p.getTitle() %></div>
			<div class="date" style="font-size: 13px;"><%= p.getsDate() %> ~ <%= p.geteDate() %></div>
		</div>
		<hr class="my-2">
		<div class="content2" >
			<div class="poster"><img src="" width="100%" height="100%"></div>
			<div class="info">
				<table id="info">
					<tr>
						<th>기간</th>
						<td></td>
					</tr>
					<tr>
						<th>장소</th>
						<td></td>
					</tr>
					<tr>
						<th>관람연령</th>
						<td></td>
					</tr>
					<tr>
						<th>관람시간</th>
						<td></td>
					</tr>
					<tr>
						<th>가격</th>
						<td></td>
					</tr>
					<tr>
						<th>혜택</th>
						<td></td>
					</tr>
				</table>
				<hr class="my-2">
				<table id="pay">
					<tr>
						<th >옵션선택</th>
						<td>
							<select name="option" >
								<option value="adult">성인</option>
								<option value="teen">청소년</option>
								<option value="child">소아</option>
							</select>
						</td>
						<th>수량</th>
						<td><input type="number" style="width: 50px;"></td>
					</tr>
					<tr>
						<td colspan="4" style="background-color: whitesmoke;">몇개샀는지~~</td>
					</tr>
					<tr>
						<th colspan="4" style="text-align: right; font-size: 30px;">총 27000원</td>
					</tr>
				</table>
			</div>
		</div>	
		<div class="content3">
			<a href="">상세정보</a>
			<a href="">예매/취소안내</a>
			<a href="">관람후기</a>
			<a href="">Q&A</a>
			<hr class="my-2">
		</div>
		

	</div>
	<% } %>
	
	<%@ include file="../common/footerbar.jsp" %>
</body>
</html>