<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.order.model.vo.Cart"%>
<% 
	ArrayList<Cart> list = (ArrayList<Cart>)request.getAttribute("list");

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

    /* 장바구니 상단 스타일 */
    .cart_head{
        width: 100%;
        height: 200px;
        margin-top: 50px;
        font-size: 30px;
    }

    #cart02{
        color: rgb(94,94,94);
    }
    
        
    /* 표 스타일 */
  
    table {
        width: 1000px;
        border-top: 1px solid #444444;
        border-collapse: collapse;
        margin-left: auto;
        margin-right: auto;
    }
      th, td {
        border-bottom: 1px solid #444444;
        padding: 10px;
    }

    /* 장바구니 목록 스타일 */
    .cart_name {
        font-size: 13px;
        text-align: center;
        margin-left: auto;
        margin-right: auto;
    }
 
    #cart_content {
        height: 130px;
        width: 850px;
    }

    #soldout{
        color: rgb(94,94,94);
    }

    #soldout_item{
        color: rgb(135, 56, 47);
    }

    /* 장바구니 하단 스타일 */
    .cart_bottom{
        margin-top:20px;
        margin-left:310px;
        font-size: 13px;
        padding: 5px;    
    }

    .cart_bottom>a{
        margin-left: 10px;
        text-decoration: none;
        color: black;
    }

    .cart_bottom>b{
        margin-right: 310px;
        float: right;
        font-size: 13px;
        padding: 5px;
    }

    .button>.btn{
        float: right;
        margin-top: 10px;
        margin-right: 310px;
        width: 100px;
        height: 35px;
        background-color: rgb(182, 167, 141);
        font-size: 14px;
    }
  
</style>
</head>
<body>

    <%@ include file="../common/menubar.jsp" %>
    
    <!-- 장바구니 윗 부분 -->
    <div class="cart_head" align="center">
        <br>
        <b>01 장바구니 ></b><b id="cart02"> 02 주문서작성/결제 > 03 주문완료</b>
    </div>

    <!-- 장바구니 내용-->

    <div class="cart_name" align="center">
        <table>
            <tr id="cart_name" height=40>
                <th colspan="2" width=400>상품</th>
                <th width=130>옵션</th>
                <th width=90>수량</th>
                <th width=90>결제금액</th>
                <th width=100>적립예상금액</th>
            </tr>

	<!-- 로그인 조건 -->
	<% if ( loginUser != null ) { %>
            <!--상품 없을 때-->
            <% if(list.isEmpty()) { %>            
            <tr>
                <td colspan="7" width="800" height="300">
                    <b>장바구니에 담긴 상품이 없습니다</b>
                   <% System.out.println("되나"); %>
                </td>
            </tr>
            
            <!-- 상품 있을 때 -->
            <% } else { %>
            
            <% for(Cart c : list) { %>
            <% if( c.getSoldOut().equals("N")) { %>
            <div>
            
            <!--상품 품절일 때-->
            <tr id="cart_content">
                <td width="220"><img src= "<%=request.getContextPath()%>/resources/images/product/1M.gif" width="80px" height="80px"></td>
                <td width="230" id="soldout">
						   <%= c.getTitle() %>
                      <br> <%= c.getArea() %>
                      <br><%= c.getsDate() %> ~ <%= c.geteDate() %>
                </td>                           
                <td id="soldout_item" colspan="4" width="200"><b>구매 할 수 없는 상품입니다</b></td>
           
                  <%} else { %>
            </div>
 			</tr> 
                <tr id="cart_content>">
                    <td width="200"><img src= "<%=request.getContextPath()%> 이미지 " width="80px" height="80px"></td>
                    <td width="200">
                      	   <%= c.getTitle() %>
                      <br> <%= c.getArea() %>
                      <br><%= c.getsDate() %> ~ <%= c.geteDate() %>
                    </td>                           
                    <td width="50">
                    <% if (c.getCartOpt().equals("C")) { %>
                 	   어린이
                    <% } else if (c.getCartOpt().equals("T")) { %>
                                           청소년
                    <% } else { %>
                                           성인
                    <% } %>
                    </td>
                    <td width="50"><%= c.getCartCount() %></td>
                    <td width="50">
 				    <% if (c.getCartOpt().equals("C")) { %>
                    <%= c.getcPrice() %>
                    <% } else if (c.getCartOpt().equals("T")) { %>
                    <%=c.gettPrice() %>
                    <% } else { %>
                    <%=c.getaPrice() %>
                    <% } %>
                    </td>
                    <td width="50">
					<% if (c.getCartOpt().equals("C")) { %>
                    <%= c.getcPrice()/100 %>
                    <% } else if (c.getCartOpt().equals("T")) { %>
                    <%=c.gettPrice()/100 %>
                    <% } else { %>
                    <%=c.getaPrice()/100 %>
                    <% } %>
					</td>
                </tr>
  
            <% } %>
		<%} %>
	<%} %>
	<%} %>
    </table>    	
    <script>    	
    /*
	function rqOrder(){
		debugger
		let chekObj = document.getElementsByClassName("chkState");
   		  let lenth = chekObj.length;
   		  let checked = 0;
   		  let checkboxTest;
   		  let requestList = [];

   		  for (var i = 0; i < lenth; i++) {
   		    if (chekObj[i].checked === true) {
   		      checked += 1;
   		      checkboxTest = chekObj[i].getAttribute("id");
   		   	  requestList.push(i)
   		    }
   		  }
   		  /* 주문하기 화면으로 이동하기 */
   		
   		 /*
   		$.ajax({
   			url : "/list.ca",
			data : {
				content : "order",
				select : requestList,
			},
			success:function(result){
				console.log("result: " + result);
				// TODO
				/*
				$.ajax({
		   			url : "/list.ca",
					data : {
						content : "order",
						select : requestList,
					}
					success:function(result){
						// TODO
					},error:function(){
						console.log("ㅠㅠㅠ");
					}
				})
			},error:function(){
				console.log("ㅠㅠㅠ");
			}
		})
		
	}
	*/
	/* $('.btn_order').on('click',function(){
		debugger
		let chekObj = document.getElementsByClassName("chkState");
   		  let lenth = chekObj.length;
   		  let checked = 0;
   		  let checkboxTest;

   		  for (i = 0; i < lenth; i++) {
   		    if (chekObj[i].checked === true) {
   		      checked += 1;
   		      checkboxTest = chekObj[i].getAttribute("id");
   		   	  requestList.push[]
   		      console.log(JSON.stringify(data));
   		    }
   		  }
	})
	*/
