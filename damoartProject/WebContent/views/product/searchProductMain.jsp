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
        width: 1000px;
        height: 1000px;
        top: 0; left: 0; right: 0; bottom: 0; margin: auto;
        margin-top: 50px;
    }
	.option{
		width: 100%;
		height: 300px;
		margin-top: 35px;
		margin-bottom: 50px;
	}
    .name{
        width: 100%;
        font-size: 28px;
        font-weight: bolder;
        text-align: center;
		margin-bottom: 20px;
	}
	.op{
		float: left;
		margin-left: 80px;
		width: 150px;
		height: 100%;
	}
	#title{
		width: 100%;
		font-size: 24px;
		font-weight: bolder;
		text-align: center;
	}
	.op>div{
		width: 100%;
		height: 70%;
		font-size: 18px;
		text-align: center;
		background-color: rgb(151, 138, 116);
	}
	.op>div>button{
		border: none;
		background-color: rgb(151, 138, 116);
		font-weight: bolder;
	}
	.op_each1>button{
		font-size: 18px;
		margin-top: 25px;
	}
	.op_each2>button{
		font-size: 18px;
		margin: 3.3px;
	}
	.op_each3>button{
		font-size: 18px;
		margin: 5px;
		margin-top: 10px;
	}
	.op_each4>button{
		font-size: 18px;
		margin: 10px;
		margin-top: 12px;
	}
	button:hover{color: whitesmoke;}

</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	
	<div class="wrapper">
		<div class="name">전시 검색</div>
		<hr class="my-2">
		<form action="">
			<div class="option" >
				<div class="op" >
					<p id="title">날짜</p>
					<div class="op_each1">
						<button class="op1">오늘</button>
						<button class="op1">1주일 이내</button>
						<button class="op1">1달 이내</button>
					</div>
				</div>
				<div class="op">
					<p id="title">지역</p>
					<div class="op_each2">
						<button class="op1">서울</button>
						<button class="op1">경기/인천</button>
						<button class="op1">강원/충청</button>
						<button class="op1">전라도</button>
						<button class="op1">경상도</button>
						<button class="op1">제주도</button>
					</div>
				</div>
				<div class="op">
					<p id="title">가격</p>
					<div class="op_each3">
						<button class="op1" >무료</button>
						<button class="op1" >10000원 이하</button>
						<button class="op1" >10000원 ~ 20000원</button>
						<button class="op1">20000원 이상</button>
					</div>
				</div>
				<div class="op">
					<p id="title">연령</p>
					<div class="op_each4"> 
						<button class="op1">전체관람</button>
						<button class="op1">유아동</button>
						<button class="op1">청소년</button>
						<button class="op1">성인</button>
					</div>
				</div>
			</div>	
		</form>

		<button type="submit" class="btn btn-block" style="background-color: rgb(151, 138, 116);"> 검색하기</button>
	</div>
	
	<%@ include file="../common/footerbar.jsp" %>

</body>
</html>