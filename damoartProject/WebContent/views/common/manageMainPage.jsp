<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.order.model.vo.Order, com.kh.member.model.vo.Member" %>

<%
	ArrayList<Member> mList = (ArrayList<Member>)request.getAttribute("mList");
	ArrayList<Order> oList = (ArrayList<Order>)request.getAttribute("oList");
	int newOrderCount = (int)request.getAttribute("newOrderCount");
	int cancelCount = (int)request.getAttribute("cancelCount");
	int nonAnswerCount = (int)request.getAttribute("nonAnswerCount");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    div{ box-sizing:border-box;}
     #outer{
		/* border:1px solid black; */
        width:1000px; 
        height:auto; 
        padding:20px;
        margin:auto;
        margin-top:150px;
        margin-left:230px;
    }

    #outer>div{
        width:900px;
        height:250px;
        margin:auto;
        margin-top:40px;
    }

    #area>div{
        display:inline-block;
        margin-left:35px;
        border-radius: 20px;;
        width:250px;
        height:200px;
        background:rgb(151, 138, 116);
        color:white;
        font-size:22px;
        text-align:center;
        padding-top:60px;
    }

    thead{
        background:rgb(207, 206, 206);
    }

    #list-area{
        text-align:center;
        
    }
    
    #list-area>tbody>tr:hover{
    	background:rgb(240, 239, 239);
    	cursor:pointer;
    }
    
    h6 a{
        text-decoration:none;
        color:rgb(64, 64, 64);
    }

</style>
</head>
<body>	
        <div id="outer">

            <h4 style="font-weight: bolder;">HOME</h4>
            <br>
            <hr>

            <div id="area">
                <div id="newOrder"><%=newOrderCount %> <br> 신규주문</div>
                <div id="orderCancel"> <%=cancelCount %> <br>취소관리</div>
                <div id="nonAnswer"> <%=nonAnswerCount %> <br>미답변 Q&A</div>
            </div>
            <br>
            <h6> <b> <a href="">신규 회원</a> </b> </h6>
            <hr>
            <div>
                <table align="center" id="list-area" class="table table-bordered">
                    <thead>
                        <tr>
                            <th width="10">번호</th>
                            <th width="40">아이디</th>
                            <th width="40">이름</th>
                            <th width="60">닉네임</th>
                            <th width="140">이메일</th>
                            <th width="100">전화번호</th>
                            <th width="100">가입일</th>
                        </tr>
                    </thead>
                    <tbody class="mem-tb">
                    	<% if(mList.isEmpty()) { %>
	                        <tr>
	                            <td colspan="7">게시글이 없습니다.</td>
	                        </tr>
                        <% }else { %>
                        	<%for(Member m : mList) { %>
		                        <tr class="mem-list">
                                    <td><%=m.getMemNo() %></td>
		                            <td><%=m.getMemId() %></td>
		                            <td><%=m.getMemName() %></td>
		                            <td><%=m.getNickName() %></td>
		                            <td><%=m.getEmail() %></td>
		                            <td><%=m.getPhone() %></td>
		                            <td><%=m.getEnrollDate() %></td>
		                        </tr>
                        	<% } %>
                        <% } %>
                    </tbody>
                </table>
                <script>
                	$(function(){
                		$(".mem-list").click(function(){ // 확인 후 수정
                			
                		})
                	})
                </script>
            </div>
    		<br><br>
            <h6> <b><a href="">주문 내역</a></b> </h6>
            <hr>
            <div>
                <table align="center" id="list-area" class="table table-bordered">
                    <thead>
                        <tr>
                            <th width="100">주문 번호</th>
                            <th width="100">회원 아이디</th> 
                            <th width="100">회원 이름</th>                           
                            <th width="100">주문일자</th>
                            <th width="60">결제 금액</th>
                            <th width="70">상태</th>
                        </tr>
                    </thead>
                    <tbody class="order-tb">
                    	<% if(oList.isEmpty()) { %>
	                        <tr>
	                            <td colspan="7">게시글이 없습니다.</td>
	                        </tr>
                        <% }else { %>
                        	<%for(Order o : oList) { %>
		                        <tr>
                                    <td><%=o.getOrderNo() %></td>
		                            <td><%=o.getNoticeNo() %></td>
		                            <td><%=o.getNoticeTitle() %></td>
		                            <td><%=o.getNoticeWriter() %></td>
		                            <td><%=o.getCreateDate() %></td>
		                            <td><%=o.getCount() %></td>
		                        </tr>
                        	<% } %>
                        <% } %>
                    </tbody>
                </table>
                <script>
                	$(function(){
                		$(".order-tb").click(function(){
                			
                		})

                	})
                </script>
            </div>
        </div>


</body>
</html>