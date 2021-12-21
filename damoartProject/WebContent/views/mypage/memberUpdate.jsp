<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /*회원박스 스타일*/
    .mypage_top{
        width:1000px;
        height:120px;
        background:#e1d5bf;
        margin:auto;
        }
    .userbox_1, .userbox_2, .userbox_3{
        background:rgb(203, 185, 153);
        box-sizing:border-box;
        height:100%;
        float:left; 
    }
    .userbox_1{width:15%; padding-top:30px;} 
    .userbox_2{width:65%; padding-top:45px;}
    .userbox_3{width:19.5%; padding-top:30px;}
	
	.txt{font-size:20px; font-weight:600;}
    .userName{
        font-size:20px;
        padding-left:30px;      
    }

    .userbox_3{padding-left:40px; margin-left:0.5%;}
	.userbox_3:hover{
		background:rgb(182, 167, 141);
        cursor:pointer;
    }
    .userPoint{
        font-size:14px;
        color:black;
        padding-bottom:15px;
    }
    .point{
        font-size:20px;
        color:white;
    }

    /*카테고리 및 내용 스타일*/
    .mypage-content{
        width:1000px;
        height:1000px;
        background:#e1d5bf;
        margin:auto;
        }
    #content_1, #content_2{
        box-sizing:border-box;
        height:100%;
        float:left; 
    }
    #content_1{width:20%;}
    #content_2{width:80%;}

    #mp-content{height:1000px;}

    #mp-content>div{
        height:100%;
        float:left;
    }
    #content_1{width:20%;}
    #content_2{width:80%;}

    #content_1 h2{
        padding: 5px 0 20px 1px;
		letter-spacing:-1px;
        font-size:28px;
        font-weight:700;
        letter-spacing:-1px;
    }
    .mem-box{
        height:120px;
        border:solid rgb(64, 64, 64); 
        border-width:thin;
    }
    .mem-box .txt{
        padding-left:300px;
        line-height:100px;
        font-size:21px;
        font-weight:700;
    }
	#mp-content{
		padding-top:50px;
	}
	
    ul{list-style:none; padding-left:10px;}
    #content_1 h3{
        padding-top:10px;
        font-size:17px;
        font-weight:700;
        line-height:24px;   
        letter-spacing:-1px;
    }
    #content_2 h4{
    	padding-top:10px;
    	font-size:20px;
    	font-weight:600;
    	letter-spacing:-1px;
    }
    #content_1 div{
        border:none;
        line-height:2em
    }
    #content_1 a{
        text-decoration:none;
        color:black;
        font-size:14px;
        letter-spacing:-0.8px;
        
    }
    #content_1 a:hover{
        color:rgb(151, 138, 116);
    }

    /*content_2*/
    .contents{
        height:30%;
        padding-top:15px;
        padding-left:30px;
    }

    /*회원정보 수정*/
    #pwd_confirm_tit{
        font-size:17px;
        font-weight:600;
    }

    /*정보 테이블*/
    #content_2 table{
        background:rgba(255, 255, 255, 0.45);
    }
    .update_tbl th{
        width:270px;
        padding-left:120px;
        padding:20px 0 0 100px;
        font-size:14px;
    }
    .update_tbl td{
        padding-top:19px;
        border-radius: 10px;
    }
    .update_tbl input{
        width:300px; 
        height:40px;
        font-size:13px;
        color: #4c4c4c;
        border-radius: 3px;
        border:1px solid #ccc;
    }
    .update_button button{
        background:rgb(182, 167, 141);
    }
    .birth_day input{
        width:97px;
    }


