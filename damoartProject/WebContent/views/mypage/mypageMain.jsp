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
    div{box-sizing:border-box; border:1px solid black;}
    
    .wrap{
        width:1000px;
        height:1200px;
        margin:auto;
    }
    .wrap>div{
        width:100%;
    }
    #header{height:15%;}
    #mp-head{height:20%;}
    #mp-content{height:55%;}
    #footer{height:10%;}

    #mp-content>div{
        height:100%;
        float:left;
    }
    #content_1{width:20%;}
    #content_2{width:80%;}

    #mp-head h1{
        padding-top:20px;
    }
    .mem-box{
        height:100px;
        border:solid rgb(64, 64, 64); 
        border-width:thin;
    }
    .mem-box .txt{
        padding-left:300px;
        line-height:60px;
        font-size:20px;
        font-weight:700px;
    }

    ul{list-style:none;}
    #content_1 h2{
        padding-top:10px;
        font-size:17px;
        line-height:24px;
        letter-spacing:-1px;
    }
    #content_1 div{
        border:none;
        line-height:2em
    }
    a{
        text-decoration:none;
        color:black;
        font-size:14px;
        letter-spacing:-0.8px;
    }

    /*content_2*/
    .contents{
        height:30%;
        padding-left:25px;
    }
</style>
</head>

<body>

    <div class="wrap">
        <div id="header"></div><!--상단부 : 메뉴바 -->
        <div id="mp-head">
            <h1 class="title" align="center">마이페이지</h1>
            <hr color="rgb(64, 64, 64)" size="1"><br>
            <div class="mem-box">
                <p class="txt">
                    <strong class="name">xxx</strong>
                    님 반갑습니다.
                </p>
            </div>
        </div>

        <div id="mp-content"><!--내용물 : 마이페이지 -->
            <div id="content_1">
                <ul>
                    <li><h2>마이쇼핑</h2></li>
                    <div>
                        <a href="" id="submenu">예매 내역</a> <br>
                        <a href="" id="submenu">취소/환불 내역</a> <br>
                        <a href="" id="submenu">적립금 내역</a> <br>
                        <hr>
                        <a href="" id="submenu">최근 본 상품</a> <br>
                        <a href="" id="submenu">찜한 상품</a>
                    </div>
                    <li><h2>마이활동</h2></li>
                    <div>
                        <a href="" id="submenu">리뷰 내역</a> <br>
                        <a href="" id="submenu">Q&A 내역</a> <br>
                    </div>
                    <li><h2>마이정보</h2></li>
                    <div>
                        <a href="" id="submenu">회원정보 수정</a> <br>
                        <a href="" id="submenu">회원 탈퇴</a> <br>
                    </div>
                </ul>
            </div>
            <div id="content_2">
                <div class="contents">
                    <h2 class="contents_tit">예매 내역</h2>

                </div>
                <div class="contents">
                    <h2 class="contents_tit">찜한 상품</h2>
                    <hr>

                </div>
                <div class="contents">
                    <h2 class="contents_tit">Q&A 내역</h2>
                    <hr>

                </div>
            </div>
        </div>

        <div id="footer"></div><!--하단부 : 푸터바 -->
    </div>    
</body>
</html>