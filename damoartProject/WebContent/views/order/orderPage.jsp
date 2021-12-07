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
       margin-top: 100px;
       font-size: 30px;
   }

   #order02{
       color: rgb(94,94,94);
   }

   .cart_name>table {
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
     th:first-child, td:first-child {
       border-left: none;
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

   #order_p{
       width: 460px;
       font-size: 13px;
   }

   #order_p>td{
       border-bottom:1 px red;

   }

</style>
<body>
   <%@ include file="../common/menubar.jsp" %>

   <!-- 주문페이지 윗 부분 -->
   <div class="order_head" align="center">
       <br>
       <b>01 장바구니 ></b><b id="order02"> 02 주문서작성/결제 ></b><b> 03 주문완료</b>
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
                   <td width="200"><img src= "<%=request.getContextPath()%>/resources/images/product/1_1.gif" width="80px" height="80px"></td>
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
                   <td width="200"><img src= "<%=request.getContextPath()%>/resources/images/product/1_1.gif" width="80px" height="80px"></td>
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
           <table id="order_p" width="460px">
               <tr>
                   <td width="5px" >●</td>
                   <td width="150px">주문하시는 분</td>
                   <td><input width="150px"></td>
               </tr>
               <tr>
                   <td width="5px" ></td>
                   <td width="155px">전화번호</td>
                   <td><input width="150px"></td>
               </tr>
               <tr>
                   <td width="5px" >●</td>
                   <td width="150px">휴대폰 번호</td>
                   <td><input width="150px"></td>
               </tr>
               <tr>
                   <td width="5px" >●</td>
                   <td width="150px">이메일</td>
                   <td><input width="150px"></td>
               </tr>
           </table>
       </div>
           
       
       <!--결제 정보-->
       <div class="order_wrap">
           <br><br>
           <b>&nbsp;&nbsp;&nbsp;결제 정보</b>
           <hr>
           <table id="order_p" width="460px">
               <tr>
                   <td width="5px" ></td>
                   <td width="150px">상품 합계 금액</td>
                   <td><input width="150px"></td>
               </tr>
               <tr>
                   <td width="5px" ></td>
                   <td width="155px">할인 및 적립</td>
                   <td><input width="150px"></td>
               </tr>
               <tr>
                   <td width="5px" ></td>
                   <td width="150px">최종 결제 금액</td>
                   <td><input width="150px"></td>
               </tr>
           </table>
       </div>
