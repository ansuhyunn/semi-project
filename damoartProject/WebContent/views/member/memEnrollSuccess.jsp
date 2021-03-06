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
            margin-top:70px;
            height:800px;
        }
        .enrollList{margin-left:36%;}
        .enrollList li{
            list-style:none;
            float:left;
            padding:15px;  
            margin:auto;
            font-weight:bold;
            font-size:20px;
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
            font-size:30px;
            font-weight:bold;
        }
        .btn-mem{
            width:400px;
            height:45px;
            background:rgb(203, 185, 153);
            border:none;
            font-weight:bold;
            margin:10px;
            border-radius:3px;
        }
        
    </style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	
    <div class="outer">
        <br>
        <h2 align="center" style="font-weight:bold">????????????</h2><br>
        <div align="center">
            <ul class="enrollList">
                <li class="enrollList-1" >01 ????????????</li>
                <li class="enrollList-2">02 ????????????</li>
                <li class="enrollList-3">03 ????????????</li>
            </ul>
        </div>
        <br><br>
        <hr style="width:50%;">
        <img src="../../resources/images/check.png" width="100" class="img">
        <br><br>
        <p id="comment1" align="center">DAMOART ??????????????? ?????????????????????. </p>
        <p id="comment2" align="center" style="font-size:20px;">??????????????? ????????? ???????????????!</p>

        <div align="center">
            <button onclick="loginPage();" type="button" class="btn-mem">> ????????? ???????????? ??????</button> <br>
            <button onclick="mainPage();" type="button" class="btn-mem">> ?????? ???????????? ??????</button>
            
            <script>
            	function loginPage(){
            		location.href = "<%= contextPath %>/loginPage.me";
            	}
            	
            	function mainPage(){
            		location.href = "<%= contextPath %>/views/common/mainPage.jsp";
            	}
            </script>
            
        </div>
    </div>
    
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>