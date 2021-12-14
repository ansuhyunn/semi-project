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
            height:1400px;
        }
        .enrollList{margin-left:36%;}
        .enrollList li{
            list-style:none;
            float:left;  
            padding:15px;
            margin:auto;
            font-size:20px;
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
    
        .enrollForm table tr th{
            padding-left:60px;
            padding-bottom:50px;
        }
        .enrollForm table tr td{padding-bottom:50px;}
        .enrollForm input{
            border:none;
            margin:auto;
            padding:10px;
            background:rgba(255, 255, 255, 0.45);
            width:300px;
        }
        .btn-mem{
            width:200px;
            height:40px;
            border:none;
            border-radius:3px;
            font-weight:bold;
            margin:30px;
        }
        .btn-mem.back{background:rgb(203, 185, 153);}
        .btn-mem.enroll{
            background:rgba(78, 67, 44, 0.6);
            color:white;
        }
        .check{
            width:90px;
            height:40px;
            font-size:14px;
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
        <hr style="width:50%;">
        <form action=""  method="post" class="enrollForm">
            <br><br><br>
            <table>
                <tr>
                    <td colspan="3" height="50" style="color:red; padding:40px;"> * 표시는 필수입력사항입니다. </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <th width="250" height="70">* 아이디</th>
                    <td width="600">
                        <input type="text" name="userId" placeholder="영문, 숫자 5글자 이상" minlength="5" required>
                        &nbsp;&nbsp;&nbsp;
                        <button type="button" class="check id">중복확인</button>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th height="70">* 비밀번호</th>
                    <td>
                        <input type="password" name="userPwd" placeholder="영문+숫자 8~20자" minlength="8" maxlength="20" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th height="70">* 비밀번호확인</th>
                    <td>
                        <input type="password" minlength="8" maxlength="20" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th height="70">* 이름</th>
                    <td>
                        <input type="text" name="userName" placeholder="2글자 이상" minlength="2" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th height="70">* 닉네임</th>
                    <td>
                        <input type="text" name="nickName" placeholder="한글, 영문, 특수문자 2~14자" minlength="2" maxlength="14" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th height="70">* 이메일</th>
                    <td>
                        <input type="text" name="email" style="width:170px;"required> 
                        &nbsp;
                        <select id="emailDomain" id="inputEmailDomain" name="emailDomain" class="email_select"> 
	                        <option value="self">직접입력</option> 
	                        <option value="@naver.com">@naver.com</option> 
	                        <option value="@gmail.com">@gmail.com</option> 
	                        <option value="@daum.net">@daum.net</option> 
	                        <option value="@nate.com">@nate.com</option> 
                    	</select> &nbsp;&nbsp;
                        <button type="button" class="check email" >이메일인증</button>
                    </td>
                    <td>
                    	
                    </td>
                </tr>
                <tr>
                    <th height="70">* 전화번호</th>
                    <td>
                        <input type="text" name="phone" placeholder="'-' 제외하고 입력" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th height="70">&nbsp;&nbsp;&nbsp;생년월일</th>
                    <td>
                        <script type="text/javascript">
                        var today = new Date();
                        var toyear = parseInt(today.getFullYear ());
                        var start = toyear;
                        var end = toyear -90;

                        document.write("<select name=birth1> ");
                        document.write("<option value='2021' selected>");
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
                <button class="btn-mem back">이전단계</button>
                <button type="submit" class="btn-mem enroll">회원가입</button>
            </div>
            
            <br><br>

        </form>

    </div>

    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>