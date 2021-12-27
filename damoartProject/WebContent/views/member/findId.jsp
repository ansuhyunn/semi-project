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
        .findIdForm{
            border:1px solid rgb(180, 172, 166);
            margin:auto;
            padding:50px;
            width:500px;
        }
        .input{
            border:none;
            width:400px;
            height:45px;
            background:rgba(255, 255, 255, 0.45);
        }
        #inputEmail{width:270px;}
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
        <h3 align="center" style="font-weight:bold">아이디 찾기</h3>
        <br><br><br>
        
        <div class="findIdForm" align="center">
            <br><br>
            <div class="findIdForm_content">
                <form action="" method="post">
                    <input type="text" class="input" name="userName" placeholder="이름" required> <br><br>
                    <input type="text" class="input" id="inputEmail" name="emailId" placeholder="이메일" required> 
                    <select id="emailDomain" id="inputEmailDomain" name="emailDomain" class="email_select"> 
                        <option value="self">직접입력</option> 
                        <option value="@naver.com">@naver.com</option> 
                        <option value="@gmail.com">@gmail.com</option> 
                        <option value="@daum.net">@daum.net</option> 
                        <option value="@nate.com">@nate.com</option> 
                    </select> 
                    <br>
                    <input type="text" class="input" name="phone" style="display:none;" placeholder="휴대전화번호('-'제외하고 입력)" required> <br><br> 
                    <button type="submit" class="btn-mem" onclick="findIdResult();">아이디 찾기</button> <br><br>
                    
                    <script>
	                    function findIdResult(){
	          				location.href = "<%=contextPath%>/views/member/findIdResult.jsp";
	          			}
                    </script>
                </form>
            </div>
        </div>

    </div>
    
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>