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
    .wrapper{
        width: 1000px;
        height: 1000px;
        margin: auto;
        margin-top: 120px;
    }
    /* 페이지 이름 스타일 */
    .name{ width: 100%; height: 30px; }
    #name1{
        width: 70%;
        font-size: 23px;
        font-weight: bolder;
        float: left;
    }
    /* 페이지 정렬 스타일 */
    .name>a{
        width: 6%; 
        font-size: 10px;
        padding-top: 20px;
        float: left;
        text-decoration: none;
        color: black;
    }
    a:hover{font-weight: 900;}

    /* 버튼 스타일 */
    .button{padding: 20px;}
    .button *{
        margin-left: 30px;
        width: 120px;
        background-color: rgb(182, 167, 141);
        font-weight: bolder;
    }
    .button *:hover{
        background-color: rgb(151, 138, 116);
        color: whitesmoke;
        font-weight: bolder;
    }

    /* 본문 스타일 */
    .content1{
        width: 100%;
        height: 300px;
        margin: auto;
        margin-top: 20px;
        margin-bottom: 50px;
    }
    .content{
        width: 20%;
        height: 100%;
        float: left;
        margin-left: 40px;
        margin-bottom: 10px;
        margin-top: 0px;
        display: block;
    }
    .poster{
        border: 1px solid black;
        width: 100%;
        height: 75%;
        width: 100%;
        height: 80%;
    }
    .info{
        width: 100%;
        height: 25%;
    }
    .info>p{text-align: center;}
    .title{font-weight: bolder; padding-top: 10px;}
    .summary{font-size: 12px; font-weight: bolder; margin-top: -10px;}
</style>

</head>
<body>

    <%@ include file="../common/menubar.jsp" %>

    <div class="wrapper">

        <div class="name">
            <div id="name1">지역별 전시</div>
            <a href="">높은가격순</a>
            <a href="">낮은가격순</a>
            <a href="">신규등록순</a>
            <a href="">마감임박순</a>
            <a href="">별점순</a>
        </div>

        <hr class="my-2">                       <!-- 구분선-->

        <div class="button">
            <button class="btn">서울</button>
            <button class="btn">경기/인천</button>
            <button class="btn">강원/충청</button>
            <button class="btn">전라도</button>
            <button class="btn">경상도</button>
            <button class="btn">제주도</button>
        </div>

        <div class="content1">
            <div class="content" id="">
                <div class="poster"></div>
                <div class="info">
                    <p class="title">
                        다모아트 특별전 : 무에서 ...
                    </p>
                    <p class="summary">
                        2021.12.01 ~ 2021.12.31<br>
                        KH강남점
                    </p>
                </div>
            </div>
            <div class="content" id="">
                <div class="poster"></div>
                <div class="info">
                    <p class="title">
                        다모아트 특별전 : 무에서 ...
                    </p>
                    <p class="summary">
                        2021.12.01 ~ 2021.12.31<br>
                        KH강남점
                    </p>
                </div>
            </div>
            <div class="content" id="">
                <div class="poster"></div>
                <div class="info">
                    <p class="title">
                        다모아트 특별전 : 무에서 ...
                    </p>
                    <p class="summary">
                        2021.12.01 ~ 2021.12.31<br>
                        KH강남점
                    </p>
                </div>
            </div>
            <div class="content" id="">
                <div class="poster"></div>
                <div class="info">
                    <p class="title">
                        다모아트 특별전 : 무에서 ...
                    </p>
                    <p class="summary">
                        2021.12.01 ~ 2021.12.31<br>
                        KH강남점
                    </p>
                </div>
            </div>
        </div>

    </div> 

</body>
</html>