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
            margin-top:100px;
            height:700px;
        }
        ul.tabs{
            list-style:none;
            padding:0px;
            margin:0px;
            font-weight:bold;
        }
        ul.tabs li{
            width:197px;
            height:45px;
            box-sizing:border-box;
            background:#e1d5bf;
            display:inline-block;
            border-radius:3px;
            line-height:45px;
            text-align:center;
            cursor:pointer;
        }
        ul.tabs li.current{
            background: rgb(245, 236, 220);
        }
        .tab-loginform{
            display:none;
        }
        .tab-loginform.current{
            display:inherit;
        }
        #tab-1-etc>a{
            text-decoration:none;
            color:black;
            padding:10px;
            font-size:13px;
        }
        .input{
            border:1px solid lightgray;
            border-radius:3px;
            width:400px;
            height:45px;
            background:rgb(245, 236, 220);
        }
        .btn-mem{
            width:400px;
            height:45px;
            border:none;
            border-radius:3px;
            background:rgb(203, 185, 153);
            font-weight:bold;
        }
    </style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
    
    <div class="outer">
        <h2 align="center" style="font-weight:bold;"> LOGIN </h2>
        <br><br>
        <!--탭-->
        <ul class="tabs" align="center">
            <li class="tab-login current" data-tab="tab-1">회원 로그인</li>
            <li class="tab-login" data-tab="tab-2">비회원 주문조회</li>
        </ul>

        <!--회원 로그인-->
        <div id="tab-1" class="tab-loginform current">
            <form action="<%=contextPath%>/memlogin.me" method="post" class="inputlogin">
                <div align="center">
                    <input type="text" class="input" name="memId" placeholder="아이디" required> <br>
                    <input type="password" class="input" name="memPwd" placeholder="비밀번호" required> <br><br>
                    <div class="form-group form-check">
                        <label class="form-check-label" id="checkId" style="margin-left:-290px;">
                          <input class="form-check-input" type="checkbox"> 아이디 저장
                        </label>
                    </div>
                </div>
                
                <div align="center">    
                    <button type="submit" class="btn-mem">로그인</button> <br><br>
                </div>    
            </form>
        </div>

        <!--비회원 주문조회-->
        <div id="tab-2" class="tab-loginform">
            <form action="" method="post" align="center">
                        <input type="text" class="input" name="phone" placeholder="휴대전화번호" required> <br>
                        <input type="password" class="input" name="orderNum" placeholder="주문번호" required> <br><br>
                        <button type="submit" class="btn-mem">주문조회</button> <br><br>
            </form>
        </div>
        <hr style="width:30%;">
        <!--하단-->
        <div id="tab-1-etc" class="tab-loginform-etc" align="center">
            <a href="">아이디 찾기</a>
            <a href="">비밀번호 찾기</a>
            <a href="<%=contextPath%>/agreement.me">회원가입</a>
        </div>

    </div>

    <script>
        $(document).ready(function(){
            $('ul.tabs li').click(function(){
                var tab_id=$(this).attr('data-tab');

                $('ul.tabs li').removeClass('current');
                $('.tab-loginform').removeClass('current');

                $(this).addClass('current');
                $("#"+tab_id).addClass('current');
            })
        })
    </script>
    
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>