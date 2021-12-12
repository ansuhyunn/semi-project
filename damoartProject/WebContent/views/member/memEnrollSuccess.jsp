<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
         @font-face {
            font-family: 'IBMPlexSansKR-Regular';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        body{
            background:#e1d5bf;
            font-family: 'IBMPlexSansKR-Regular'; 
        }
        .outer{
            margin:auto;
            margin-top:50px;
            height:1000px;
        }
        ul{margin-left:550px;}
        ul li{
            list-style:none;
            float:left;
            padding:15px;  
            margin:auto;
            font-weight:bold;
        }
        .enrollList-1, .enrollList-2{
            color:rgb(104, 102, 102);
        }
        .img{
            margin:auto;
            margin-top:150px;
            margin-left:47%; 
        }
        #comment1{
            font-size:20px;
            font-weight:bold;
        }
        .btn{
            width:400px;
            height:45px;
            background:rgba(78, 67, 44, 0.6);
            color:white;
            border:none;
            font-weight:bold;
            margin:10px;
        }
        
    </style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	
    <div class="outer">
        <br>
        <h2 align="center" style="font-weight:bold">회원가입</h2><br>
        <ul class="enrollList">
            <li class="enrollList-1" >01 약관동의</li>
            <li class="enrollList-2">02 회원가입</li>
            <li class="enrollList-3">03 가입완료</li>
        </ul>
        <br><br>
        <hr>
        <img src="resources/check.png" width="100" class="img">
        <br><br>
        <p id="comment1" align="center">DAMOART 회원가입이 완료되었습니다. </p>
        <p id="comment2" align="center">xxx님의 가입을 환영합니다!</p>

        <div align="center">
            <button class="btn">> 로그인 화면으로 이동</button> <br>
            <button class="btn">> 메인 화면으로 이동</button>
        </div>
    </div>
    
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>