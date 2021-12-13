<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
               <tr id="cart_content">
                   <td width="200"><img src= "<%=request.getContextPath()%>/resources/images/product/1M.gif" width="80px" height="80px"></td>
                   <td width="200">
                       영국 테이트미술관 특별전
                     <br>북서울미술관
                     <br>2021.12.21 ~ 22.05.08  
                   </td>                           
                   <td width="50">어린이</td>
                   <td width="50">1</td>
                   <td width="50">14000￦</td>
                   <td width="50">140￦</td>
               </tr>
               <tr id="cart_content">
                   <td width="200"><img src= "<%=request.getContextPath()%>/resources/images/product/1M.gif" width="80px" height="80px"></td>
                   <td width="200">
                       영국 테이트미술관 특별전
                     <br>북서울미술관
                     <br>2021.12.21 ~ 22.05.08  
                   </td>                           
                   <td width="50">어린이</td>
                   <td width="50">1</td>
                   <td width="50">14000￦</td>
                   <td width="50">140￦</td>
               </tr>
           </table>
           </div>
           <div class="order_bottom" width="800">
               <p>총 2 개의 상품   &nbsp; &nbsp; &nbsp;합계 &nbsp; 28000￦</p>
           </div>

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
                   <td><input width="150px"></td>
               </tr>
               <tr>
                   <td></td>
                   <td>전화번호</td>
                   <td><input></td>
               </tr>
               <tr>
                   <td>●</td>
                   <td>휴대폰 번호</td>
                   <td><input></td>
               </tr>
               <tr>
                   <td width="5px" >●</td>
                   <td>이메일</td>
                   <td><input type="email"></td>
               </tr>
           </table>
  
           
       
       <!--결제 정보-->

           <br><br>
           <b>&nbsp;&nbsp;&nbsp;결제 정보</b>
           <hr>
           <table id="pay" width="460px">
               <tr>
                   <td width="5px" ></td>
                   <td width="150px">상품 합계 금액</td>
                   <td><input width="150px"></td>
               </tr>
               <tr>
                   <td></td>
                   <td>할인 및 적립</td>
                   <td><input></td>
               </tr>
               <tr>
                <td></td>
                <td>적립금 사용<br>&nbsp;</td>
                <td><input>
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
        <b>&nbsp;&nbsp;&nbsp;결제 수단 선택 / 결제</b>
        <hr>
        <table id="option" width="460px">
            <tr>
                <td width="5px"><input type="radio"></td>
                <td width="100%" colspan="2">무통장 입금</td>
            </tr>
            <tr>
                <td></td>
                <td width="155px">입금자명</td>
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
            <a href="../order/cart.jsp"><button class="btn" id="goBack"><b>돌아가기</b></button></a>
            <a href="../order/order.jsp"><button type="submit" class="btn" id="goPay"><b>결제하기</b></button></a>
        </div>
       <br><br>
        <%@ include file="../common/footerbar.jsp" %>
    </body>
    </html>