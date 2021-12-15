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

    .update_button button{
        width:100px;
        height:40px;
        background:rgb(182, 167, 141);
        border:none;
        font-size:15px;
        font-weight:600;
    }
    .delete_form{
        padding-left:60px;
        padding-top:20px;
    }
    .delete_tit h3{
        font-size:17px;
        font-weight:600;
    }
    .delete_guide{
        width:600px;
        border:1px solid black;
        padding:20px 10px 10px 10px;
    }
    .delete_tit, .delete_guide strong{
        font-size:13px;
    }
    .delete_guide p{
        font-size:11px;
    }
    .agreebox{
        font-size:15px;
        font-weight:600;
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
                    <a href="<%=request.getContextPath() %>/views/mypage/pwdVerificationMemUpdate.jsp" id="submenu">회원정보 수정</a> <br>
                    <a href="<%=request.getContextPath() %>/views/mypage/pwdVerificationMemDelete.jsp" id="submenu" id="submenu">회원 탈퇴</a> <br>
                </div>
            </ul>
        </div>
        <div id="content_2">

            <div class="contents">
                <h4 class="contents_tit">회원탈퇴</h4>
                <hr align="left" width="765" color="rgb(64, 64, 64)" size="1">
                <div class="delete_form">
                    
                    <div class="delete_tit">
                        <h3>탈퇴 안내</h3>
                        <p>* 회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>
                    </div> <br>
                    <div class="delete_guide">
                        <p>
                            <strong>사용하고 계신 아이디는 탈퇴할 경우 복구가 불가합니다.</strong><br>
                            탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.
                        </p>
                        <p>
                            <strong>탈퇴 후 회원정보 및 서비스 이용기록은 모두 삭제됩니다.</strong><br>
                            
                        </p>
                        <p>
                            <strong>탈퇴 후에도 게시판형 서비스에 등록된 게시물은 그대로 남아있습니다.</strong><br>
                            삭제를 원하는 게시글이 있다면 반드시 탈퇴 전 삭제하시기 바랍니다.
                        </p>
                    </div>
            
                    <br>
                    <div class="agreebox">
                        <input type="checkbox" required></input> 
                        안내 사항을 모두 확인하였으며, 이에 동의합니다.
                    </div>

                    <br><br><br>
                    
                </div>

                <div class="update_button" align="center">
                	<input type="hidden" name="memId" value="<%=loginUser.getMemId()%>">
                    <button type="button" class="btn btn-sm btn-secondary" onclick="location.href='<%= contextPath %>/views/mypage/mypageMain.jsp'">취소</button>
                    <button type="submit" class="btn btn-sm btn-secondary" onclick="deleteCheck();">탈퇴</button>
                </div>

                <script>
	            	function deleteCheck(){
	            		location.href = "<%= contextPath %>/memberDelete.mp";
	            		
	            	}
	            </script>
                
            </div>
        </div>
    </div>
    <br><br><br>
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>