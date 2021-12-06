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
    .name{ width: 100%; height: 30px; 
        width: 100%;
        font-size: 23px;
        font-weight: bolder;
        text-align: center;
    }
    /* 페이지 정렬 버튼 스타일 */
    #range{text-align: right; margin-right: 30px;}
    #range>a{
        border: 1px solid black;
        width: 5%; 
        font-size: 10px;
        padding-top: 20px;
        text-decoration: none;
        color: black;
    }
    a:hover{font-weight: bolder;}

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

    <div class="wrapper">
        <div class="name">BEST전시</div>
            <div id="range">
                <a href="">주간</a>
                <a href="">월간</a>
            </div>
        <hr class="my-2">
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