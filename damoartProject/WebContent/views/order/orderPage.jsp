<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.order.model.vo.Order"%>
<% 
	ArrayList<Order> list = (ArrayList<Order>)request.getAttribute("list");
	Order o = (Order)request.getAttribute("o");
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
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<style>
    div{box-sizing:border-box;}

    .order_head{
       width: 100%;
       height: 200px;
       margin-top: 50px;
       font-size: 30px;
   }

   #order01, #order03{
       color: rgb(94,94,94);
   }

   .cart_name>table {
       width: 1000px;
       border-top: 1px solid #444444;
       border-collapse: collapse;
       margin-left: auto;
       margin-right: auto;
   }
   #cart_content>th, #cart_content> td {
       border-bottom: 1px solid #444444;
       border-top: 1px solid #444444;
       padding: 10px;
   }

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

   .order_bottom{
       float: right;
       margin-top:20px;
       margin-right:310px;
       font-size: 13px;
       padding: 5px;    
   }

   .orderTerms{
       width: 830px;
       margin:auto;
       margin-top: 100px;
   }

   .order_wrap{
       margin-top: 20px;
       width: 1000px;
       margin-left: 20%;
       font-size: 14px;
   }

   #order, #pay, #option{
       width: 460px;
       font-size: 13px;
   }

   .order_wrap>table>th, td{
       border-bottom: none;
       padding: 10px;
   }

   .last{
       width: 460px;
       height: 100px;
       margin: auto;
       font-size: 13px;
   }
   button{
      width: 150px;
    }
   #goBack{
       color: rgb(34, 30, 23);
       background-color: rgb(203, 185, 153);
       float: left;
       margin: 30px;
   }
   #goPay{
       color: whitesmoke;
       background-color: rgba(78, 67, 44, 0.7);
       float: right;
       margin: 30px;
   }

