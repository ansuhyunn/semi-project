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

<style>
    body{
        width:1000px;
        background-color:#e1d5bf;
    } 

    /* 장바구니 상단 스타일 */
    .cart_head{
        width: 100%;
        height: 200px;
        margin-top: 100px;
        font-size: 30px;
        
    /* 표 스타일 */
    }
    table {
        width: 100%;
        border-top: 1px solid #444444;
        border-collapse: collapse;
    }
      th, td {
        border-bottom: 1px solid #444444;
        padding: 10px;
    }
      th:first-child, td:first-child {
        border-left: none;
    }

    /* 장바구니 목록 스타일 */
    .cart_name {
        font-size: 13px;
        text-align: center;
    }

    /* 장바구니 하단 스타일 */
    .cart_bottom{
        margin-top:20px;
        margin-left: 60px;
    }
    .cart_bottom>a{
        font-size: 13px;
        padding: 5px;
        text-decoration: none;
        color: black;
    }
    .cart_bottom>b{
        font-size: 13px;
        float: right;
        padding: 5px;
    }
    .button{
        width: 80px;
        height: 30px;
        background-color: rgb(182, 167, 141);
        float: right;
        margin-top: 10px;
    }
  
</style>
</head>
<body>

    <%@ include file="../common/menubar.jsp" %>

    <!-- 장바구니 윗 부분 -->
    <div class="cart_head" align="center">
        <b id="cart01">01 장바구니 ></b><b color="#7f7f7f"> 02 주문서작성/결제 > 03 주문완료</b>
    </div>

    <!-- 장바구니 내용-->
    <div class="cart_name" align="center">
        <table  width=850 height=400>
            <tr id="cart_name" height=40>
                <th width=400>상품</th>
                <th width=130>옵션</th>
                <th width=90>수량</th>
                <th width=90>결제금액</th>
                <th width=90>적립예상금액</th>
            </tr>
            <div id="cart_content">
                <tr id="cart_content">
                    <th>dd</th>
                    <th>dd</th>
                    <th>dd</th>
                    <th>dd</th>
                    <th>dd</th>
                </tr>
                <tr>
                    <th>dd</th>
                    <th>dd</th>
                    <th>dd</th>
                    <th>dd</th>
                    <th>dd</th>
                </tr>
                <tr>
                    <th>dd</th>
                    <th>dd</th>
                    <th>dd</th>
                    <th>dd</th>
                    <th>dd</th>
                </tr>
         </div>
    </table>
    </div>
    
    <!-- 장바구니 하단 -->
    <div class="cart_bottom">
        
        <a href=""> <input type="checkbox"> 전체선택</a>
        <a href="">선택삭제</a>
        <b>결제금액 30000</b>
    </div>

    <div class="button">
     <button class="btn">주문하기</button>
    </div>

    <br><br><br><br><br><br><br><br>
</body>
</html>