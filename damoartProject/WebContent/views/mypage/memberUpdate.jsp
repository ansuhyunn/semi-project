<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
        		<strong class="userName">xxx</strong>님 반갑습니다.
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
                    <a href="" id="submenu">예매 내역</a> <br>
                    <a href="" id="submenu">취소/환불 내역</a> <br>
                    <a href="" id="submenu">적립금 내역</a> <br>
                    <hr width="120" align="left">
                    <a href="" id="submenu">최근 본 상품</a> <br>
                    <a href="" id="submenu">찜한 상품</a>
                </div><br>
                <li><h3>마이활동</h3></li>
                <div>
                    <a href="" id="submenu">리뷰 내역</a> <br>
                    <a href="" id="submenu">Q&A 내역</a> <br>
                </div><br>
                <li><h3>마이정보</h3></li>
                <div>
                    <a href="" id="submenu" style="color:rgb(151, 138, 116)">회원정보 수정</a> <br>
                    <a href="" id="submenu">회원 탈퇴</a> <br>
                </div>
            </ul>
        </div>
        <div id="content_2">

            <div class="contents">
                <h4 class="contents_tit">회원정보 수정</h4>
                <hr align="left" width="765" color="rgb(64, 64, 64)" size="1">
                <div class="update_tbl">
            
                    <form action="" id="mypage-form" method="post">
            
                        <table >
                            <tr>
                                <th>* 이름</th> 
                                <td><input type="text" name="userName" minlength="2" value="userName" required></td> 
                            </tr>
                            <tr>
                                <th>* 아이디</th>
                                <td><input type="text" name="userId" maxlength="6" value="userId" readonly></td>
                            </tr>
                            <!--  
                            <tr>
                                <th>* 비밀번호</th> 
                                <td><input type="password" name="userPwd" maxlength="12" value="userPwd" required></td> 
                            </tr>
                            <tr>
                                <th>* 비밀번호 확인</th> 
                                <td><input type="password" name="pwdCheck" maxlength="12" value="pwdCheck" required></td> 
                            </tr>
                            <tr>
                            -->
                                <th>* 닉네임</th> 
                                <td><input type="text" name="nickName" minlength="2" maxlength="14" value="nickname" required></td> 
                            </tr>
                            <tr>
                                <th>* 이메일</th>
                                <td><input type="email" name="email" value="email" required></td>
                            </tr>
                            <tr>
                                <th>* 휴대전화번호</th>
                                <td><input type="text" name="phone" placeholder="- 포함해서 입력" value="phone" required></td>
                            </tr>
                            <tr>
                                <th>생년월일</th>
                                <td>
                                    <div class="birth_day">
                                        <input type="text" name="birth_year" id="birth_year" pattern="[0-9]*" value="" label="생년월일" size="4" maxlength="4" placeholder="YYYY">
                                        <span class="bar"></span>
                                        <input type="text" name="birth[]" id="birth_month" pattern="[0-9]*" value="" label="생년월일" size="2" maxlength="2" placeholder="MM">
                                        <span class="bar"></span>
                                        <input type="text" name="birth[]" id="birth_day" pattern="[0-9]*" value="" label="생년월일" size="2" maxlength="2" placeholder="DD">
                                        </div>
                                </td>
                            </tr>

                        </table>
                        
            
                        <br><br>
            
                        <div class="update_button" align="center">
                            <button type="submit" class="btn btn-sm btn-secondary">저장하기</button>
                        </div>
                        
                        <br><br>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>