</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	
	
    <br><br>
    <!--회원박스-->
    <div class="mypage_top">
        <div class="userbox_1">
        	<img src="<%=request.getContextPath() %>/resources/images/user.png" width="60px" height="60px" align="right">
        </div>
        <div class="userbox_2">
        	<p class="txt">
        		<strong class="userName"><%= loginUser.getNickName() %></strong>님 반갑습니다.
        	</p>
        </div>
        
        <div class="userbox_3">
        
            <div class="userPoint">
                   	적립금 >
            </div>
            <p class="point">2,000원</p>
            
        </div>
    </div>

    <br><br>

    <!--카테고리 및 내용-->
    <div class="mypage-content">
        <div id="content_1">
            <div id="mp-title"><h2>마이페이지</h2></div>
            <ul>  	
                <li><h3>마이쇼핑</h3></li>
                <div>
                    <a href="<%=request.getContextPath() %>/views/mypage/reserveDetail.jsp" id="submenu">예매 내역</a> <br>
                    <a href="<%=request.getContextPath() %>/views/mypage/refundDetail.jsp" id="submenu">취소/환불 내역</a> <br>
                    <a href="<%=request.getContextPath() %>/views/mypage/pointCheck.jsp" id="submenu">적립금 내역</a> <br>
                    <hr width="120" align="left">
                    <a href="<%=request.getContextPath() %>/views/mypage/recentlyViewProduct.jsp" id="submenu">최근 본 상품</a> <br>
                    <a href="<%=request.getContextPath() %>/views/mypage/likeProduct.jsp" id="submenu">찜한 상품</a>
                </div><br>
                <li><h3>마이활동</h3></li>
                <div>
                    <a href="" id="submenu">리뷰 내역</a> <br>
                    <a href="<%=request.getContextPath() %>/views/mypage/memberQnaList.jsp" id="submenu">Q&A 내역</a> <br>
                </div><br>
                <li><h3>마이정보</h3></li>
                <div>
                    <a href="<%=request.getContextPath() %>/views/mypage/pwdVerificationMemUpdate.jsp" id="submenu" style="color:rgb(151, 138, 116)">회원정보 수정</a> <br>
                    <a href="<%=request.getContextPath() %>/views/mypage/pwdVerificationMemDelete.jsp" id="submenu">회원 탈퇴</a> <br>
                </div>
            </ul>
        </div>
        <div id="content_2">
            <div class="contents">
                <h4 class="contents_tit">회원정보 수정</h4>
                <hr align="left" width="765" color="rgb(64, 64, 64)" size="1">
                <div class="update_tbl">
            
                    <form action="<%=contextPath%>/memberUpdate.mp" id="mypage-form" method="post">

                        <table>
                            <tr>
                                <td colspan="3" style="color:red; font-size:13px;"> * 표시는 필수입력사항입니다. </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <th width="250" height="70">* 아이디</th>
                                <td width="600">
                                    <input type="text" name="memId" value="<%= loginUser.getMemId() %>" readonly>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th height="70">* 비밀번호</th>
                                <td>
                                    <input type="password" name="memPwd" placeholder="영문+숫자 8~20자" minlength="8" maxlength="20" required>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th height="70">* 비밀번호확인</th>
                                <td>
                                    <input type="password" name="pwdCheck" minlength="8" maxlength="20" required>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th height="70">* 이름</th>
                                <td>
                                    <input type="text" name="memName" value="<%= loginUser.getMemName() %>" minlength="2" required>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th height="70">* 닉네임</th>
                                <td>
                                    <input type="text" name="nickName" value="<%= loginUser.getNickName() %>" placeholder="한글, 영문, 특수문자 2~14자" minlength="2" maxlength="14" required>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th height="70">* 이메일</th>
                                <td>
                                    <input type="text" name="emailId" value="<%= loginUser.getEmail().split("@")[0] %>"style="width:170px;"required> 
                                    &nbsp;
                                    <select id="emailDomain" name="emailDomain" value="<%= loginUser.getEmail().split("@")[1] %>" class="email_select"> 
                                        <option value="">직접입력</option> 
                                        <option value="@naver.com">@naver.com</option> 
                                        <option value="@gmail.com">@gmail.com</option> 
                                        <option value="@daum.net">@daum.net</option> 
                                        <option value="@nate.com">@nate.com</option> 
                                    </select> &nbsp;&nbsp;

                                </td>
                                <td>
                                    
                                </td>
                            </tr>
                            <tr>
                                <th height="70">* 전화번호</th>
                                <td>
                                    <input type="text" name="phone" placeholder="'-' 포함해서 입력" value="<%=loginUser.getPhone()%>" required>
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
                                        document.write("<option value=''>");
                                        for (i=start;i>=end;i--){
                                        	if(i == <%=loginUser.getBirth().split("/")[2]%>){
                                        		document.write("<option selected>"+i);
                                        	}else{
                                        		document.write("<option>"+i);
                                        	}
                                        }
                                        document.write("</select>년  ");
                
                                        document.write("<select name=birth2>");
                                        document.write("<option value=''>");
                                        for (i=1;i<=12;i++){
                                        	if(i == <%=loginUser.getBirth().split("/")[0]%>){
                                        		document.write("<option selected>"+i);
                                        	}else{
                                        		document.write("<option>"+i);
                                        	}
                                        }
                                        document.write("</select>월  ");
                
                                        document.write("<select name=birth3>");
                                        document.write("<option value=''>");
                                        for (i=1;i<=31;i++){
                                        	if(i == <%=loginUser.getBirth().split("/")[1]%>){
                                        		document.write("<option selected>" +i);
                                        	}else{
                                        		document.write("<option>"+i);
                                        	}
                                        }
                                        	
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
            
                        <div class="update_button" align="center">
                            <button type="submit" class="btn btn-sm btn-secondary" onclick="return updateCheck();">저장하기</button>
                        </div>
                        <script>
	            			function updateCheck(){
	            				if($("input[name=memPwd]").val() != $("input[name=pwdCheck]").val()){
	            					alert("비밀번호가 일치하지 않습니다.");
	            					return false;
	            			}
	            		}
	            </script>
                        <br><br>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>