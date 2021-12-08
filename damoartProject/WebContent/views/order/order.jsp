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
    
    #order01{
   	color: rgb(94,94,94);
    }

    .order_logo{
        margin: auto;
        width: 600px;
        height: 200px;  
        font-size: 14px;
    }
    
    .order_form{
        margin: auto;
        width: 800px;
        height: 300px;
        font-size: 13px;
    }

    .order_form>th, td{
       padding: 10px;
    }
    
    #confirm{
       width: 150px;
       color: rgb(34, 30, 23);
       background-color: rgb(203, 185, 153);
       margin-top: 30px;
   }
</style>
</head>
<body>
   <%@ include file="../common/menubar.jsp" %>
       <div class="order_head" align="center">
        <br>
        <b>01 장바구니 > 02 주문서작성/결제 > </b><b id="order01">03 주문완료</b>
    </div>
   
    <div class="order_logo" align="center">
        <img src="<%=request.getContextPath()%>/resources/images/checked.png" width="80px">
        <b><br><br>주문이 완료되었습니다
        <br>감사합니다
        </b>
    </div>
   
    <div class="order_form">
        <hr>
        <table id="order_info">
            <tr>
                <td width="100px">주문자명</td>
                <td>김아트</td>
            </tr>
            <tr>
                <td>총 결제 금액</td>
                <td>28000￦</td>
            </tr>
            <tr>
                <td>주문 상품</td>
                <td>영국 테이트미술관 특별전</td>
            </tr>
        </table>
        <hr>
        <table id="order_no">
            <tr>
                <td width="100px">주문 번호</td>
                <td>202112090706123</td>
            </tr>
            <tr>
                <td>주문일자</td>
                <td>2021-12-09 07:06:03</td>
            </tr>
            <tr>
                <td>결제 수단</td>
                <td>무통장입금
                    <small>&nbsp;&nbsp;(입금 확인후 주문하신 상품의 티켓이 문자와 이메일로 전송됩니다.)</small>
                </td>
            </tr>
        </table>
    </div>
    <div class="button" align="center">
        <a href=""><button class="btn" id="confirm"><b>확인</b></button></a>
    </div>
    
    

   <br><br><br>
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>