</script>
<!-- 

    	/* $('.btn_order').on('click',function(){
    		debugger
    		let chekObj = document.getElementsByClassName("chkState");
	   		  let lenth = chekObj.length;
	   		  let checked = 0;
	   		  let checkboxTest;
	
	   		  for (i = 0; i < lenth; i++) {
	   		    if (chekObj[i].checked === true) {
	   		      checked += 1;
	   		      checkboxTest = chekObj[i].getAttribute("id");
	   		   	  requestList.push[]
	   		      console.log(JSON.stringify(data));
	   		    }
	   		  }
    	})
    	*/
 -->

    </script>
    </div>
    
    
    <!-- 장바구니 하단 -->
    <div class="cart_bottom" width="800">
    <!-- 걍 전체 지우기 이런거로,, 장바구니 비우기라던가 -->
        <button class="btn deleteCart" onclick="deleteCart();">장바구니 비우기</button>
        <b>결제금액 28000￦</b>
    </div>
    <br>
    <div class="button">
     <a href="<%=contextPath%>/order.ca" button type="submit" class="btn"><b>주문하기</b></a>
   
   <script>
	function deleteCart(){
	console.log("카트비우기 되나?")
		$.ajax({
			url:"out.ca",
				type:"post",
	             success:function(result){
	                console.log("ajax통신 성공: " + result);
	                alert("성공적으로 장바구니를 비웠습니다.");
	                location.reload()
				}, error : function(){
	               console.log("ajax통신 실패"); 
	               }
		})
	}
    </script>
    </div>


    <br><br><br><br><br><br><br><br>
    
    <%@ include file="../common/footerbar.jsp" %>
    

</body>
</html>