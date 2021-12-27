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
            height:600px;
        }
        .findPwdForm{
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
        #inputEmail{width:290px;}
        .btn-mem{
            width:400px;
            height:45px;
            background:rgb(203, 185, 153);
            border:none;
            border-radius:3px;
            font-weight:bold
        }
    </style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	
    <div class="outer">
        <h3 align="center" style="font-weight:bold">비밀번호 찾기</h3>
        <br><br><br>
        
        <form action="" method="post"  class="findPwdForm">
            <input type="text" class="input" name="userId" placeholder="아이디" required> <br><br>
            <input type="text" class="input" name="userName" placeholder="이름" required> <br><br>
            <input type="text" class="input" name="email" id="inputEmail" placeholder="가입한 이메일주소" required> 
            <select id="emailDomain" id="inputEmailDomain" name="emailDomain" class="email_select"> 
                <option value="self">직접입력</option> 
                <option value="naver.com">naver.com</option> 
                <option value="gmail.com">gmail.com</option> 
                <option value="daum.net">daum.net</option> 
                <option value="nate.com">nate.com</option> 
            </select> 
            <br><br>

            <button type="submit" class="btn-mem" onclick="findPwdResult();">비밀번호 재설정</button> <br>
            
            <script>
            	function findPwdResult(){
            		location.href = "<%=contextPath%>/views/member/findPwdResult.jsp";
            	}
            </script>
        </form>
    </div>
    
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>