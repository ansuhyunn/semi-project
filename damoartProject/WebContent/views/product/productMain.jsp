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
        position:absolute;
        z-index:-1;
    }

     /* 페이지 이름 스타일 */
    .name{ width: 100%; height: 30px; }
    .name>div{float: left;}
    #name1{
        width: 70%;
        font-size: 23px;
        font-weight: bolder;
    }
    #name2{
        width: 30%; 
        text-align: right;
        font-size: 10px;
        font-weight: bolder;
        padding-top: 20px;
    }

    /* 본문 스타일 */
    .content1{
        width: 100%;
        height: 250px;
        margin: auto;
        margin-top: 20px;
        margin-bottom: 50px;
    }
    .content{
        border: 1px solid black;
        width: 20%;
        height: 100%;
        float: left;
        margin-left: 40px;
        margin-bottom: 10px;
        margin-top: 0px;
        display: block;
    }
</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="wrapper">
        <div class="name">
            <div id="name1">이달의 전시</div>
            <div id="name2">+더보기</div>
        </div>
        <hr class="my-2">
        <div class="content1">
            <div class="content" id=""></div>
            <div class="content" id=""></div>
            <div class="content" id=""></div>
            <div class="content" id=""></div>
        </div>
        <div class="name">
            <div id="name1">지역별 전시</div>
            <div id="name2">+더보기</div>
        </div>
        <hr class="my-2">
        <div class="content1">
            <div class="content" id=""></div>
            <div class="content" id=""></div>
            <div class="content" id=""></div>
            <div class="content" id=""></div>
        </div>
        <div class="name">
            <div id="name1">무료 전시</div>
            <div id="name2">+더보기</div>
        </div>
        <hr class="my-2">
        <div class="content1">
            <div class="content" id=""></div>
            <div class="content" id=""></div>
            <div class="content" id=""></div>
            <div class="content" id=""></div>
        </div>

    </div> <!-- wrapper클래스 -->

</body>
</html>