<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.mypage.model.vo.Point, com.kh.mypage.model.vo.Review, java.util.ArrayList"%>
<%
	Point poi = (Point)session.getAttribute("poi");

	ArrayList<Review> blist = (ArrayList<Review>)request.getAttribute("blist");
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
    
    /*찜한상품, qna내역이 없을 경우*/
    #exclamationmark_icon{
    	padding-left:345px;
        padding-top:35px;
    }

    
    /*Q&A 테이블*/
    .container{
        height:30%;
        padding-top:70px;
        font-size:13px;
    }

    #exclamationmark_icon{
    	padding-left:320px;
        padding-top:35px;
    }
    .container th, #table_category{text-align:center;}

    .qustion_open p{font-size:15px; font-weight:700;}

    .table td{
        vertical-align:middle;
        height:120px;
        margin:auto;
        padding-top:10px;
    }

    .contents p{font-size:13px;}

    /*리뷰 선택 탭*/
    .tab_menu{padding-left:30px; text-align:center;}
    .tab_menu li{
        float:left;
        width:375px;
        height:45px;
        background:rgba(255, 255, 255, 0.45); 
        border:1px solid rgb(209, 204, 204);
    }
    .tab_menu li:hover{ cursor:pointer;}
    .tab_menu li:visited{background:rgb(203, 185, 153);}
    .tab_menu li a{
        text-decoration:none;
        font-weight:700;
        font-size:15px;
        color:black;
        width:100%;
        height:100%;
        line-height:3;
    }
    .qustion a{
   		background-color:rgb(151, 138, 116);
     	color:white;
    }
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
        
            <div class="userPoint">
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
                    <a href="<%= contextPath %>/reserve.mp" id="submenu">예매 내역</a> <br>
                    <a href="<%= contextPath %>/refund.mp" id="submenu">취소/환불 내역</a> <br>
                    <a href="<%= contextPath %>/pointList.mp" id="submenu">적립금 내역</a> <br>
                </div><br>
                <li><h3>마이활동</h3></li>
                <div>
                    <a href="<%=request.getContextPath() %>/views/mypage/memberReviewList.jsp" id="submenu" style="color:rgb(151, 138, 116)">리뷰 내역</a> <br>
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
                <h4 class="contents_tit">리뷰 내역</h4><br>
                <p>● 텍스트 리뷰 작성시 300원, 포토 리뷰 작성시 500원의 포인트가 적립됩니다. <br>
                    ● 리뷰 작성은 예매확정 후 30일 이내 가능합니다.
                </p>
            </div>
            <br>
            <ul class="tab_menu">
                <li style="background:rgb(203, 185, 153);">
                    <a href="<%= contextPath %>/rbefore.mp" >
                        	작성 가능한 리뷰
                    </a>
                </li>
                <li>
                    <a href="<%= contextPath %>/rafter.mp" style="color:white">
                        	내가 작성한 리뷰
                    </a>
                </li>
            </ul>
                
            <div class="container">
           
                <table class="table">
                  <thead>
                    <tr style="background:rgb(203, 185, 153);">
                      <th colspan="2" width="550">상품</th>
                      <th width="110">작성기간</th>
                      <th width="110">리뷰 작성</th>
                    </tr>
                  </thead>
                  <tbody>
                    <!--리뷰 내역이 없을 경우-->
                    <% if(blist.isEmpty()){ %>
                    <tr>
                        <td colspan="4" >
                            <div id="exclamationmark_icon">
                                <img src="<%=request.getContextPath() %>/resources/images/exclamationmark.png" width="70px" height="70px"> 
                            </div>
                            <br>
                            <div id="qna_txt">
                                <p align="center">작성 가능한 리뷰 내역이 없습니다.</p>
                            </div>
                        </td>
                    </tr>
					<% }else{ %>

                    <!--리뷰 내역이 있을 경우-->
                    <% for(Review r : blist) {%>
                    <tr class="qustion">
                        <td width="120" style="padding-top:20px">
                            <img src= "<%=request.getContextPath()%>/<%= r.getMainImg() %>" width="80px" height="80px">                
                        </td>
                        <td width="350" style="padding-top:35px">
                           <strong><%= r.getTitle() %></strong> <br>
                          	              옵션 : <%= r.getOrderOpt() %>
                        </td>    
                        <td style="padding-top:40px">~<%= r.getAvaDate() %></td>
                        <td style="padding-top:40px">
                          <a href="<%= contextPath %>/views/community/reviewEnrollForm.jsp" class="btn btn-sm">리뷰 작성</a>
                        </td>
                    </tr>             
                        <% } %>
                    <% } %>  
                    
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    
                    
                  </tbody>
                </table>
              </div>   
            
            </div>
        </div>

        

    
    </div>

    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>