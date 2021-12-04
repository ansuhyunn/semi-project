<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body{
        width:1000px;
        background-color:#e1d5bf;
    } 
    #Contents{
        width:1000px;
        height:100%;
        margin: 0 auto;
    }
    .mypage-head h1.title{
        padding:10px
    }
    .mem-box{
        height:100px;
        border:solid rgb(64, 64, 64); 
        border-width:thin;
    }
    .mem-box .txt{
        line-height:30px;
        font-size:20px;
        font-weight:700;
    }

    .mypage-contents{
        position:relative;

        width:100%;
    }
    /*마이페이지 카테고리*/
    .mypage-1{
        position:relative;
        width:180px;
        padding-left:10px;
    }
    .mypage-1 li h2{
        padding-top:30px;
        font-size:18px;
        line-height:25px;
    }
    ul{list-style:none;}
    a{text-decoration:none;}
    .mypage-1 li a{
        font-size:14px;
        color:black;
        
    }
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div id="container">
        <div id="contents">
            <div class="mypage-head">
                <h1 class="title" align="center">마이페이지</h1>
                <hr color="rgb(64, 64, 64)" size="1">
            </div>
            <div class="mem-box">
                <p class="txt" align="center">
                    <strong class="name">xxx</strong>
                    님 반갑습니다. 
                </p>
            </div>
        </div>

        <div class="mypage-contents">
            <div class="mypage-1">
                <ul>
                    <li>
                        <h2>마이쇼핑</h2>
                        <ul>
                            <li class="submenu">
                                <a href="">예매 내역</a>
                            </li>
                            <li class="submenu">
                                <a href="">취소/환불 내역</a>
                            </li>
                        </ul>
                        <ul class="line">
                            <li class="submenu">
                                <a href="">적립금 내역</a>
                            </li>
                            <li class="submenu">
                                <a href="">최근 본 상품</a>
                            </li>
                            <li class="submenu">
                                <a href="">찜한 상품</a>
                            </li>
                        </ul>
                        <h2>마이활동</h2>
                        <ul>
                            <li class="submenu">
                                <a href="">리뷰 내역</a>
                            </li>
                            <li class="submenu">
                                <a href="">Q&A 내역</a>
                            </li>
                        </ul>
                        <h2>마이정보</h2>
                        <ul>
                            <li class="submenu">
                                <a href="">회원정보 수정</a>
                            </li>
                            <li class="submenu">
                                <a href="">회원탈퇴</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div>
        <br><br><br><br><br><br><br><br>
    </div>

    
</body>
</html>