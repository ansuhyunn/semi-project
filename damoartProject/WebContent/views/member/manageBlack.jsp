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
	        width:900px; 
	        margin:auto;
	        margin-top:150px;
	        margin-left:250px;
	    }
	    #outer>a{
	    color:rgb(64, 64, 64);
	    }
	    thead{background:rgb(207, 206, 206);}
	    tbody{background:white;}
	    .buttons>div{float:left;}
	    .buttons{width:100%; height:40px; position:relative;}
	    .button2{
	        position:absolute;
	        right:0;
	    }
	    #update{
	        background-color:rgb(203, 185, 153);
	        color:rgb(64, 64, 64);
	        font-weight:bold;
	    }
	    #delete, #search{
	        background-color:rgb(151, 138, 116);
	        color:white;
	    }
	    .point{
	        text-align:center;
	        font-weight:bold;
	        margin-left:5px;
	    }
	</style>
</head>
<body>
	<%@ include file="../common/manageMenubar_2.jsp" %>

    <div class="outer">
        <br><br>
		<h4 style="font-weight:bold;">블랙리스트 관리</h4>
        <br>
        <hr>

        <div class="buttons">
            <div class="button1">
                    <form action="">
                        <input type="text" placeholder="아이디">
                        <a href="" class="btn btn-sm" id="search">검색</a>
                    </form>
            </div>
            
            <div class="button2">
                <a href="" class="btn btn-sm" id="update">추가</a>
                <a href="" class="btn btn-sm" id="delete">삭제</a>
            </div>
        </div>
        <br>
        <div>
            <table align="center" class="table table-bordered" style="text-align:center;">
                <thead>
                    <tr>
                        <th width="20"><input type="checkbox"></th>
                        <th width="40">번호</th>
                        <th width="60">아이디</th>
                        <th width="50">이름</th>
                        <th width="150">등록사유</th>
                        <th width="90">등록일자</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    	<td><input type="checkbox"></td>
                    	<td>1</td>
                    	<td>user01</td>
                    	<td>홍길동</td>
                    	<td>욕설</td>
                    	<td>2021-12-13</td>
                    </tr>
                </tbody>
            </table>
            
        </div>
    </div>
</body>
</html>