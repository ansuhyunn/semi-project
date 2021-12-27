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
	        margin-top:100px;
	        height:500px;
	    }
	    .findPwdUpdateForm{
	    	border:1px solid rgb(180, 172, 166);
            margin:auto;
            padding:50px;
            width:500px;
	    }
	    .input{
            border:none;
            border-radius:3px;
            width:400px;
            height:45px;
            background:rgba(255, 255, 255, 0.45);
        }
        #btnPwdUpdate{
        	width:400px;
            height:45px;
            border:none;
            background:rgb(203, 185, 153);
            font-size:15px;
            font-weight:bold;
        }
	</style>
</head>
<body>
	
	<%@ include file="../common/menubar.jsp" %>
	<div class="outer" align="center">
	
		<h3 align="center" style="font-weight:bold">비밀번호 재설정</h3>
		<br><br>
		
	 	<form action="" method="post" class="findPwdUpdateForm">	
	    	
	    	<div class ="result">
		     	<div class ="success">
			    	<input type="text" class="input" name="userPwd" placeholder="새로운 비밀번호" required> <br><br>
            		<input type="text" class="input" name="checkPwd" placeholder="비밀번호 확인" required> <br><br>
			     </div>
			     <br>
		     	<div class ="pwdUpdate">
				    <input type="button" id="btnPwdUpdate" class="btn btn-sm" value="확인" onclick="pwdUpdate();" >
		      	</div>
		    </div>
		    <script>
		    	function pwdUpdate(){
		    		alert("비밀번호 재설정이 완료되었습니다.");
		    		location.href = "<%=contextPath%>/loginPage.me";
		    	}
		    </script> 
		</form>
	</div>
	
	<%@ include file="../common/footerbar.jsp" %>   
	
</body>
</html>