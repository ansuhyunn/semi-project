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
            width:1002px;
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
            width:167px;
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
                <img src="<%=contextPath%>/resources/images/logo.png" width="250px" height="50px">
            </div>
            <div id="header_3">
                <div id="buttons">
                    <a href="" id="login_btn" class="btn btn-dark btn-sm">로그아웃</a>
                    <a href="" id="enroll_btn" class="btn btn-dark btn-sm">관리페이지</a>
                </div>
            </div>
        </div>
        
        <!-- menubar부분 -->
        <div id="navigator">
            <ul id="navi">
                <li><a href="">회원 관리</a>
                    <ul>
                        <li><a href="">회원 목록</a></li>
                        <li><a href="">블랙리스트 관리</a></li>
                    </ul>
                </li>
                <li><a href="">상품 관리</a>
                    <ul>
                        <li><a href="<%=request.getContextPath()%>/list.man?cpage=1">전체 상품 관리</a></li>
                        <li><a href="<%=request.getContextPath()%>/ing.man?cpage=1">진행중 상품 관리</a></li>
                        <li><a href="<%=request.getContextPath()%>/managePre.man?cpage=1">오픈예정 상품 관리</a></li>
                        <li><a href="">BEST 상품 관리</a></li>
                    </ul>
                </li>
                <li><a href="">현황 관리</a>
                    <ul>
                        <li><a href="<%=contextPath%>/views/order/manageOrder.jsp">주문 내역 관리</a></li>
                        <li><a href="<%=contextPath%>/views/order/manageCancel.jsp">취소 관리</a></li>
                        <li><a href="">판매 현황</a></li>
                    </ul>
                </li>
                <li><a href="">홈페이지 관리</a>
                    <ul>
                        <li><a href="">배너 관리</a></li>
                        <li><a href="">NEW 관리</a></li>
                        <li><a href="">오픈예정 관리</a></li>
                    </ul>
                </li>
                <li><a href="">커뮤니티 관리</a>
                    <ul>
                        <li><a href="">REVIEW 관리</a></li>
                        <li><a href="">REVIEW 신고 관리</a></li>
                        <li><a href="">EVENT 관리</a></li>
                    </ul>
                </li>
                <li><a href="">고객센터 관리</a>
                    <ul>
                        <li><a href="">공지사항 관리</a></li>
                        <li><a href="">FQA 관리</a></li>
                        <li><a href="">Q&A 관리</a></li>
                        <li><a href="">이용안내 관리</a></li>
                    </ul>
                </li>
            </ul>
            

        </div>
    </div>


</body>
</html>