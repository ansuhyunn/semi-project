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
	div{ box-sizing:border-box; }
	.wrapper{
        width:1300px; 
        height:auto; 
        padding:20px;
        margin:auto;
        margin-top:200px;
        margin-left:230px;
    }  
	.wrapper>a{
        color:rgb(64, 64, 64);
    }
	.name>h4{
		font-weight: bolder;
	}
    #list-area{
    	width: 1200px;
    	margin-left: auto;
    	margin-right: 150px;
    }
	.header{width:100%; height:40px; position:relative;}
    .header>div{float:left;}
    .header a{
        background-color:rgb(151, 138, 116);
        color:white;
    }
	.button{
		margin-left: 850px;
	}
	#enroll{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }
    #delete{
        background-color:rgb(151, 138, 116);
        color:white;
    }
	#list-area *{
		text-align: center;
	}
    thead{
        background:rgb(207, 206, 206);
        font-size:12px;
    }
    #list-area>tbody{
        background:white;
        font-size:12px;
    }
     #list-area>tbody>tr:hover{
    	background:rgb(240, 239, 239);
    	cursor:pointer;
    }
</style>

</head>
<body>

    <%@ include file="../../common/manageMenubar_2.jsp" %>

    <div class="wrapper">
        <div class="name">
			<h4>BEST상품 관리</h4>
			<br>
		</div>
        <hr class="my-2">
        <div class="header">
			<div class="search" width="50%">
				<form action="">
					<input type="text">
					<a href="" class="btn btn-sm">검색</a>
				</form>
			</div>
			<div class="button">
				<a href="<%= contextPath %>/" class="btn btn-sm" id="week">주간</a>
				<a href="<%= contextPath %>/" class="btn btn-sm" id="month">월간</a>
			</div>
		</div>
        
    </div> 
    
    <%@ include file="../common/footerbar.jsp" %>
    
</body>
</html>