<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<% 
	String contextPath = request.getContextPath();
	Member loginUser = (Member)session.getAttribute("loginUser");
	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    body{background-color:#e1d5bf;}
    div{box-sizing:border-box;}
    /*상단header*/
    #header{
            width:100%;
            height:150px;
            background:rgb(203, 185, 153);
            margin:auto;
            position:absolute;
            top:0;
            left:0;
            right:0;
    }

    #home_btn{
        margin:auto;
        margin-top:20px;
        margin-right:20px;
    }

    #home_btn>a{
        background-color:rgb(151, 138, 116);
        color:white;
    }

    #logo_img{
        margin:auto;
        margin-left:20px;       
    }
    /*좌측 메뉴바*/

    #left_menubar{
        margin:auto;
        width:200px;
        background:rgb(151, 138, 116);
        position:absolute;
        left:0;
        top:150px;
        height:1300px;
    }   


    .sub ul{
        list-style-type:none;
        padding-left:30px;
        font-weight:400;
        font-size:16px;
    }
    

    .sub{
        /* display:none; */
    }

    .home>a{
        text-decoration:none;
        font-weight:900;
        font-size:25px;
        color:rgb(64, 64, 64);
        height:50px;
        line-height:50px;
        padding-left:30px;
    }

    .menu{
        font-weight:800;
        font-size:20px;
        color:rgb(64, 64, 64);
        height:50px;
        line-height:50px;
        padding-left:30px;
    }
    .sub ul a{
        text-decoration:none;
        font-weight:500;
        color:rgb(228, 220, 207);
        height:30px;
        line-height:30px;
        display:block;
    }

    /*
    .menu:hover{
        cursor:pointer;
        color:rgb(228, 220, 207);
    }
    */
    .home>a:hover{
        cursor:pointer;
        color:rgb(228, 220, 207);
    }
    

    .sub a:hover{
        color:rgb(64, 64, 64);
    }


</style>
</head>
<body>
	<% if(alertMsg != null) { %>
		<script>
			alert("<%=alertMsg%>");
		</script>
		<% session.removeAttribute("alertMsg"); %>
	<% } %>
    <div class="wrap">
        <!--상단 header부분-->
        <div id="header">
            <div id="home_btn" align="right">
                <a href="<%=contextPath%>" class="btn btn-sm">damoart home</a>
            </div>
            <div id="logo_img" align="left">
                <table>
                    <tr>                        
                        <th><img src="<%=contextPath%>/resources/images/logo.png" width="250px" height="50px"></th>
                        <th><i class="fas fa-cogs fa-3x"></i></th>
                    </tr>
                </table>                
            </div>
        </div>
        <!--좌측 메뉴바-->
        <div id="left_menubar">
            <br>
            <div class="home"><a href="<%=contextPath%>/adminMain.ad">HOME</a></div>
            <div class="menu">회원 관리</div>
            <div class="sub">
                <ul>
                    <li><a href="<%=contextPath%>/mngmem.me?cpage=1">회원 목록</a></li>
                </ul>
            </div>
            <div class="menu">상품 관리</div>
            <div class="sub">
                <ul>
                	<li><a href="<%=contextPath%>/managelist.man?cpage=1">전체 상품 관리</a></li>
                    <li><a href="<%=contextPath%>/manageIng.man?cpage=1">진행중 상품 관리</a></li>
                    <li><a href="<%=contextPath%>/managePre.man?cpage=1">오픈예정 상품 관리</a></li>
                </ul>
            </div>
            <div class="menu">현황 관리</div>
            <div class="sub">
                <ul>
                    <li><a href="<%=contextPath%>/order.mg">주문 내역 관리</a></li>
                    <li><a href="<%=contextPath%>/cancel.mg">취소 관리</a></li>
                    <li><a href="<%=contextPath%>/sales.mg">판매 현황</a></li>
                </ul>
            </div>
            <div class="menu">리뷰 관리</div>
            <div class="sub">
                <ul>
                    <li><a href="<%=contextPath%>/manageList.rv?cpage=1">리뷰 목록</a></li>
                </ul>
            </div>
            <div class="menu">고객센터 관리</div>
            <div class="sub">
                <ul>
                    <li><a href="<%=contextPath%>/adminList.no?cpage=1">공지사항 관리</a></li>
                    <li><a href="<%=contextPath%>/adminList.fa?cpage=1">FAQ 관리</a></li>
                    <li><a href="<%=contextPath%>/adminList.qa?cpage=1">Q&A 관리</a></li>
                    <li><a href="<%=contextPath%>/adminList.gu?cpage=1">이용안내 관리</a></li>
                </ul>
            </div>
            <br><br><br><br>
        </div>
        <!--
        <script>
            $(function(){
                $(".menu").click(function(){
                    const $sub = $(this).next();

                    if($sub.css("display") == "none"){
                        $(this).siblings(".sub").hide();

                        $sub.show();
                    }else{
                        $sub.hide();
                    }
                })
            })

        </script>
        -->

    </div>
</body>
</html>