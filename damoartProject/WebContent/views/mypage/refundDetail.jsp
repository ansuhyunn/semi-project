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

    #content_1 h2{
        padding: 5px 0 20px 1px;
		letter-spacing:-1px;
        font-size:28px;
        font-weight:700;
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
        height:25%;
        padding-top:15px;
        padding-left:30px;
    }

    /*예매내역*/
    .order_box{
        margin:auto;
        width:765px; 
        height:120px;
        border-radius:10px;
        position:absolute;
    }
    
    /*찜한상품, qna내역이 없을 경우*/
    #exclamationmark_icon{
    	padding-left:345px;
        padding-top:35px;
    }

    .order_view{
        color:#666;
        text-decoration:none;
    }

    #step_li{
        float:left;
        position:relative;
        width:29%;
        height:100px;
        margin:auto;
        margin-top:10px;
    }

    em{
        top:25px;
        color:#888;
        font-style:normal;
        font-size:50px;
        line-height:50px;
        font-weight:500;
        padding-left:140px;
    }
    span{
        color: #666;
        font-size:16px;
        line-height:40px;
        margin-left:120px;
    }

    /*예매날짜*/
    .order_date{
        margin:auto;
        margin-left:30px;
        width:765px; 
        height:110px;
        border-radius:10px;
        position:absolute;
    }

    .order_date>p{
        float:left;
        font-size:14px;
        font-weight:bold;
        margin-left:20px;
        margin-top:20px;
        margin-right:20px;
        letter-spacing: -0.5px;
    }

    .select_date>li{
        float:left;
        width:auto;
        height:28px;
        margin-left:5px;
        margin-top:15px;
    }

    .select-range{
        width:700px;
        padding-left:20px;
    }

    .select-btn{
        width:50px;
        float:right;
        margin-top:-30px;
    }
    #date_btn:focus{
        background:rgb(182, 167, 141);
        color:white;
    }


    .test{
        padding-left:100px;
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
                    <a href="<%=request.getContextPath() %>/views/mypage/refundDetail.jsp" id="submenu" style="color:rgb(151, 138, 116)">취소/환불 내역</a> <br>
                    <a href="<%=request.getContextPath() %>/views/mypage/pointCheck.jsp" id="submenu">적립금 내역</a> <br>
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
                    <a href="" id="submenu">회원정보 수정</a> <br>
                    <a href="" id="submenu">회원 탈퇴</a> <br>
                </div>
            </ul>
        </div>
        <div id="content_2">
            <div class="contents">
                <h4 class="contents_tit">취소/환불 내역</h4><br>
                <div class="order_box" style="background:rgba(255, 255, 255, 0.45)">
                <a href="" class="order_view">
                    <ul class="order-step">
                        <li id="step_li">
                            <em> 0 </em><br>
                            <span>입금대기</span>
                        </li>
                        <li>
                        	
                        </li>
                        <li id="step_li">
                            <em> 0 </em><br>
                            <span>결제완료</span>
                        </li>
                        <li id="step_li">
                            <em> 0 </em><br>
                            <span>예매확정</span>
                        </li>
                    </ul>
                </a>    
                </div>
            </div>

            <div class="order_date" style="background:rgba(255, 255, 255, 0.74)">
                <p>예매기간</p>
                <ul class="select_date">
                    <li>
                        <button type="button" id="date_btn1">일주일</button>
                    </li>
                    <li>
                        <button type="button" id="date_btn2">1개월</button>
                    </li>
                    <li>
                        <button type="button" id="date_btn3">3개월</button>
                    </li>
                    <li>
                        <button type="button" id="date_btn4">6개월</button>
                    </li>
                </ul>
                <br><br>
                <div class="test" style="">
                  <!--   <input type="date" id="start" name="select-start" value="" min="2020-01-01"> ~
                    <input type="date" id="end" name="select-end" value="" max="2022-12-31"> -->
       			<input type="text" id="datepicker1">
        		<input type="text" id="datepicker2">
   				 </p>
                </div>
                <div class="select-btn" align="left">
                    <div calss="click"value="조회"></button>
                </div>
                <div>
                
                </div>
            </div class="">
            
    
            </div>

            
        </div>



    
    </div>

    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">


    $(function() {
        $("#datepicker1,#datepicker2").datepicker({
            changeMonth: true,
            changeYear: true,
            minDate: '-50y',
            maxDate: '+50y',
            showMonthAfterYear: true, 
            dateFormat: 'yy-mm-dd',
        showAnim : "slide"
           
        });
        
        function click() {
    alert($("#datepicker1"));
    
    
    
        }
    
    });
    
    
</script>

