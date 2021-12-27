<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member m = (Member)request.getAttribute("findIdResult");
 %>
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
            margin-top:100px;
            height:500px;
        }
        .findIdResult{
        	border:1px solid rgb(180, 172, 166);
            margin:auto;
            padding:50px;
            width:500px;
        }
        .userId{
        	font-size:25px;
        	font-weight:bold;
        }
        #btnLogin, #btnfindPwd{
        	width:120px;
            height:45px;
            border:none;
            border-radius:3px;
            background:rgb(203, 185, 153);
            font-weight:bold;
            margin:auto;  
        }
        #btnfindPwd{
        	margin-left:30px;
        	background:rgba(78, 67, 44, 0.6);
            color:white;
        }
    </style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	<div class="outer" align="center">
		<h3 align="center" style="font-weight:bold">아이디 찾기</h3>
		<br><br>
		
	 	<form action="" method="post">
	    
	    	<div class ="findIdResult">
		     	<div class ="success">
			      <h5> 김영희님의 아이디는 </h5>  
			      <div class ="userId">young2</div>
			      <h5>  입니다 </h5>
			     </div>
			     <br><br>
		     	<div class ="findId-buttons">
				    <input type="button" id="btnLogin" class="btn btn-sm" value="로그인" onclick="loginPage();" >
				    <input type="button" id="btnfindPwd" class="btn btn-sm" value="비밀번호 찾기" onclick="findPwd();" >
				    <script>
				    	function loginPage(){
				    		location.href = "<%=contextPath%>/loginPage.me";
				    	}
				    	function findPwd(){
				    		location.href = "<%=contextPath%>/views/member/findPwd.jsp";
				    	}
				    </script>
		      	</div>
		     </div>
		     <!-- 
       		 <div class ="result">
     	  		<div class ="fail">
		        	<h4>등록된 정보가 존재하지 않습니다. </h4>  
			    </div>
			    <div class = "found-login">
				    <input type="button" class="btn btn-sm" id="btnlogin" value="회원가입" onclick="">
		      	</div>
	      	 </div>
	      	 -->
		</form>
	</div>
	
	<%@ include file="../common/footerbar.jsp" %>     	
</body>
</html>