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
   /*배너*/
    .carousel-inner img {
    margin:auto;
    margin-top:30px;
    width:1000px;
    height:400px;
    }
    /*new, 오픈예정 전시*/
    .wrapper{
        width: 1000px;
        height: 1000px;
        top: 0; left: 0; right: 0; bottom: 0; margin: auto;
        margin-top: 50px;
    }
     /* 페이지 이름 스타일 */
    .name{ width: 100%;
        width: 100%;
        font-size: 17px;
        font-weight: bolder;
    }
    /* 페이지 정렬 버튼 스타일 */
    #range{text-align: right; margin-right: 30px;}
    #range>a{
        width: 5%; 
        font-size: 10px;
        padding-top: 20px;
        text-decoration: none;
        color: black;
    }
    a:hover{font-weight: bolder;}

    .content1{
        width: 100%;
        height: 300px;
        margin: auto;
        margin-top: 20px;
        margin-bottom: 50px;
    }
    .content{
        width: 20%;
        height: 100%;
        float: left;
        margin-left: 40px;
        margin-bottom: 10px;
        margin-top: 0px;
        display: block;
    }
    .poster{
        border: 1px solid black;
        width: 100%;
        height: 75%;
        width: 100%;
        height: 80%;
    }
    .info{
        width: 100%;
        height: 25%;
    }
    .info>p{text-align: center;}
    .title{font-weight: bolder; padding-top: 10px;}
    .summary{font-size: 12px; font-weight: bolder; margin-top: -10px;}
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
            <img src="../resources/images/product/4M.jgp" alt="" width="1000" height="400">
            <div class="carousel-caption">
              <h3>Los Angeles</h3>
              <p>We had such a great time in LA!</p>
            </div>   
          </div>
          <div class="carousel-item">
            <img src="../resources/images/product/44M.gif" alt="" width="1000" height="400">
            <div class="carousel-caption">
              <h3>Chicago</h3>
              <p>Thank you, Chicago!</p>
            </div>   
          </div>
          <div class="carousel-item">
            <img src="../resources/images/product/42M.gif" alt="" width="1000" height="400">
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
    <div class="wrapper">
      <div class="name">New 전시</div>
          <div id="range">
              <a href="">더보기+</a>
          </div>
      <hr class="my-2">
      <div class="content1">
          <div class="content" id="">
              <div class="poster"></div>
              <div class="info">
                  <p class="title">
                        다모아트 특별전 : 무에서 ...
                  </p>
                  <p class="summary">
                      2021.12.01 ~ 2021.12.31<br>
                      KH강남점
                  </p>
              </div>
          </div>
          <div class="content" id="">
              <div class="poster"></div>
              <div class="info">
                  <p class="title">
                        다모아트 특별전 : 무에서 ...
                  </p>
                  <p class="summary">
                      2021.12.01 ~ 2021.12.31<br>
                      KH강남점
                  </p>
              </div>
          </div>
          <div class="content" id="">
              <div class="poster"></div>
              <div class="info">
                  <p class="title">
                        다모아트 특별전 : 무에서 ...
                  </p>
                  <p class="summary">
                      2021.12.01 ~ 2021.12.31<br>
                      KH강남점
                  </p>
              </div>
          </div>
          <div class="content" id="">
              <div class="poster"></div>
              <div class="info">
                  <p class="title">
                        다모아트 특별전 : 무에서 ...
                  </p>
                  <p class="summary">
                      2021.12.01 ~ 2021.12.31<br>
                      KH강남점
                  </p>
              </div>
          </div>
      </div>
      <br><br><br>
      <div class="name">오픈예정 전시</div>
          <div id="range">
              <a href="">더보기+</a>
          </div>
      <hr class="my-2">
      <div class="content1">
          <div class="content" id="">
              <div class="poster"></div>
              <div class="info">
                  <p class="title">
                        다모아트 특별전 : 무에서 ...
                  </p>
                  <p class="summary">
                      2021.12.01 ~ 2021.12.31<br>
                      KH강남점
                  </p>
              </div>
          </div>
          <div class="content" id="">
              <div class="poster"></div>
              <div class="info">
                  <p class="title">
                        다모아트 특별전 : 무에서 ...
                  </p>
                  <p class="summary">
                      2021.12.01 ~ 2021.12.31<br>
                      KH강남점
                  </p>
              </div>
          </div>
          <div class="content" id="">
              <div class="poster"></div>
              <div class="info">
                  <p class="title">
                        다모아트 특별전 : 무에서 ...
                  </p>
                  <p class="summary">
                      2021.12.01 ~ 2021.12.31<br>
                      KH강남점
                  </p>
              </div>
          </div>
          <div class="content" id="">
              <div class="poster"></div>
              <div class="info">
                  <p class="title">
                        다모아트 특별전 : 무에서 ...
                  </p>
                  <p class="summary">
                      2021.12.01 ~ 2021.12.31<br>
                      KH강남점
                  </p>
              </div>
          </div>
      </div>
  </div> 
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>