<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        /* div, form{border:1px solid black;} */
        body{background-color:#e1d5bf;}
        .wrap{
            width:1000px;
            height:1000px;
            margin:auto;
        }
        #header{
            width:1000px;
            height:170px;
        }
        #header>div{height:100%; float:left;}
        #header_1{
            width:25%;
            padding-top:60px;
        }
        #header_2{
            width:50%;
        }
        #header_1>a{
            text-decoration:none;
            color:black;
        }
        
        #header_2{position:relative;}
        #search_form{
            width:100%;
            height:20%;
            margin:auto;
            position:absolute;
            top:0;
            bottom:0;
            left:0;
            right:0;
        }
        #search_form>div{height:100%; float:left;}
        #search_box{width:90%;}
        #search_btn{width:10%;}

        #search_form input{width:100%; height:100%;}

        #header_3{
            width:25%;
            padding-top:20px;
            padding-left:20px;
        }
        #header_3>a{background-color:rgb(151, 138, 116)}
        
        /* menubar 부분 */

        #navigator{
            width:1000px;
            height:60px;
            background:rgb(203, 185, 153);
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
            background:rgb(151, 138, 116);
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

            <div id="header_1" align="center">
                <img src="resources/images/logo.png" width="250px" height="50px">
            </div>

            <div id="header_2" align="right">
                <form action="" id="search_form">
                    <div id="search_box">
                        <input type="text" placeholder="검색어를 입력하세요.">                      
                    </div>
                    <div id="search_btn">
                        <img src="resources/images/search.png" width="35px" height="35px">
                    </div>
                </form>

            </div>
            <div id="header_3">
                <a href="" id="cart_btn" class="btn btn-dark btn-sm">장바구니</a>
                <a href="" id="login_btn" class="btn btn-dark btn-sm">로그인</a>
                <a href="" id="enroll_btn" class="btn btn-dark btn-sm">회원가입</a>
            </div>
        </div>
        
        <!-- menubar부분 -->
        <div id="navigator">
            <ul id="navi">
                <li><a href="">전시</a>
                    <ul>
                        <li><a href="">오픈 예정 전시</a>
                        </li>
                        <li><a href="">진행중 전시</a>
                            <ul id="navi_in">
                                <li><a href="">지역별 전시</a></li>
                                <li><a href="">이달의 전시</a></li>
                                <li><a href="">무료 전시</a></li>
                                <li><a href="">맞춤 전시 검색</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href="">BEST 전시</a>
                    
                </li>
                <li><a href="">커뮤니티</a>
                    <ul>
                        <li><a href="">REVIEW</a></li>
                        <li><a href="">EVENT</a></li>
                    </ul>
                </li>
                <li><a href="">고객센터</a>
                    <ul>
                        <li><a href="">공지사항</a></li>
                        <li><a href="">FAQ</a></li>
                        <li><a href="">Q&A</a></li>
                        <li><a href="">이용안내</a></li>
                    </ul>
                </li>
            </ul>

        </div>
    </div>
</body>
</html>