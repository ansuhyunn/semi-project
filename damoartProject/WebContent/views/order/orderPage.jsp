<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.order.model.vo.Order"%>
<% 
	ArrayList<Order> list = (ArrayList<Order>)request.getAttribute("list");
	int totalCount = (int)request.getAttribute("totalCount");
	int totalPrice = (int)request.getAttribute("totalPrice");
	//Order o = (Order)request.getAttribute("o");
 	//Order totalCount = (Order)request.getAttribute("totalCount");
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
       width:600px;
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
       width: 470px;
       font-size: 13px;
   }

   .order_wrap>table>th, td{
       border-bottom: none;
       padding: 10px;
   }

   .last{
       width: 480px;
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

   #checkboxx{
       margin: auto;
   }

</style>
<body>
   <%@ include file="../common/menubar.jsp" %>


   <!-- 주문페이지 윗 부분 -->
   <div class="order_head" align="center">
       <br>
       <b id="order01">01 장바구니 ></b><b id="order02"> 02 주문서작성/결제 ></b><b id="order03"> 03 주문완료</b>
   </div>
   
   <% //System.out.println(totalCount); %>
   
   <!-- 주문하는  -->
   	<% if ( loginUser != null ) { %>
   <div class="cart_name" align="center">
       <table>
           <tr id="cart_name" height=40>
               <th colspan="2" width=400></th>
               <th width=130>옵션</th>
               <th width=90>수량</th>
               <th width=90>결제금액</th>
               <th width=90>적립예상금액</th>
           </tr>
           <div>
            <% for(Order or : list) { %>
               <tr id="cart_content">
               
                   <td width="200"><img src= "<%=request.getContextPath()%>/<%= or.getMainImg() %>"  width="80px" height="80px"></td>
                   <td width="200">
                      <%= or.getTitle() %>
                     <br> <%= or.getArea() %>
                     <br><%= or.getsDate() %> ~ <%= or.geteDate() %> 
                   </td>                           
                   <td width="50">                    
                   <% if (or.getCartOpt().equals("C")) { %>
                 	   어린이
                    <% } else if (or.getCartOpt().equals("T")) { %>
                                           청소년
                    <% } else { %>
                                           성인
                    <% } %></td>
                   <td width="50"><%= or.getCartCount() %></td>
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
           </table>
           </div>
           <div class="order_bottom" width="800">
        
               <p>총 <%= totalCount %> 개의 상품   &nbsp; &nbsp; &nbsp;
               	합계 &nbsp; 
               		<%= totalPrice %>￦</p>
           </div>
           <% } %>
           
           
           <!-- 약관 동의 -->
           <div class="orderTerms">
               <hr><br>
           <%@ include file="../order/orderTerms.jsp" %>
           </div>

       <!--주문 정보-->
       <div class="order_wrap">
           <br><br><br><br>
           <b>&nbsp;&nbsp;&nbsp;주문자 정보</b>
           <hr>
           <table id="order" width="460px">
               <tr>
                   <td width="5px">●</td>
                   <td width="150px">주문하시는 분</td>
                   <td width="150px"><%= list.get(0).getMemName() %></td>
               </tr>
               <tr>
                   <td>●</td>
                   <td>휴대폰 번호</td>
                   <td><%= list.get(0).getPhone() %></td>
               </tr>
               <tr>
                   <td width="5px" >●</td>
                   <td>이메일</td>
                   <td><%= list.get(0).getEmail() %></td>
               </tr>
           </table>
           
       
       <!--결제 정보-->

           <br><br><br><br>
           <b>&nbsp;&nbsp;&nbsp;결제 정보</b>
           <hr>
           <table id="pay" width="500px">
               <tr>
                   <td width="5px" ></td>
                   <td width="230px"> 합계 금액</td>
                   <td width="150px">  
                   <div class="totalP"><%= totalPrice %> ￦</div>
               </tr>
               <tr>
                   <td></td>
                   <td>할인 및 적립</td>
                   <td><%= totalPrice/100 %> ￦</td>
               </tr>
               <tr>
                <td></td>
                <td>적립금 사용<br>&nbsp;</td>
                <td width="600"><input class="inPoint" onchange="ccc()"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;보유적립금 : <%= list.get(0).getPoiPoint() %> ￦
                    <br><small>적립금은 3000원 이상부터 사용 가능합니다.</small>
                </td>
                </tr>
                <tr>
                   <td></td>
                   <td>최종 결제 금액</td>
                   <td><input class="finPrice"> ￦</td>
                </tr>
           </table>
           <br><br><br>
        </div>

        
        <!--결제 버튼-->
        <br><br><hr>
        <div class="last">
        <input type="checkbox" class="check type1" id="checkboxx"><b>&nbsp;(필수) 구매할 결제정보를 확인했습니다.</b>
        <br>
            <a href="<%=contextPath%>/orcom.ca"><button class="btn" id="goBack"><b>돌아가기</b></button></a>
            <button type="submit" class="btn" id="goPay" onclick="orderTerms();"><b>결제하기</b></button>
        </div>


		<script>

		
  		 function orderTerms(){
  			 debugger
  			 var chkList = $('.check')
  			 for(var i =0; i < chkList.length ; i++){
  				if(!chkList[i].checked){
  					$('#goPay')[0].disabled = false;
  					switch(chkList[i].classList[1]){
  						case "type1":
		  					alert("결제정보를 확인하고 동의해주세요.");
		  					break;
  						case "type2":
		  					alert("이용약관을 확인하고 동의해주세요.");
		  					break;
	  					default :
	  						alert("개인정보 제공 약관을 확인하고 동의해주세요.");
	  						break;
  					}  					
  					 return 
  				 } 
  			 }
  			 iamPort()
  		 }
		function iamport(){
			debugger 
			IMP.init('imp70168812');
	        IMP.request_pay({
	        	pg: "html5_inicis",
		       	may_method: 'card',
		        merchant_uid : 'merchant_' + new Date().getTime(),
		        name : '<%=list.get(0).getTitle()%>',
		        amount : '<%= totalPrice %>',
		        buyer_email : '<%=list.get(0).getEmail()%>',
		        buyer_name : '<%=list.get(0).getMemName()%>',
		        buyer_tel : '<%=list.get(0).getPhone()%>'
    }, function(rsp) {
        if ( rsp.success ) {
            var msg = '결제가 완료되었습니다.';
            msg += '고유ID : ' + rsp.imp_uid;
            msg += '상점 거래ID : ' + rsp.merchant_uid;
            msg += '결제 금액 : ' + rsp.paid_amount;
            msg += '카드 승인번호 : ' + rsp.apply_num;

            location.href='<%=contextPath %>/orcom.ca'
            
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        	alert(msg);
        }
       
    });
		}
		
		function ccc(){
			debugger;
			var inVal = $('.inPoint')[0].value;
			if(inVal && inVal.length > 0){
				var ppp = parseInt(inVal);
				var ttt = parseInt($('.totalP')[0].textContent/* .replaceAll(',',"") */);
				// 1. 적립금이랑 비교
				if(parseInt(inVal) <= <%=list.get(0).getPoiPoint()%> && parseInt(inVal) >= 3000){
					// 2. 비교 결과 처리
					$('.finPrice')[0].value = ttt-ppp ;
					$('#goPay')[0].disabled = false;
				} else {
					alert("유효한 값을 넣어주세요");
					$('#goPay')[0].disabled = true;
				}
				
				
			}else{
				// 버튼 풀기
				$('#goPay')[0].disabled = false;
			}
				
			console.log("111");
		}
		
		</script>
       <br><br>
        <%@ include file="../common/footerbar.jsp" %>
    </body>
    </html>