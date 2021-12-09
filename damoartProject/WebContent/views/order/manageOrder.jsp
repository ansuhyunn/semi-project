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
    .manage_head{
    width: 300px;
    height: 50px;
    float: left;
    font-size: 20px;
    }

    #title{
        font-size: 25px;
    }

    .order_chart{
        border: 1px solid;
        width: 750px;
        height: 100px;
    }
</style>
<body>
    
   <%@ include file="../common/menubar.jsp" %>

<!--메뉴 이름-->
<div class="manage_head">
현황 관리<b id="title"> > 주문 내역 관리</b>
</div>

<!--주문 현황-->
<div class="order_chart">
    <div id="new_order">
        신규주문
        14
    </div>
    <div id="pay_com">
        결제완료
        11
    </div>
    <div id="pay_wait">
        입금 대기
        3
    </div>
</div>





<br><br><br>
<%@ include file="../common/footerbar.jsp" %>
</body>
</html>