</style>
<body>
   <%@ include file="../common/menubar.jsp" %>


   <!-- 주문페이지 윗 부분 -->
   <div class="order_head" align="center">
       <br>
       <b id="order01">01 장바구니 ></b><b id="order02"> 02 주문서작성/결제 ></b><b id="order03"> 03 주문완료</b>
   </div>
   
   
   <!-- 주문하는 상품 -->
   	<% if ( loginUser != null ) { %>
   <div class="cart_name" align="center">
       <table>
           <tr id="cart_name" height=40>
               <th colspan="2" width=400>상품</th>
               <th width=130>옵션</th>
               <th width=90>수량</th>
               <th width=90>결제금액</th>
               <th width=90>적립예상금액</th>
           </tr>
           <div>
            <% for(Order or : list) { %>
               <tr id="cart_content">
               
                   <td width="200"><img src= "<%=request.getContextPath()%>/resources/images/product/1M.gif" width="80px" height="80px"></td>
                   <td width="200">
                      <%= or.getTitle() %>
                     <br> <%= or.getArea() %>
                     <br><%= or.getsDate() %> ~ <%= or.geteDate() %> 
                   </td>                           
                   <td width="50">                    
                   <% if (o.getCartOpt().equals("C")) { %>
                 	   어린이
                    <% } else if (o.getCartOpt().equals("T")) { %>
                                           청소년
                    <% } else { %>
                                           성인
                    <% } %></td>
                   <td width="50"><%= o.getCartCount() %></td>
                   <td width="50">
					<% if (or.getCartOpt().equals("C")) { %>
                    <%= or.getcPrice() %>
                    <% } else if (or.getCartOpt().equals("T")) { %>
                    <%=or.gettPrice() %>
                    <% } else { %>
                    <%=or.getaPrice() %>
                    <% } %>￦</td>
                   <td width="50"><% if (or.getCartOpt().equals("C")) { %>
                    <%= or.getcPrice()/100 %>
                    <% } else if (or.getCartOpt().equals("T")) { %>
                    <%=or.gettPrice()/100 %>
                    <% } else { %>
                    <%=or.getaPrice()/100 %>
                    <% } %>￦</td>
               </tr>
               
        <% } %>
              <%System.out.println("o에 들어가있는것들" + o ); %>
           </table>
           </div>
           <div class="order_bottom" width="800">
        
               <p>총 <%= o.getCartCount() %> 개의 상품   &nbsp; &nbsp; &nbsp;
               	합계 &nbsp; 
               		<% if (o.getCartOpt().equals("C")) { %>
                    <%= o.getcPrice() %>
                    <% } else if (o.getCartOpt().equals("T")) { %>
                    <%=o.gettPrice() %>
                    <% } else { %>
                    <%=o.getaPrice() %>
                    <% } %>￦</p>
           </div>
           <% } %>
           
            
           <!-- 약관 동의 -->
           <div class="orderTerms">
               <hr><br>
           <%@ include file="../order/orderTerms.jsp" %>
           </div>

       <!--주문 정보-->
       <div class="order_wrap">
           <br><br>
           <b>&nbsp;&nbsp;&nbsp;주문자 정보</b>
           <hr>
           <table id="order" width="460px">
               <tr>
                   <td width="5px">●</td>
                   <td width="150px">주문하시는 분</td>
                   <td width="150px"><%= o.getMemName() %></td>
               </tr>
               <tr>
                   <td>●</td>
                   <td>휴대폰 번호</td>
                   <td><%= o.getPhone() %></td>
               </tr>
               <tr>
                   <td width="5px" >●</td>
                   <td>이메일</td>
                   <td><%= o.getEmail() %></td>
               </tr>
           </table>
           
       
       <!--결제 정보-->

           <br><br>
           <b>&nbsp;&nbsp;&nbsp;결제 정보</b>
           <hr>
           <table id="pay" width="500px">
               <tr>
                   <td width="5px" ></td>
                   <td width="150px">상품 합계 금액</td>
                   <td width="150px">  <% for(Order or : list) { %>
                   <% if (or.getCartOpt().equals("C")) { %>
                    <%= or.getCartCount()*or.getcPrice() %>
                    <% } else if (or.getCartOpt().equals("T")) { %>
                    <%=or.getCartCount()*or.gettPrice() %>
                    <% } else { %>
                    <%=or.getCartCount()*or.getaPrice() %>
                    <% } %>)</td> <%} %>
               </tr>
               <tr>
                   <td></td>
                   <td>할인 및 적립</td>
                   <td><input></td>
               </tr>
               <tr>
                <td></td>
                <td>적립금 사용<br>&nbsp;</td>
                <td width="600"><input> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;보유적립금 : 적립금얼마
                    <br><small>적립금은 5000원 이상부터 사용 가능합니다.</small>
                </td>
                </tr>
                <tr>
                   <td></td>
                   <td>최종 결제 금액</td>
                   <td><input></td>
                </tr>
           </table>

       <!--결제 수단 선택-->
        <br><br>
        <b>&nbsp;&nbsp;&nbsp;결제</b>
        <hr>
        <table id="option" width="460px">
            <tr>
                <td width="5px"><input type="radio"></td>
                <td width="100%" colspan="2" input type="radio">무통장 입금</td>
            </tr>
            <tr>
                <td></td>
                <td width="155px" input type="radio">입금자명</td>
                <td><input width="150px"></td>
            </tr>
            <tr>
                <td></td>
                <td>입금은행</td>
                <td><select name="option">
                    <option>국민은행 1234-567-8888 예금주명:다모아트</option>
                    <option>농협은행 1234-567-8888 예금주명:다모아트</option>
                    <option>카카오뱅크 1234-567-8888 예금주명:다모아트</option></td>
            </tr>
            <tr>
                <td></td>
                <td>환불계좌<br>&nbsp;</td>
                <td><input placeholder="계좌번호">
                    <br><small>구매후 주문 취소시 입력한 계좌로 환불됩니다.</small></td>
            </tr>
            <tr>
                <td><input type="radio"></td>
                <td colspan="2">신용카드</td>
            </tr>
        </table>
        </div>

        
        <!--결제 버튼-->
        <br><br><hr>
        <div class="last">
        <input type="checkbox"><b>&nbsp;(필수) 구매하실 상품의 결제정보를 확인하였으며, 구매 진행에 동의합니다.</b>
        <br>
            <a href="<%=contextPath%>/orcom.ca"><button class="btn" id="goBack"><b>돌아가기</b></button></a>
            <button type="submit" class="btn" id="goPay" onclick="iamport();"><b>결제하기</b></button>
        </div>


		<script>
		function iamport(){
			IMP.init('imp70168812');
	        IMP.request_pay({
	        	pg: "html5_inicis",
		       	may_method: 'card',
		        merchant_uid : 'merchant_' + new Date().getTime(),
		        name : '주문명 : 결제테스트',
		        amount : 100,
		        buyer_email : 'iamport@siot.do',
		        buyer_name : '$buyerName',
		        buyer_tel : '010-1234-5678',
		        buyer_addr : '서울특별시 강남구 삼성동',
		        buyer_postcode : '123-456'
    }, function(rsp) {
        if ( rsp.success ) {
            var msg = '결제가 완료되었습니다.';
            msg += '고유ID : ' + rsp.imp_uid;
            msg += '상점 거래ID : ' + rsp.merchant_uid;
            msg += '결제 금액 : ' + rsp.paid_amount;
            msg += '카드 승인번호 : ' + rsp.apply_num;
       
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }
       	alert(msg);
    });
		}
		
		</script>
       <br><br>
        <%@ include file="../common/footerbar.jsp" %>
    </body>
    </html>