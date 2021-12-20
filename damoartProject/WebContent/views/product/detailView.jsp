<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product" %>
<% 
	Product pro = (Product)request.getAttribute("p");
	ArrayList<Product> detailList = (ArrayList<Product>)request.getAttribute("detailList");
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
	.wrapper, .content1, .content2, .content3{
		top: 0; left: 0; right: 0; bottom: 0; margin: auto;
	}
    .wrapper{
        width: 1000px;
        height: auto;
        margin-top: 50px;	
    }
	.content1{
		width: 80%;
		height: 100px;
		margin-bottom: -30px;
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
		margin-right: 40px;
	}
	.info{
		width: 500px;
		float: left;
		margin-top: 20px;
		font-size: 16px;
		padding: 20px;
	}
	.info th{width: 100px; height: 60px;}
	.info td{width: 500px; height: 60px; padding: 20px}
	#pay th{width: 400px; height: 40px;}
	.content3{
		width: 90%;
		height: 67%;
	}
	.content3>button{
		color: whitesmoke; 
		font-size: 18px; 
		font-weight: bolder; 
		margin:30px; 
		width:150px;
		margin-left: 40px;
		margin-top: 50px;
		margin-bottom: 10px;
	}
	.content4{
		margin: auto;
		margin-top: 100px;
		width: 80%;
	}
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	
	<div class="wrapper">
		<% for(Product p : detailList){ %>
		<div class="content1">
			<div class="title" style="font-size: 30px; font-weight: bolder; margin-bottom: 7px;"><%= p.getTitle() %></div>
			<div class="date" style="font-size: 13px;"><%= p.getsDate() %> ~ <%= p.geteDate() %> <%= p.getArea() %></div>
		</div>
		<hr class="my-2">
		<div class="content2" >
			<div class="poster"><img src="<%=request.getContextPath()%>/<%= p.getMainImg() %>" width="100%" height="100%"></div>
			<div class="info">
				<table id="info">
					<tr>
						<th>기간</th>
						<td><%= p.getsDate() %> ~ <%= p.geteDate() %></td>
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
						<th>관람시간</th>
						<td><%= p.getTime() %></td>
					</tr>
					<tr>
						<th>가격</th>
						<% if(p.getaPrice() == 0){ %>
							<td> 무료관람 </td>
						<% } else{ %>
						<td>성인 : <%= p.getaPrice() %> / 청소년 : <%= p.gettPrice() %> / 소아 : <%= p.getcPrice() %><br>
						</td>
						<% } %>
					</tr>
					<tr>
						<th>혜택</th>
						<td><%= p.getEtc() %></td>
					</tr>
				</table>
				<hr class="my-2">
				<form>
					<table id="pay">
						<tr>
							<th >옵션선택</th>
							<td>
								<select name="option" >
									<option value="<%= p.getaPrice() %>" id="A">성인</option>
									<option value="<%= p.gettPrice() %>" id="T">청소년</option>
									<option value="<%= p.getcPrice() %>" id="C">소아</option>
								</select>
							</td>
							<th>수량</th>
							<td><input type="number" style="width: 50px;"></td>
						</tr>
					</table>
					<button class="btn btn-secondary" id="select">선택</button>
				</form>
				<table id="result">
					<tr>
						<td id="order" colspan="4" style="background-color: whitesmoke;">몇개샀는지~~</td>
					</tr>
					<tr>
						<th colspan="4" style="text-align: right; font-size: 30px;">총 27000원</td>
					</tr>
				</table>
			</div>
		</div>	

		<div class="content3">
			<button id="info1" class="btn btn-secondary" >상세정보</button>
			<button id="info2" class="btn btn-secondary" >예매/취소안내</button>
			<button id="info3" class="btn btn-secondary" >REVIEW</button>
			<button id="info4" class="btn btn-secondary" >Q&A</button>
			<hr class="my-2">
		</div>
		
		<div class="content4">
			<div class="detail"><img id="detail" src="<%=request.getContextPath()%>/<%= p.getDetailImg()%>" width="100%" height="100%"></div>
        </div>
        <br><br><br><br><br>

		<script>

		
			function onclick(){		
				$.ajax({
					url : "",
					cache: true,
					processData : false,
					success:function(detailImg){
						$("#order").html(detailImg);
					},error:function(){
						console.log("ㅠㅠㅠ");
					}
				})
			}
				$("#info1").click(function(){		// 아직 못함 아이고 어렵다~~~!!!!!! 
					$.ajax({
						url : "<%=request.getContextPath()%>/resources/product/<%=p.getpNo()%>D.jpg",
						cache: true,
					    processData : false,
						success:function(detailImg){
							$(".content4").html(detailImg);
						},error:function(){
							console.log("ㅠㅠㅠ");
						}
					})
				})
				$("#info2").click(function(){
					$.ajax({
						url : "<%=request.getContextPath()%>/views/product/detailCancelInfo.jsp",
						dataType: "html",
						success:function(result){
							$(".content4").html(result);
						},error:function(){
							
						}
					})
				})
		
			(function(){
				
				// 장바구니 넣기
				$("#A").click(function(){
				$.ajax({
				url : "in.ca",
	  		    data : {
	  		    content:<%= p.getaPrice() %>,
	  		    
			    },
	 		    typt : "post",
			    success:function(result){
			    console.log("장바구니 담기 성공");
	   			}, erorr:function(){
			    console.log("장바구니 담기 실패");
	   			})
			})
	
		})
			
				
		</script>
		<% } %>
		
	</div>

	
	<%@ include file="../common/footerbar.jsp" %>
</body>
</html>