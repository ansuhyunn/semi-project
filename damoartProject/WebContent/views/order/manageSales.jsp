<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.order.model.vo.ManageSales"%>
<%
ArrayList<ManageSales> list = (ArrayList<ManageSales>) request.getAttribute("list");
int totalOrder = (int)request.getAttribute("totalOrder");
int totalPay = (int)request.getAttribute("totalPay");
int totalPrice = (int)request.getAttribute("totalPrice");
int cancel = (int)request.getAttribute("cancel");
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
    .order_chart{    
        margin:auto;
        width:800px; 
        height:110px;
        border-radius:10px;
        background-color: rgb(203, 185, 153);
    }

    .box{
        display: inline-block;
        height: 110px;
        width: 180px;
        padding-top: 3%;
        font-size: 20px;
        font-weight: 800;
    }
    #title{
        font-size: 25px;
    }
    
    .date {
        width: 800px;
        height: auto;
        margin: auto;
    }

    .date01{
        width: 50%;
        height: 80px;
        float: left;
        margin-top: 40px;
        padding: 15px;
    }

    .date01>.btn{
        background-color: rgba(149, 133, 99, 0.6);
        width: 70px;
        height: 30px;
        padding: 3px;
        font-size: 13px;
        margin-left: 15px;
    }
    .calender{
        width: 50%;
        height: 80px;
        float: right;
        margin-top: 40px;
        padding: 15px;
    }
    
    #sales_table{
        width: 1000px;
        height: auto;
        margin-top: 150px;
        font-size: 13px;
    }
    

    .sales_product{
        height: auto;
        margin-top: 50px;
        font-size: 13px;
    }

    td{
        border-bottom: 1px solid;
        padding: 7px;
        background-color: rgba(238, 232, 222, 0.829);
    }

  

    #btn{
        margin: 50px;
        width: 150px;
        background-color: rgb(203, 185, 153);
        font-size: 14px;
    }
</style>
</head>
<body>

    <%@ include file="../common/manageMenubar_2.jsp" %>

    <!-- 헤드 -->
    <div class="wrap">
        <div class="manage_head" align="center">
            <p>현황 관리<b id="title"> > 판매 현황</b></p>
        </div>

        <div class="order_chart" align="center">
            <div class="box new_order">
                 주문수
                 <br><%= totalOrder %>
            </div>
            <div class="box com_order">
                취소수
                <br><%= cancel %>
            </div>
            <div class="box com_order">
                주문액
                <br><%= totalPay %> ￦
            </div>
            <div class="box com_order">
                매출액
                <br><%= totalPrice %> ￦
            </div>
         </div>

        <!-- 조회 기간 -->
            <div class="date">
                <div class="date01">
                    <b>조회기간</b> 
                    <button class="btn">오늘</button>
                    <button class="btn">일주일</button>
                    <button class="btn">1개월</button>
                </div>
                    <div class="calender" align="center">
                        <input type="date" style="height: 25px; width: 150px;" > <b>&nbsp;~&nbsp;</b> <input type="date" style="height: 25px; width: 150px;" >
                  </div>
               
            </div>




    <!-- 조회 표 -->
    <div class="sales" align="center">
    
                <!--주문 상품 표-->
                <% System.out.println("data_size=>" + list.size()); %>

                <div class="sales_product">
                    <table width="700">
                        <thead>
                        <tr align="center" style="background-color: rgba(179, 165, 141, 0.829);" >
                            <th  width="400" style="padding: 7px;" colspan="2">상품 정보</th>
                            <th width="100">주문수</th>
                            <th width="200">비고</th>
                        </tr>
                         </thead>
                         <tbody id="tbody">
						<% for(ManageSales m : list) {  %>
                        <tr align="center" style="height:90px">
                            <td width="100">
                                <img src="<%=request.getContextPath()%>/<%= m.getMainImg()%>" width="50" height="50">
                            </td>
                            <td width="230" align="center">
                                <%=m.getpNo()%> <br>
                               	<%=m.getTitle() %>
                            </td>
                            <td><%=m.getOrderCount() %></td>
                            <td>
                                <%=m.getsoldout() %>
                                <br><%=m.getsDate() %>~<%=m.geteDate() %>
                            </td>
                            
                            
                        </tbody>
                        <% } %>
                    </table>
				
                    
                <button class="btn" id="btn">더보기</button>
                </div>

        </div>

    <br><br><br><br><br>

</div>
    
<%@ include file="../common/footerbar.jsp" %>
</body>
</html>