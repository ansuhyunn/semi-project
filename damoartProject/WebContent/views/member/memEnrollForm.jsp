<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.mail.*"%>
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
        <form action="insert.me"  method="post" id="enrollForm" class="enrollForm">
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
                        <input type="text" name="memId" id="memId" placeholder="영문, 숫자  5~20자 " minlength="5" required>
                        &nbsp;&nbsp;&nbsp;
                        <button type="button" class="check id" onclick="idCheck();">중복확인</button>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th height="70">* 비밀번호</th>
                    <td>
                        <input type="password" name="memPwd" id="memPwd" placeholder="영문+숫자  8~20자  ('~!@'사용가능)" minlength="8" maxlength="20" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th height="70">* 비밀번호확인</th>
                    <td>
                        <input type="password" name="checkPwd" id="checkPwd" minlength="8" maxlength="20" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th height="70">* 이름</th>
                    <td>
                        <input type="text" name="memName" id="memName" placeholder="2글자 이상" minlength="2" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th height="70">* 닉네임</th>
                    <td>
                        <input type="text" name="nickname" id="nickName" placeholder="한글, 영문, 특수문자 2~14자" minlength="2" maxlength="14" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th height="70">* 이메일</th>
                    <td>
                        <input type="text" name="emailId" id="emailId" style="width:170px;"required>
                        &nbsp;
                        <select id="emailDomain" name="emailDomain" class="email_select"> 
	                        <option value="">직접입력</option> 
	                        <option value="@naver.com">@naver.com</option> 
	                        <option value="@gmail.com">@gmail.com</option> 
	                        <option value="@daum.net">@daum.net</option> 
	                        <option value="@nate.com">@nate.com</option> 
                    	</select> &nbsp;&nbsp;
                        <button type="button" class="check email" onclick="sendMail();" data-toggle="modal" data-target="#myModal">이메일인증</button>
              			
              			<!-- The Modal -->
						<div class="modal" id="myModal">
							<div class="modal-dialog">
						    	<div class="modal-content">
						  
							        <!-- Modal body -->
							        <div class="modal-body">
							            <p>인증번호 발송이 완료되었습니다. <br> 메일함을 확인해주세요. <br> </p>
							            <input type="number" placeholder="숫자 6자리 입력"> 
							        </div>
							  
							        <!-- Modal footer -->
							        <div class="modal-footer">
							            <p>인증번호를 받지 못하셨나요? <a href="">재발송</a></p>
							          <button type="button" class="btn btn-danger" onclick="checkMail();" data-dismiss="modal">확인</button>
							        </div>
						  
						      	</div>
						    </div>
						 </div>
              					  
                        <script>
							function sendMail(){
							    <%
								MailSend ms = new MailSend();
								ms.MailSend();
								%>
							}
							
							function checkMail(){
								alert("이메일 인증이 완료되었습니다.");
							}
						</script>
                    </td>
                    <td>
                    	
                    </td>
                </tr>
                <tr>
                    <th height="70">* 전화번호</th>
                    <td>
                        <input type="text" name="phone" placeholder="'-' 포함해서 입력" required>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th height="70">&nbsp;&nbsp;&nbsp;생년월일</th>
                    <td>
                        <script>
	                        var today = new Date();
	                        var toyear = parseInt(today.getFullYear ());
	                        var start = toyear;
	                        var end = toyear -90;
	
	                        document.write("<select name=birth1> ");
	                        document.write("<option value='' selected>");
	                        for (i=start; i>=end; i--) document.write("<option>"+i);
	                        document.write("</select>년  ");
	
	                        document.write("<select name=birth2>");
	                        document.write("<option value='' selected>");
	                        for (i=1; i<=12; i++) document.write("<option>"+i);
	                        document.write("</select>월  ");
	
	                        document.write("<select name=birth3>");
	                        document.write("<option value='' selected>");
	                        for (i=1; i<=31; i++) document.write("<option>"+i);
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
                <button class="btn-mem back" onclick="mainPage();">취소</button>
                <button type="submit" class="btn-mem enroll" onclick="return validate();" disabled>회원가입</button>
            </div>
            
            <br><br>

        </form>
        
        <script>
        	// 취소버튼 클릭시
        	function mainPage(){
        		location.href = "<%=contextPath%>/views/common/mainPage.jsp";
        	}
        	
        	// 아이디 중복체크
	    	function idCheck(){
	    		
        		// 유효성검사
	    		const idInput = document.getElementById("memId");
	    		const $idInput = $("#enrollForm input[name=memId]");
	    		// 아이디 "영문, 숫자  5~20자"
	            let regExp = /^[a-z][a-z\d]{4,19}$/;
	            if(!regExp.test(idInput.value)){
	                alert("유효한 아이디 형식으로 입력해주세요.");
	                idInput.select();
	                return false;
	            }
	    		
	            // 중복체크
	    		$.ajax({
	    			url:"idCheck.me",
	    			data:{checkId:$idInput.val()},
	    			success:function(result){
	    				//console.log(result);
	    				if(result == 'NNNNN'){ // 사용불가능
	    					alert("이미 존재하거나 탈퇴한 회원의 아이디입니다.");
	    					$idInput.focus();
	    				}else{ // 사용가능
	    					if(confirm("사용가능한 아이디입니다. 사용하시겠습니까?")){
	    						$("#enrollForm :submit").removeAttr("disabled");
	    						$idInput.attr("readonly", true);
	    					}else{
	    						$idInput.focus();
	    					}
	    				}
	    			},
	    			error:function(){
	    				console.log("아이디 중복체크용 ajax 통신실패");
	    			}
	    		})
	    		
	    	}
        	
        	// 유효성 검사
        	function validate() {
	            const pwdInput1 = document.getElementById("memPwd");
	            const pwdInput2 = document.getElementById("checkPwd");
	            const nameInput = document.getElementById("memName");
	            const nickInput = document.getElementById("nickname");
	            const phoneInput = document.getElementById("phone");
	    
	            // 비밀번호 "영문+숫자  8~20자  ('~!@'사용가능)"
	            regExp = /^[a-z\d~!@]{8,20}$/i;
	            if(!regExp.test(pwdInput1.value)){
	                alert("유효한 비밀번호 형식으로 입력해주세요.");
	                pwdInput1.value = "";
	                pwdInput1.focus();
	                return false;
	            }
	            
	            // 비밀번호 확인
	            if(pwdInput1.value != pwdInput2.value){
	                alert("비밀번호가 일치하지 않습니다.");
	                pwdInput2.value = "";
	                pwdInput2.focus();
	                return false;
	            }
	            
	            // 이름 "2글자 이상"
	            regExp = /^[가-힣a-z\d]{2,}$/;
	            if(!regExp.test(nameInput.value)){
	                alert("유효한 이름을 입력해주세요.");
	                nameInput.select();
	                return false;
	            }
	            
	            // 닉네임 "한글, 영문, 특수문자 2~14자"
	            regExp = /^[\D]{2,14}$/;
	            if(!regExp.test(nickInput.value)){
	                alert("유효한 닉네임을 입력해주세요.");
	                nickInput.select();
	                return false;
	            }
        	}
        	
        </script>
        
    </div>

    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>