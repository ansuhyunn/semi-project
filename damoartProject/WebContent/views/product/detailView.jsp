<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.product.model.vo.Product, com.kh.order.model.vo.Cart" %>
<% 
	Product pro = (Product)request.getAttribute("p");
	ArrayList<Product> detailList = (ArrayList<Product>)request.getAttribute("detailList");
	ArrayList<Product> starList = (ArrayList<Product>)request.getAttribute("starlist");
	
	ArrayList<Cart> list = (ArrayList<Cart>)request.getAttribute("list");
	
	int totalCount = 0;
	int totalPrice = 0;
	
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
	#star1, #star2, #review{
		width: 25%;
		height: 50px;
		float: left;
		margin-top: 10px;
	}
	#star1{
		text-align: center;
		font-size: large;
		padding-top: 15px;
		margin-left: 30px;
	}
	#star2{
		text-align: center;
		font-size: xx-large;
		font-weight: bolder;
		padding-right: 15px;
	}
	#review{
		width: 100px;
		text-decoration: none;
		text-align: center;
		font-size: x-large;
		color: black;
		padding-top: 6px;
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
	#pay{width: 500px; margin-left:  -10px;}
	#pay th{width: 80px; height: 40px;}
	#pay td{width: 30px; height: 40px;}
	#insertCart {width: 70px; background-color:rgb(203, 185, 153);}
	
	#order{
		width: 300px;
		background-color: whitesmoke;
		font-size: 20px;
		text-align: center;
		font-weight: border;
	}
	#total{
		width: 300px;
		background-color: whitesmoke;
		text-align: right; 
		font-size: 30px;
		padding-right: 30px;
	}
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
		margin-left: 200px;
		margin-top: 50px;
		margin-bottom: 10px;
	}
	.content4{
		margin: auto;
		margin-top: 100px;
		width: 80%;
	}
	.content5{
		margin: auto;
		margin-left: 100px;
		margin-top: 10px;
		width: 80%;
	}
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	
	<div class="wrapper">
		<% for(Product p : detailList){ %>
		<input type="hidden" id="pNo" name="pno" value="<%= p.getpNo() %>">
		<div class="content1">
			<div class="title" style="font-size: 30px; font-weight: bolder; margin-bottom: 7px;"><%= p.getTitle() %></div>
			<div class="date" style="font-size: 13px;"><%= p.getsDate() %> ~ <%= p.geteDate() %> <%= p.getArea() %></div>
		</div>
		<hr class="my-2">
		<div class="content2" >
			<div class="poster">
				<img src="<%=request.getContextPath()%>/<%= p.getMainImg() %>" width="100%" height="100%">
				<% for(Product s : starList){ %>
					<% if(s.getStar() != null){ %>
						<div id="star1"> 별점 </div>
						<div id="star2"> <%= s.getStar() %> </div>
					<%}else { %>
						<div id="star1"> 별점 </div>
						<div id="star2"> - </div>
					<%} %>
				<%} %>
				<a id="review" href="<%=contextPath%>/review.pro?cpage=1">review </a>
			</div>
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
					
					<table id="pay">
						<tr>
							<th >옵션선택</th>
							<td>
								<select name="option" id="option" >
									<option value="A">성인</option>
									<option value="T">청소년</option>
									<option value="C">소아</option>
								</select>
							</td>
							<th>수량</th>
							<td><input type="number" id="count" style="width: 50px;"></td>
							<td><button class="btn btn-secondary" id="insertCart" onclick="insertCart();">선택</button></td>
						</tr>
					</table>
				
				<table id="result">
					<tr>
						<td id="order"></td>
						<th id="total"></th>
					</tr>
				</table>
			</div>
		</div>	
		

		<div class="content3">
			<button id="info1" class="btn btn-secondary" >상세정보</button>
			<button id="info2" class="btn btn-secondary" >예매/취소안내</button>
			<hr class="my-2">
		</div>
		
		<div class="content4">
			<div class="detail"><img id="detail" src="<%=contextPath%>/<%= p.getDetailImg()%>" width="100%" height="100%"></div>
        </div>
       <div class="content5"></div>
        <br><br><br><br><br>

		<script>
			
			$("#info1").click(function(){
				$.ajax({
					url:"ajaxImg.pro",
					data:{pno:$("#pNo").val()},
					success:function(result){
						let value = '<img src="' 
								   + '<%=contextPath%>/'
								   + result.detail
								   + '" width="100%" height="100%">';
						$(".detail").html(value);
						console.log(value);
						console.log(result);
					},error:function(){
						
					}
				})
			})
			

			$("#info2").click(function(){
				$.ajax({
					url : "<%=contextPath%>/views/product/detailCancelInfo.jsp",
					dataType: "html",
					success:function(result){
						$(".detail").html(result);
					},error:function(){
						
					}
				})
			})
			
			
			function insertCart(){
				
				$.ajax({
					url:"in.ca",
					data:{
					   pno: $("#pNo").val(),
					   count: $("#count").val(),
				       option: $("#option").val()
 						},
 					type:"post",
 		            success:function(list){
 		                console.log("ajax통신 성공: " + list);
 		                alert("성공적으로 장바구니에 담겼습니다.");
 		                let totalCount = 0;
 		                let totalPrice = 0;
 		                let orderList = "";
 		                
 		                $.each(list, function(index, data){
 		                	totalCount += data.cartCount;
 		                	 if(data.aPrice != 0) {
 		                		totalPrice += data.cartCount * data.aPrice;
 		                		orderList = "성인";
 		                     }else if(ca.getCartOpt().equals("C")) {
 		                    	totalPrice += data.cartCount * data.tPrice;
 		                    	orderList = "청소년";
 		                     }else if(ca.getCartOpt().equals("T")){
 		                    	totalPrice += data.cartCount * data.cPrice;
 		                    	orderList = "소아";
 		                     }else {};
 		                });
 		                
 		                $("#order").html(orderList + totalCount + "장            " + totalPrice + "원");
 		                $("#total").html("총 " + totalPrice + "원");
 					 }, error : function(){
 		               console.log("ajax통신 실패"); 
 		             }
				})
			}
		</script>
		<% } %>
		
	</div>

	
	<%@ include file="../common/footerbar.jsp" %>
</body>
</html>