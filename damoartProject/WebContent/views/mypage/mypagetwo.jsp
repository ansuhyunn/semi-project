<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    
  
    .wrap{
        width:1000px;
        height:1300px;
        margin:auto;      
    }
    .wrap>div{
        width:100%;
    }
    #mp-head{
        margin-top:30px;
    }
    #mp-content{height:1000px;}

    #mp-content>div{
        height:100%;
        float:left;
    }
    #content_1{width:20%;}
    #content_2{width:80%;}

    #mp-head h3{
		font-weight:bolder;
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
	
    ul{list-style:none;}
    #content_1 h2{
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
        height:33%;
        padding-left:30px;
    }
</style>
</head>

<body>
	<%@ include file="../common/menubar.jsp" %>
    <div class="wrap">
        <div id="mp-head">
            <h3 class="title" align="center">마이페이지</h3>
            <hr color="rgb(64, 64, 64)" size="1"><br>
            <div class="mem-box">
                <p class="txt">
                    <strong class="name">xxx</strong>
                    님 반갑습니다.
                </p>
            </div>
        </div>

        <div id="mp-content"><!--내용물 : 마이페이지 -->
            <div id="content_1">
                <ul>
                	
                    <li><h2>마이쇼핑</h2></li>
                    <div>
                        <a href="" id="submenu">예매 내역</a> <br>
                        <a href="" id="submenu">취소/환불 내역</a> <br>
                        <a href="" id="submenu">적립금 내역</a> <br>
                        <hr align="left" width="120" color="rgb(64, 64, 64)" size="1">
                        <a href="" id="submenu">최근 본 상품</a> <br>
                        <a href="" id="submenu">찜한 상품</a>
                    </div><br>
                    <li><h2>마이활동</h2></li>
                    <div>
                        <a href="" id="submenu">리뷰 내역</a> <br>
                        <a href="" id="submenu">Q&A 내역</a> <br>
                    </div><br>
                    <li><h2>마이정보</h2></li>
                    <div>
                        <a href="" id="submenu">회원정보 수정</a> <br>
                        <a href="" id="submenu">회원 탈퇴</a> <br>
                    </div>
                </ul>
            </div>
            <div id="content_2">
                <div class="contents">
                    <h4 class="contents_tit">예매 내역</h4>

                </div>
                <div class="contents">
                    <h4 class="contents_tit">찜한 상품</h4>
                    <hr align="left" width="700" color="rgb(64, 64, 64)" size="1">

                </div>
                <div class="contents">
                    <h4 class="contents_tit">Q&A 내역</h4>
                    <hr align="left" width="700" color="rgb(64, 64, 64)" size="1">

                </div>
            </div>
            
        </div>
    </div>    
    
</body>
</html>