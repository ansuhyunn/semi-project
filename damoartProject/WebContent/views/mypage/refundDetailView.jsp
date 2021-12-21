<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.mypage.model.vo.Order"%>
<%
	Order cdetailView = (Order)request.getAttribute("cdetailView");
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
    /*회원박스 스타일*/
    .mypage_top{
        width:1000px;
        height:120px;
        background:#e1d5bf;
        margin:auto;
        }
    .userbox_1, .userbox_2, .userbox_3{
        background:rgb(203, 185, 153);
        box-sizing:border-box;
        height:100%;
        float:left; 
    }
    .userbox_1{width:15%; padding-top:30px;} 
    .userbox_2{width:65%; padding-top:45px;}
    .userbox_3{width:19.5%; padding-top:30px;}
	
	.txt{font-size:20px; font-weight:600;}
    .userName{
        font-size:20px;
        padding-left:30px;      
    }

    .userbox_3{padding-left:40px; margin-left:0.5%;}
	.userbox_3:hover{
		background:rgb(182, 167, 141);
        cursor:pointer;
    }
    .userPoint{
        font-size:14px;
        color:black;
        padding-bottom:15px;
    }
    .point{
        font-size:20px;
        color:white;
    }
    /*카테고리 및 내용 스타일*/
    .mypage-content{
        width:1000px;
        height:1000px;
        background:#e1d5bf;
        margin:auto;
    }
    #content_1, #content_2{
        box-sizing:border-box;
        height:100%;
        float:left; 
    }
    #content_1{width:20%;}
    #content_2{width:80%;}

    #mp-content{height:1000px;}

    #mp-content>div{
        height:100%;
        float:left;
    }

    #content_1 h2{
        padding: 5px 0 20px 1px;
		letter-spacing:-1px;
        font-size:28px;
        font-weight:700;
    }
    .mem-box{
        height:120px;
        border:solid rgb(64, 64, 64); 
        border-width:thin;
    }
    .mem-box .txt{
        padding-left:300px;
        line-height:100px;
        font-size:21px;
        font-weight:700;
    }
	#mp-content{
		padding-top:50px;
	}
	
    ul{list-style:none; padding-left:10px;}
    #content_1 h3{
        padding-top:10px;
        font-size:17px;
        font-weight:700;
        line-height:24px;   
        letter-spacing:-1px;
    }
    #content_2 h4{
    	padding-top:10px;
    	font-size:20px;
    	font-weight:600;
    	letter-spacing:-1px;
    }
    #content_1 div{
        border:none;
        line-height:2em
    }
    #content_1 a{
        text-decoration:none;
        color:black;
        font-size:14px;
        letter-spacing:-0.8px;
        
    }
    #content_1 a:hover{
        color:rgb(151, 138, 116);
    }
    .contents{
        padding-top:15px;
        padding-left:30px;
    }

    /*상세정보 영역 주문일자, 번호*/
    .order-inf, .order-det1{
        padding-top:10px; 
        border-radius: 5px;
        margin-left:25px;
        font-size:14px;
    }
    .contents_body{margin-left:30px; width:700px;}
    .contents_body p{font-size:16px; font-weight:700; padding-left:25px;}
    .order-det2 th, .order-det3 th{
        text-align:left; 
        padding-left:40px; 
        width:160px; 
        height:25px; 
        font-size:13px;
    }
    .order-det2 td, .order-det3 td{font-size:13px;}

    /*목록 버튼*/
    #check_btn{
        width:100px;
        height:40px;
        background:rgb(182, 167, 141);
        border:none;
        font-size:15px;
        font-weight:600;
        margin-left:330px;
        
    }
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
    <br><br>ㄴ
    <!--회원박스-->
    <div class="mypage_top">
        <div class="userbox_1">
        	<img src="<%=request.getContextPath() %>/resources/images/user.png" width="60px" height="60px" align="right">
        </div>
        <div class="userbox_2">
        	<p class="txt">
        		<strong class="userName"><%= loginUser.getNickName() %></strong>님 반갑습니다.
        	</p>
        </div>
        
        <div class="userbox_3">
        
            <div class="userPoint" onclick="location.href='<%=request.getContextPath()%>/pointList.mp'">
                   	적립금 >
            </div>
            <p class="point">2,000원</p>
            
        </div>
    </div>

    <br><br>

    <!--카테고리 및 내용-->
    <div class="mypage-content">
        <div id="content_1">
            <div id="mp-title"><h2>마이페이지</h2></div>
            <ul>  	
                <li><h3>마이쇼핑</h3></li>
                <div>
                    <a href="<%= contextPath %>/reserve.mp" id="submenu"">예매 내역</a> <br>
                    <a href="<%= contextPath %>/refund.mp" id="submenu">취소/환불 내역</a> <br>
                    <a href="<%= contextPath %>/pointList.mp" id="submenu">적립금 내역</a> <br>
                    <hr width="120" align="left">
                    <a href="" id="submenu">최근 본 상품</a> <br>
                    <a href="" id="submenu">찜한 상품</a>
                </div><br>
                <li><h3>마이활동</h3></li>
                <div>
                    <a href="" id="submenu">리뷰 내역</a> <br>
                    <a href="<%=request.getContextPath() %>/qnaList.mp" id="submenu">Q&A 내역</a> <br>
                </div><br>
                <li><h3>마이정보</h3></li>
                <div>
                    <a href="<%=request.getContextPath() %>/views/mypage/pwdVerificationMemUpdate.jsp" id="submenu">회원정보 수정</a> <br>
                    <a href="<%=request.getContextPath() %>/views/mypage/pwdVerificationMemDelete.jsp" id="submenu">회원 탈퇴</a> <br>
                </div>
            </ul>
        </div>
        <div id="content_2">
            <div class="contents">
                <h4 class="contents_tit">상세정보</h4><br>
            </div>
            
            <div class="contents_body" style="background:rgb(245, 236, 220);">
                <ul class="order-inf">
                    <li>
                        <span>주문일자 :&nbsp;&nbsp;</span>
                        <strong><%= cdetailView.getOrderDate() %></strong>
                    </li>
                    <br>
                    <li>
                        <span>주문번호 :&nbsp;&nbsp;</span>
                        <strong style="color:white"><%= cdetailView.getOrderNo() %></strong>
                    </li>
                </ul>
                <table class="order-det1" border="1">
                    <tr>
                        <td width="130">
                            <img src="<%=request.getContextPath()%>/<%= cdetailView.getMainImg() %>" width="80px" height="80px">
                        </td>
                        <td colspan="3" width="400">
                            	<strong><%= cdetailView.getpTitle() %></strong><br>
                            	옵션 : <%= cdetailView.getOrderOpt() %> <br>
                            	수량 : <%= cdetailView.getOrderCount() %>
                        </td>
                    </tr>
                </table>
                <br><br>
                
                <p>● 예매정보</p>  
                <table class="order-det2">
                    <tr>
                        <th>예매번호</td>
                        <td colspan="3"><%= cdetailView.getOrderNo() %></td>
                    </tr>
                    <tr>
                        <th>예매자명</th>
                        <td colspan="3"><%= cdetailView.getOrderName() %></td>
                    </tr>
                    <tr>
                        <th>예매자 연락처</th>
                        <td colspan="3"><%= cdetailView.getOrderPhone() %></td>
                    </tr>
                    <tr>
                        <th>장소</th>
                        <td colspan="3"><%= cdetailView.getArea() %></td>
                    </tr>
                </table>
                <br><br>

                <p>● 결제정보</p>  
                <table class="order-det3">
                    <tr>
                        <th>결제일자</td>
                        <td colspan="3"><%= cdetailView.getPayDate() %></td>
                    </tr>
                    <tr>
                        <th>결제수단</th>
                        <td colspan="3"><%= cdetailView.getPayOpt() %></td>
                    </tr>
                    <tr>
                        <th>결제금액</th>
                        <td colspan="3"><%= cdetailView.getPayPrice() %>원</td>
                    </tr>
                </table>
                <br><br>

                <p>● 환불정보</p>  
                <table class="order-det3">
                    <tr>
                        <th>예금주명</td>
                        <td colspan="3"><%= cdetailView.getRefundName() %></td>
                    </tr>
                    <tr>
                        <th>계좌번호</th>
                        <td colspan="3"><%= cdetailView.getBankName()%>&nbsp;<%= cdetailView.getRefundAccount() %></td>
                    </tr>
                    <tr>
                        <th>환불금액</th>
                        <td colspan="3"><%= cdetailView.getPayPrice() %>원</td>
                    </tr>
                </table>
                <br><br>

            </div>
            <br><br>
            <button type="button" id="check_btn" class="btn btn-sm btn-secondary" onclick="reserveList();">목록</button>

            <script>
                function reserveList(){
                    location.href = "<%=contextPath%>/refund.mp";
                }
            </script>
        </div>
    </div>    



    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>