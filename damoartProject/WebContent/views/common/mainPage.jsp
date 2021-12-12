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
    .carousel-inner img {
    margin:auto;
    margin-top:30px;
    width:1000px;
    height:400px;
    }
    .outer{
        width:1000px;
        height:800px;
        margin:auto;
        margin-top:50px;
    }
    .list-area{
        width:1100px;
        margin:auto;
    }
    .thumbnail{
        width:300PX;
        height:300px;
        display:inline-block;
        margin-right:45px;
    }

</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>

    <div id="demo" class="carousel slide" data-ride="carousel" align="center">
        <ul class="carousel-indicators">
          <li data-target="#demo" data-slide-to="0" class="active"></li>
          <li data-target="#demo" data-slide-to="1"></li>
          <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="../../resources/images/product/4M.gif" alt="" width="1000" height="400">
            <div class="carousel-caption">
              <h3>Los Angeles</h3>
              <p>We had such a great time in LA!</p>
            </div>   
          </div>
          <div class="carousel-item">
            <img src="../../resources/images/product/44M.gif" alt="" width="1000" height="400">
            <div class="carousel-caption">
              <h3>Chicago</h3>
              <p>Thank you, Chicago!</p>
            </div>   
          </div>
          <div class="carousel-item">
            <img src="../../resources/images/product/42M.gif" alt="" width="1000" height="400">
            <div class="carousel-caption">
              <h3>New York</h3>
              <p>We love the Big Apple!</p>
            </div>   
          </div>
        </div>
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
          <span class="carousel-control-next-icon"></span>
        </a>
      </div>
      <br>

    <!--new, 오픈예정 전시 썸네일-->
    <div class="outer">
		<strong>NEW 전시</strong>
        <hr>
        <div class="list-area">
        
            <!--썸네일 한개-->
            <div class="thumbnail" align="center">
                <img src="대표이미지경로" width="300" height="220">
                <p>
                    No.20 제목입니다 <br>
                    조회수 : 230
                </p>
            </div>

            <!--썸네일 한개-->
            <div class="thumbnail" align="center">
                <img src="대표이미지경로" width="300" height="220">
                <p>
                    No.20 제목입니다 <br>
                    조회수 : 230
                </p>
            </div>

            <!--썸네일 한개-->
            <div class="thumbnail" align="center">
                <img src="대표이미지경로" width="300" height="220">
                <p>
                    No.20 제목입니다 <br>
                    조회수 : 230
                </p>
            </div>
            <br><br><br><br>
        </div>    
        
        <strong>오픈예정 전시</strong>    
        <hr>
        <div class="list-area">
            <!--썸네일 한개-->
            <div class="thumbnail" align="center">
                <img src="대표이미지경로" width="300" height="220">
                <p>
                    No.20 제목입니다 <br>
                    조회수 : 230
                </p>
            </div>
            <div class="thumbnail" align="center">
                <img src="대표이미지경로" width="300" height="220">
                <p>
                    No.20 제목입니다 <br>
                    조회수 : 230
                </p>
            </div>
            <div class="thumbnail" align="center">
                <img src="대표이미지경로" width="300" height="220">
                <p>
                    No.20 제목입니다 <br>
                    조회수 : 230
                </p>
            </div>                       
        </div>
    </div>

    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>