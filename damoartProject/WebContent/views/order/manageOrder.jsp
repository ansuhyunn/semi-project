<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.order.model.vo.ManageOrder"%>
<%
ArrayList<ManageOrder> list = (ArrayList<ManageOrder>)request.getAttribute("list");
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

    .wrap{
        width: 100%;
    }

    .manage_head{
    width: 800px;
    height: 50px;
    font-size: 20px;
    margin: auto;
    margin-top: 220px;
    }


    #title{
        font-size: 25px;
    }

    .order_chart{    
        margin:auto;
        width:800px; 
        height:80px;
        border-radius:10px;
        background-color: rgb(203, 185, 153);
    }

    .box{
        display: inline-block;
        height: 80px;
        width: 230px;
        padding-top: 3%;
        font-size: 20px;
        font-weight: 800;
    }

    .search_date{
        width: 800px;
        margin: auto;
        margin-top: 50px;
    }

    .search_date>.btn{
        background-color: rgba(149, 133, 99, 0.6);
        width: 70px;
        height: 30px;
        padding: 3px;
        font-size: 13px;
        margin-left: 15px;
    }
    
    .select_date{
        float: right;
    }

    .order_box{
        width: 800px;
        margin-top: 50px;
    }
    .search{
        float: right;
    }

    .order_box>.btn{
        width: 130px;
        font-size: 13px;
    }

    #cancel{
        background-color: rgb(203, 185, 153);

    }
    #check{
        color: white;
        background-color: rgba(78, 67, 44, 0.6);
    }

    #search{
        color: white;
        background-color: rgba(78, 67, 44, 0.6);
        width: 60px;
        font-size: 13px;
    }

    input::placeholder{
        font-size: 12px;
    }

    .chart{
        font-size: 13px;
        margin: auto;
        margin-top: 30px;
    }
    .chart_order{
        width: 800px;
    }
    td{
        border-bottom: 1px solid black;
        height: 100px;
        background-color: rgba(238, 232, 222, 0.829);
    }
    .table_title{
        height: 40px;
        background-color: rgba(179, 165, 141, 0.829)
    }
</style>
<body>
    
   <%@ include file="../common/manageMenubar_2.jsp" %>

<!--메뉴 이름-->

<div class="wrap">
    <div class="manage_head" align="center">
        <p>현황 관리<b id="title"> > 주문 내역 관리</b></p>
    </div>
        <br><br><br>
        <!--주문 현황-->
        <div class="order_chart" align="center">
           <div class="box new_order">
                신규주문&nbsp;&nbsp; 14
           </div>
           <div class="box com_order">
               결제완료&nbsp;&nbsp; 8
           </div>
           <div class="box wait_order">
                입금대기&nbsp;&nbsp; 6
           </div>
        </div>
        
        <!--조회기간 날짜 선택-->
        
        <div class="search_date">
            <b>조회기간</b> 
            <button class="btn">오늘</button>
            <button class="btn">일주일</button>
            <button class="btn">1개월</button>
            <div class="select_date">
                <input type="date"> <b>&nbsp;~&nbsp;</b> <input type="date">
            </div>
           
        <!--판매 리스트-->
        <div class="order_box">
            <button class="btn" id="cancel"><b>판매취소</b></button>
            <button class="btn" id="check"><b>입금확인처리</b></button>
            <div class="search">
                <input type="text" placeholder="구매자 ID, 이름, 주문번호">
                <button class="btn" id="search"><b>검색</b></button>
            </div>

            <!--판매 표-->
            <div class="chart">
                <table class="chart_order">
                <thead>
                        <tr align="center" class="table_title">
                        <th width="150" colspan="2">주문번호 / 시각</th>
                        <th width="220" colspan="2">주문상품</th>
                        <th width="80">상품금액</th>
                        <th width="60">수량</th>
                        <th width="80">상태</th>
                        <th width="170">결제내역</th>
                    </tr>
                </thead>


                <% System.out.println("data_size=>" + list.size()); %>
                
                <tbody>
       			 <% for(ManageOrder m : list) { %>
                  <tr align="center" class="table_content">
                        <td><input type="checkbox"></td>
                        <td> <%= m.getOrderName() %><br><%= m.getOrderNo() %><br><%= m.getOrderDate() %></td>
                        <td width="60"><img src="<%=request.getContextPath()%>/resources/images/product/1M.gif" width="40px" height="40px"></td>
                        <td><%= m.getpNo() %><br><%= m.getTitle() %></td>
                        <td><%= m.getTotalPrice() %>￦</td>
                        <td><%= m.getOrderCount() %></td>
                        <td><%= m.getOrderStatus() %></td>
                        <td>총 결제금액 &nbsp; <%=m.getPayPrice() %>￦ <br>
                         	   결제 방법 &nbsp; <%=m.getPayOpt() %>
                        </td>
                </tbody>
                          <% } %>
                </table>
            </div>    
        </div>    


       




        </div>
        <br><br><br><br><br><br>
<%@ include file="../common/footerbar.jsp" %>
</div>




</body>
</html>