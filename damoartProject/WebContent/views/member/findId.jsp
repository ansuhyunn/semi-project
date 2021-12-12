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
            background:#e0cdaf;
            font-family: 'IBMPlexSansKR-Regular';
        }
        .outer{
            margin:auto;
            margin-top:300px;
            height:700px;
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
            background:rgb(245, 236, 220);
        }
        #inputEmail{width:295px;}
        .btn{
            width:400px;
            height:45px;
            background:rgb(245, 236, 220);
            border:none;
            font-weight:bold
        }
        
    </style>
</head>
<body>
    <div class="outer">
        <h2 align="center" style="font-weight:bold">아이디 찾기</h2>
        <br><br><br>
        
        <div class="findIdForm" align="center">
            <div class="findIdForm_radio">
                <input type="radio" id="email" name="findId">
                <label for="findIdEmail">이메일</label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" id="phone" name="findId">
                <label for="findIdPhone">휴대전화번호</label> 
            </div>
            <br>
            <div class="findIdForm_content">
                <form action="" method="post">
                    <input type="text" class="input" name="userName" placeholder="이름" required> <br><br>
                    <input type="text" class="input" id="inputEmail" name="email" placeholder="이메일" required> 
                    <select id="emailDomain" id="inputEmailDomain" name="emailDomain" class="email_select"> 
                        <option value="self">직접입력</option> 
                        <option value="@naver.com">@naver.com</option> 
                        <option value="@gmail.com">@gmail.com</option> 
                        <option value="@daum.net">@daum.net</option> 
                        <option value="@nate.com">@nate.com</option> 
                    </select> 
                    <br>
                    <input type="text" class="input" name="phone" style="display:none;" placeholder="휴대전화번호('-'제외하고 입력)" required> <br><br> 
                    <button type="submit" class="btn">아이디 찾기</button> <br><br>
                </form>
            </div>
        </div>

    </div>
    
</body>
</html>