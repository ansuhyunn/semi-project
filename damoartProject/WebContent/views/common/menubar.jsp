<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
    
<% 
	String contextPath = request.getContextPath();

	Member loginUser = (Member)session.getAttribute("loginUser");

	String alertMsg = (String)session.getAttribute("alertMsg");
	
	String errorMsg = (String)request.getAttribute("errorMsg");
	
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

        /* header부분 */
        div, input{ box-sizing:border-box;}
        /*div, form{border:1px solid black;}*/
        body{background-color:#e1d5bf;}
        .wrap{
            width:1000px;
            height:230px;
            margin:auto;
        }
        #header{
            width:1000px;
            height:170px;
        }
        #header>div{height:100%; float:left;}
        #header_1{
            width:30%;
        }
        #header_2{
            padding-top:60px;
            width:39%;
        }
        
        #search_form{
            width:95%;
            height:45%;

        }
        #search_form>div{height:100%; float:left;}
        #search_box{width:90%;}
        #search_btn{width:10%; padding:3px;}

        #search_form input{width:100%; height:100%;}

        #header_3{
            width:31%;
        }
        
        #buttons{
            padding-top:20px;
            padding-left:40px;
            width:100%;
            height:50%;
        }

        #search_area{
            width:100%;
            height:50%;
        }

        #buttons>a{
            background-color:rgb(151, 138, 116);
            color:white;
        }
        
        /* menubar 부분 */

        #navigator{
            width:1000px;
            height:60px;
            background:rgb(203, 185, 153);
            position:absolute;
            z-index:300;
        }
        #navi{
            list-style-type:none;
            padding:0;
            margin:0;
            height:100%;
        }
    
        #navi>li{
            float:left;
            width:25%;
            height:100%;
            text-align:center;
        }
        #navi a{

            text-decoration:none;
            color:rgb(64, 64, 64);
            font-size:18px;
            font-weight:900;
            width:100%;
            height:100%;
            display:block;
            line-height:60px;
        }
        #navi a:hover{
            background:rgb(182, 167, 141);
            color:white;
        }
        
        #navi>li>ul{
            list-style-type:none;
            padding:0;
            display:none;
        }
        #navi>li>ul>li>ul{
            list-style-type:none;
            padding:0;
            display:none;
        }

        #navi>li>ul>li>a{
            background:rgb(151, 138, 116);
        }

        #navi>li>ul>li>ul>li>a{
            background:rgb(221, 206, 180);
        }

        #navi>li>ul a{font-size:15px;}
        #navi>li>a:hover+ul{display:block;}
        #navi>li>ul:hover{display:block;}

        #navi>li>ul>li>a:hover+ul{display:block;}
        #navi>li>ul>li>ul:hover{display:block;} 

    </style>
</head>

<body>

	<% if(errorMsg != null){ %>
		<script>
			alert("<%=errorMsg%>");
		</script>
	<% session.removeAttribute("errorMsg"); %>
	<% } %>

	<% if(alertMsg != null){ %>
		<script>
			alert("<%=alertMsg%>");
		</script>
		<% session.removeAttribute("alertMsg"); %>
	<% } %>
	<div class="wrap">
        <!-- header부분 -->
        <div id="header">

            <div id="header_1">
            </div>
            
            <div id="header_2" align="center">
                <a href="<%=contextPath%>"><img src="<%=contextPath%>/resources/images/logo.png" width="250px" height="50px"></a>
            </div>
            <div id="header_3">
                <div id="buttons">
                	<% if(loginUser == null) { %> 
	                    <a href="<%=contextPath%>/loginPage.me" id="cart_btn" class="btn btn-sm cart">장바구니</a>
	                    <a href="<%=contextPath%>/loginPage.me" id="login_btn" class="btn btn-sm">로그인</a>
	                    <a href="<%=contextPath%>/agreement.me" id="enroll_btn" class="btn btn-sm">회원가입</a>
                    <% }else { %>
                		<% if(loginUser.getMemNo() == 1 || loginUser.getMemNo() == 2 || loginUser.getMemNo() == 3) {%>
                			<a href="<%=contextPath%>/list.ca" id="cart_btn" class="btn btn-sm">장바구니</a>
	                    	<a href="<%=contextPath%>/adminMain.ad" id="login_btn" class="btn btn-sm">관리자페이지</a>
	                    	<a href="<%=contextPath%>/logout.me" id="logout_btn" class="btn btn-sm">로그아웃</a>
                		<% }else {%>
	                    	<a href="<%=contextPath%>/list.ca" id="cart_btn" class="btn btn-sm">장바구니</a>
	                    	<a href="<%=contextPath%>/reserve.mp?cpage=1" id="myPage_btn" class="btn btn-sm">마이페이지</a>
	                    	<a href="<%=contextPath%>/logout.me" id="logout_btn" class="btn btn-sm">로그아웃</a>
                    	<% } %>
                    	<br>
                    	<p style="text-align:right; margin-top:10px;"><b><%= loginUser.getNickName() %>님</b> 환영합니다!<br></p>
                    <% } %> 
                </div>
                <div id="search_area">
                    <br>
                    <form action="menuSearchPro.me" id="search_form">
                        <div id="search_box">
                            <input type="text" name="keyword" placeholder="검색 키워드를 입력해주세요." required>
                            <input type="hidden" name="cpage" value="1">                      
                        </div>
                        <div id="search_btn" align="center">
                            <button type="submit" class="btn"><img src="<%=contextPath%>/resources/images/search.png" width="33px" height="33px"></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <!-- menubar부분 -->
        <div id="navigator">
            <ul id="navi">
                <li><a href="<%=contextPath%>/all.pro">전시</a>
                    <ul>
                        <li><a href="<%=contextPath%>/pre.pro?cpage=1">오픈 예정 전시</a></li>
                        <li><a href="<%=contextPath%>/ing.pro?cpage=1">진행중 전시</a>
                            <ul id="navi_in">
                                <li><a href="<%=contextPath%>/region.pro?cpage=1">지역별 전시</a></li>
                                <li><a href="<%=contextPath%>/month.pro">이달의 전시</a></li>
                                <li><a href="<%=contextPath%>/free.pro?cpage=1">무료 전시</a></li>
                                <li><a href="<%=contextPath%>/views/product/searchProductMain.jsp">맞춤 전시 검색</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href="<%=contextPath%>/best.pro">BEST전시</a>
                    
                </li>
                <li><a href="<%=contextPath%>/review.pro?cpage=1">REVIEW</a>

                </li>
                <li><a href="<%=contextPath%>/csMain.cs">고객센터</a>
                    <ul>
                        <li><a href="<%=contextPath%>/list.no?cpage=1">공지사항</a></li>
                        <li><a href="<%=contextPath%>/list.fa?cpage=1">FAQ</a></li>
                        <li><a href="<%=contextPath%>/list.qa?cpage=1">Q&A</a></li>
                        <li><a href="<%=contextPath%>/guideView.gu">이용안내</a></li>
                    </ul>
                </li>
            </ul>

        </div>
    </div>
<script>
 $('.cart').click(function(){
	 alert("로그인 후 이용가능한 서비스입니다");
 })
</script>

</body>
</html>