<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.mypage.model.vo.Point, java.util.ArrayList, com.kh.mypage.model.vo.Order" %>
<%
	ArrayList<Order> list = (ArrayList<Order>)request.getAttribute("list");

	Point poi = (Point)request.getAttribute("poi");

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

    /*content_2*/
    .contents{
        padding-top:15px;
        padding-left:30px;
    }

    #exclamationmark_icon{
    	padding-left:345px;
        padding-top:35px;
    }

    /*content_2_tit : 예매내역 */
    .contents p{
        font-size:13px;
        color:rgb(64, 64, 64);
        letter-spacing: -.3px;
    }

    /*테이블*/
    .container{
        padding-left:30px;
        font-size:13px;
    }
    
    .container strong{color:white;}
    .container strong:hover{cursor:pointer;}
    
    .container td{      
        height:100px;        
    }

    .container th, #table_date{text-align:center;}

</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
    <br><br>
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
            <p class="point"><%= poi.getPoint() %>원</p>
            
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
                    <a href="<%= contextPath %>/reserve.mp" id="submenu" style="color:rgb(151, 138, 116)">예매 내역</a> <br>
                    <a href="<%= contextPath %>/refund.mp" id="submenu">취소/환불 내역</a> <br>
                    <a href="<%= contextPath %>/pointList.mp" id="submenu">적립금 내역</a> <br>
                    <hr width="120" align="left">
                    <a href="" id="submenu">최근 본 상품</a> <br>
                    <a href="" id="submenu">찜한 상품</a>
                </div><br>
                <li><h3>마이활동</h3></li>
                <div>
                    <a href="<%=request.getContextPath() %>/views/mypage/memberReviewList.jsp" id="submenu">리뷰 내역</a> <br>
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
                <h4 class="contents_tit">예매 내역</h4><br>
                <p>● 최신순으로 예매 내역 조회가 가능합니다.</p>
                
            </div>
            
            <div class="container">
                <br><br>
                <table class="table">
                  <thead>
                    <tr style="background:rgb(203, 185, 153)">
                      <th width="140">날짜/예매번호</th>
                      <th colspan="2" width="470">상품</th>
                      <th width="70">수량</th>
                      <th width="110">결제금액</th>
                      <th width="110">상태</th>
                    </tr>
                  </thead>
                  <tbody>
                    <!--예매 내역이 없을 경우-->
                    <% if(list.isEmpty()){ %>
	                    <tr>
	                        <td colspan="6" >
	                            <div id="exclamationmark_icon">
	                                <img src="<%=request.getContextPath() %>/resources/images/exclamationmark.png" width="70px" height="70px"> 
	                            </div>
	                            <br>
	                            <div>
	                                <p align="center">예매 내역이 없습니다.</p>
	                            </div>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
                            <td></td>
	                    </tr>
                    <% }else{ %>
                    <!-- 예매내역 있을 경우 -->
                    	<% for(Order o : list) {%>
		                    <tr>
		                      <td align="center"  style="padding-top:20px;">
		                      	<%= o.getOrderDate() %><br>
		                      	<strong><%= o.getOrderNo() %></strong> <br>
		                      	<button type="button" onclick="detailView();">상세조회</button>
		                      </td>
		                      <td width="130">
		                      	<img src="<%=request.getContextPath()%>/<%= o.getMainImg() %>" width="80px" height="80px">
		                      </td>
		                      <td width="340"  style="padding-top:30px;">
		                      	<b><%= o.getpTitle() %></b> <br>
		                      	옵션 : <%= o.getOrderOpt() %>
		                      </td>
		                      <td align="center" style="padding-top:40px;"><%= o.getOrderCount() %></td>
                              <td align="center" style="padding-top:40px;"><%= o.getFinalPrice() %>원</td>
                              <td align="center" style="padding-top:40px;"><%= o.getOrderStatus() %></td>
		                    </tr>
    					 <% } %>
                    <% } %>
	                    <tr>
	                        <td></td>
	                        <td></td>
	                        <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
	                    </tr>

                        <script>
                            function detailView(){
                                location.href = "<%=contextPath%>/rdetail.mp";
                            }
                        </script>
	                    
                  </tbody>
                </table>
              </div>   
            
            </div>
        </div>

        

    
    </div>

    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>