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
        height:150px;
        background:#e1d5bf;
        margin:auto;
        }
    .userbox_1, .userbox_2{
        background:rgb(203, 185, 153);
        box-sizing:border-box;
        height:100%;
        float:left; 
    }
    .userbox_1{width:80%; padding-top:50px;}
    .userbox_2{width:19%; padding-top:30px;}

    .userName{
        font-size:20px;
        padding-left:220px;      
    }

    .userbox_2{padding-left:30px; margin-left:10px;}
    a{
        text-decoration:none;
    }
    .userPoint{
        font-size:14px;
        color:black;
        padding-bottom:25px;
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
        padding-left:30px;
    }

    /*예매내역*/
    .order_box{
        margin:auto;
        width:765px; 
        height:150px;
        border-radius:10px;
    }
    
    /*찜한상품, qna내역이 없을 경우*/
    #exclamationmark_icon{
    	padding-left:345px;
        padding-top:35px;
    }
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
    <br><br>
    <!--회원박스-->
    <div class="mypage_top">
        <div class="userbox_1">
            <strong class="userName">xxx님 반갑습니다.</strong>
        </div>
        <div class="userbox_2">
            <a href="">
                <div class="userPoint">
                    적립금 >
                </div>
                <p class="point">2,000원</p>
            </a>
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
                    <hr align="left" width="120" color="rgb(64, 64, 64)" size="1">
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
                    <a href="" id="submenu">회원정보 수정</a> <br>
                    <a href="" id="submenu">회원 탈퇴</a> <br>
                </div>
            </ul>
        </div>
        <div id="content_2">
            <div class="contents">
                <h4 class="contents_tit">예매 내역</h4><br>
                <div class="order_box" style="background:rgba(255, 255, 255, 0.45)">

                </div>
            </div>
            <div class="contents">
                <h4 class="contents_tit">찜한 상품</h4>
                <hr align="left" width="765" color="rgb(64, 64, 64)" size="1">
                <!--찜한 내역이 없을 경우-->
                <div id="exclamationmark_icon">
                    <img src="<%=request.getContextPath() %>/resources/images/exclamationmark.png" width="70px" height="70px"> 
                </div>
                <br>
                <div id="like_product_txt">
                    <p align="center">찜한 내역이 없습니다.</p>
                </div>

            </div>
            <div class="contents">
                <h4 class="contents_tit">Q&A 내역</h4>
                <hr align="left" width="765" color="rgb(64, 64, 64)" size="1">
                <!--Q&A 내역이 없을 경우-->
                <div id="exclamationmark_icon">
                    <img src="<%=request.getContextPath() %>/resources/images/exclamationmark.png" width="70px" height="70px"> 
                </div>
                <br>
                <div id="qna_txt">
                    <p align="center">Q&A 내역이 없습니다.</p>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>