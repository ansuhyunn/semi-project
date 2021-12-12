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
            font-weight:bold
        }
        .enrollList-1, .enrollList-3{
            color:rgb(104, 102, 102);
        }
        .enrollForm table{
            background:rgba(255, 255, 255, 0.45);
            margin:auto;
            border-radius:3px;
        }
        .enrollForm input{
            border:none;
            border-bottom:1px solid lightgray;
            padding:10px;
            background:rgba(255, 255, 255, 0.45);
        }
        .btn{
            width:200px;
            height:40px;
            border:none;
            border-radius:3px;
            font-weight:bold;
            margin:30px;
        }
        .btn.back{background:rgb(203, 185, 153);}
        .btn.enroll{
            background:rgba(78, 67, 44, 0.6);
            color:white;
        }
        .check{
            width:80px;
            height:30px;
            font-size:13px;
            border:none;
            background:rgba(78, 67, 44, 0.6);
            color:white;
            border-radius:3px;
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
        <form action=""  method="post" class="enrollForm">
            <br><br><br>
            <table>
                <tr>
                    <td colspan="3" height="50" style="color:red"> &nbsp;&nbsp;&nbsp;* 표시는 필수입력사항입니다. </td>
                </tr>
                <tr>
                    <td height="50"></td>
                </tr>
                <tr>
                    <td width="200" height="70" align="center"> * 아이디</td>
                    <td width="450">
                        <input type="text" name="userId" placeholder="영문, 숫자 5글자 이상" minlength="5" required>
                        <button type="button" class="check id" >중복확인</button>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td height="70" align="center">* 비밀번호</td>
                    <td>
                        <input type="password" name="userPwd" placeholder="영문+숫자 8~20자" minlength="8" maxlength="20" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td height="70" align="center">* 비밀번호확인</td>
                    <td>
                        <input type="password" minlength="8" maxlength="20" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td height="70" align="center">* 이름</td>
                    <td>
                        <input type="text" name="userName" placeholder="2글자 이상" minlength="2" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td height="70" align="center">* 닉네임</td>
                    <td>
                        <input type="text" name="nickName" placeholder="한글, 영문, 특수문자 2~14자" minlength="2" maxlength="14" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td height="70" align="center">* 이메일</td>
                    <td>
                        <input type="text" name="email" style="width:105px;"required>

                        <select id="emailDomain" id="inputEmailDomain" name="emailDomain" class="email_select"> 
	                        <option value="self">직접입력</option> 
	                        <option value="@naver.com">@naver.com</option> 
	                        <option value="@gmail.com">@gmail.com</option> 
	                        <option value="@daum.net">@daum.net</option> 
	                        <option value="@nate.com">@nate.com</option> 
                    	</select> 
                        <button type="button" class="check email" >이메일 인증</button>
                    </td>
                    <td>
                    	
                    </td>
                </tr>
                <tr>
                    <td height="70" align="center">* 전화번호</td>
                    <td>
                        <input type="text" name="phone" placeholder="'-' 제외하고 입력" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td height="70" align="center">&nbsp;&nbsp;&nbsp;생년월일</td>
                    <td>
                        <script type="text/javascript">
                        var today = new Date();
                        var toyear = parseInt(today.getFullYear ());
                        var start = toyear;
                        var end = toyear - 15;

                        document.write("<select name=birth1> ");
                        document.write("<option value='2015' selected>");
                        for (i=start;i>=end;i--) document.write("<option>"+i);
                        document.write("</select>년  ");

                        document.write("<select name=birth2>");
                        document.write("<option value='' selected>");
                        for (i=1;i<=12;i++) document.write("<option>"+i);
                        document.write("</select>월  ");

                        document.write("<select name=birth3>");
                        document.write("<option value='' selected>");
                        for (i=1;i<=31;i++) document.write("<option>"+i);
                        document.write("</select>일  </font>");
                    </script>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td height="50"></td>
                </tr>
            </table>

            <br><br>

            <div align="center">
                <button class="btn back">이전단계</button>
                <button type="submit" class="btn enroll">회원가입</button>
            </div>
            
            <br><br>

        </form>

    </div>

    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>