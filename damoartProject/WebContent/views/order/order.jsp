<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.order.model.vo.Order"%>
<% 
	ArrayList<Order> list = (ArrayList<Order>)request.getAttribute("list");
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
</head>
<style>
div{box-sizing:border-box;}
    .order_head{
        width: 100%;
        height: 200px;
        margin-top: 50px;
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

	<%String word ="인코딩 문제인가? 이클립스 문제인가? WAS문제 인가 그것이 알고 싶다....";
	System.out.println("utf-8 -> euc-kr        : " +new String(word.getBytes("utf-8"),"euc-kr"));
	System.out.println("utf-8 -> ksc5601       : " +new String(word.getBytes("utf-8"),"ksc5601"));
	System.out.println("utf-8 -> x-windows-949 : " +new String(word.getBytes("utf-8"),"x-windows-949"));
	System.out.println("utf-8 -> iso-8859-1    : " +new String(word.getBytes("utf-8"),"iso-8859-1"));
	System.out.println("iso-8859-1 -> euc-kr        : " +new String(word.getBytes("iso-8859-1"),"euc-kr"));
	System.out.println("iso-8859-1 -> ksc5601       : " +new String(word.getBytes("iso-8859-1"),"ksc5601"));
	System.out.println("iso-8859-1 -> x-windows-949 : " +new String(word.getBytes("iso-8859-1"),"x-windows-949"));
	System.out.println("iso-8859-1 -> utf-8         : " +new String(word.getBytes("iso-8859-1"),"utf-8"));
	System.out.println("euc-kr -> utf-8         : " +new String(word.getBytes("euc-kr"),"utf-8"));
	System.out.println("euc-kr -> ksc5601       : " +new String(word.getBytes("euc-kr"),"ksc5601"));
	System.out.println("euc-kr -> x-windows-949 : " +new String(word.getBytes("euc-kr"),"x-windows-949"));
	System.out.println("euc-kr -> iso-8859-1    : " +new String(word.getBytes("euc-kr"),"iso-8859-1"));
	System.out.println("ksc5601 -> euc-kr        : " +new String(word.getBytes("ksc5601"),"euc-kr"));
	System.out.println("ksc5601 -> utf-8         : " +new String(word.getBytes("ksc5601"),"utf-8"));
	System.out.println("ksc5601 -> x-windows-949 : " +new String(word.getBytes("ksc5601"),"x-windows-949"));
	System.out.println("ksc5601 -> iso-8859-1    : " +new String(word.getBytes("ksc5601"),"iso-8859-1"));
	System.out.println("x-windows-949 -> euc-kr     : " +new String(word.getBytes("x-windows-949"),"euc-kr"));
	System.out.println("x-windows-949 -> utf-8      : " +new String(word.getBytes("x-windows-949"),"utf-8"));
	System.out.println("x-windows-949 -> ksc5601    : " +new String(word.getBytes("x-windows-949"),"ksc5601"));
	System.out.println("x-windows-949 -> iso-8859-1 : " +new String(word.getBytes("x-windows-949"),"iso-8859-1"));%>
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
        <table id="order_info">  <% for(Order o : list) { %>
            <tr>
                <td width="100px">주문자명</td>
                <td><%=o.getMemName() %></td>
            </tr>
            <tr>
                <td>총 결제 금액</td>
                <td><%=o.getPayPrice() %>￦</td>
            </tr>
            <tr>
                <td>주문 상품</td>
                <td><%=o.getTitle() %></td>
            </tr>
        </table>
        <hr>
        <table id="order_no">
            <tr>
                <td width="100px">주문 번호</td>
                <td><%=o.getPayNo() %></td>
            </tr>
            <tr>
                <td>주문일자</td>
                <td>2021-12-09 07:06:03</td>
            </tr>
            <tr>
                <td>결제 수단</td>
                <td> 카드
                    <small>&nbsp;&nbsp;(주문하신 상품의 티켓이 문자와 이메일로 전송됩니다.)</small>
                </td>
            </tr>
        </table> <% } %>
    </div>
    <div class="button" align="center">
        <a href=""><button class="btn" id="confirm"><b>확인</b></button></a>
    </div>
    
    
    

   <br><br><br>
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>