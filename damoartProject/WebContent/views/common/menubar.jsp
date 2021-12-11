<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String contextPath = request.getContextPath();
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
            width:40%;
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
            width:30%;
        }
        
        #buttons{
            padding-top:20px;
            padding-left:60px;
            width:100%;
            height:50%;
        }

        #search_area{
            width:100%;
            height:50%;
        }

        #buttons>a{background-color:rgb(151, 138, 116)}
        
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
                    <a href="<%=contextPath%>/views/order/cart.jsp" id="cart_btn" class="btn btn-dark btn-sm">장바구니</a>
                    <a href="" id="login_btn" class="btn btn-dark btn-sm">로그인</a>
                    <a href="" id="enroll_btn" class="btn btn-dark btn-sm">회원가입</a>
                </div>
                <div id="search_area">
                    <br>
                    <form action="" id="search_form">
                        <div id="search_box">
                            <input type="text" placeholder="검색어를 입력하세요.">                      
                        </div>
                        <div id="search_btn" align="center">
                            <a href="<%=contextPath%>"><img src="<%=contextPath%>/resources/images/search.png" width="33px" height="33px"></a>
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
                        <li><a href="<%=request.getContextPath()%>/pre.pro">오픈 예정 전시</a></li>
                        <li><a href="<%=request.getContextPath()%>/ing.pro">진행중 전시</a>
                            <ul id="navi_in">
                                <li><a href="<%=request.getContextPath() %>/region.pro">지역별 전시</a></li>
                                <li><a href="<%=request.getContextPath()%>/month.pro">이달의 전시</a></li>
                                <li><a href="<%=request.getContextPath()%>/free.pro">무료 전시</a></li>
                                <li><a href="<%=contextPath%>/views/product/searchProductMain.jsp">맞춤 전시 검색</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href="<%=contextPath%>/views/product/bestMain.jsp">BEST전시</a>
                    
                </li>
                <li><a href="">커뮤니티</a>
                    <ul>
                        <li><a href="">REVIEW</a></li>
                        <li><a href="">EVENT</a></li>
                    </ul>
                </li>
                <li><a href="<%=contextPath%>/csMain.cs">고객센터</a>
                    <ul>
                        <li><a href="<%=contextPath%>/list.no?cpage=1">공지사항</a></li>
                        <li><a href="<%=contextPath%>/views/cscenter/client/faqMain.jsp">FAQ</a></li>
                        <li><a href="<%=contextPath%>/views/cscenter/client/qnaMain.jsp">Q&A</a></li>
                        <li><a href="<%=contextPath%>/views/cscenter/client/guideMain.jsp">이용안내</a></li>
                    </ul>
                </li>
            </ul>

        </div>
    </div>


</body>
</html>