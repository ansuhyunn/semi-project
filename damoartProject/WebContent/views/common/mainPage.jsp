<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
   /*배너*/
    .carousel-inner img {
    margin:auto;
    margin-top:30px;
    width:1000px;
    height:500px;
    }
    .carousel-control-prev-icon{margin-left:200px;}
    .carousel-control-next-icon{margin-right:200px;}
    
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
          	<a href="<%=request.getContextPath()%>/detail.pro?num=11">
            	<img src="<%=request.getContextPath() %>/resources/product/11M.gif" alt="banner1">
            </a>
          </div>
          <div class="carousel-item">
          	<a href="<%=request.getContextPath()%>/detail.pro?num=4">
            	<img src="<%=request.getContextPath() %>/resources/product/4M.gif" alt="banner2">
            </a>
          </div>
          <div class="carousel-item">
          	<a href="<%=request.getContextPath()%>/detail.pro?num=6">
            	<img src="<%=request.getContextPath() %>/resources/product/6M.gif" alt="banner3">
            </a>
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
	
	<!--new, 오픈예정 전시 -->
	
    <div class="wrapper">
    
      <div class="name">New 전시</div>
          <div id="range">
              <a href="<%=contextPath%>/ing.pro?cpage=1">더보기+</a>
          </div>
      <hr class="my-2">
      <div class="content1" id="newContent">

	  </div>

           
	  <!-- 전시 조회 -->
      <script>
             $(function(){
                 selectNewList();
             })

             function selectNewList(){
                 $.ajax({
                     url:"nlist.ma",
                     success:function(nlist){
                         let result = "";
                         for(let i=0; i<nlist.length; i++){
                             result += "<div class='content'>"
                           	  	  +	"<div class='poster'>"
                           	  	  	+"<a href='detail.pro?num=" + nlist[i].pNo + "'>"
   	        						  + "<img src='"+ nlist[i].mainImg + "' width='100%' height='100%'>"
   	        						+"</a>"
   	        					  + "</div>"
   	        					  + "<div class='info'>"
   	        						  + "<p class='title'>"
   	        						  +	nlist[i].title + "</p>"
   	        						  + "<p class='summary'>"
   	        						  +	nlist[i].sDate + " ~ " + nlist[i].eDate + "<br>"
                                         + nlist[i].area
                                         + "</p>"
   	        					  + "</div>"
   	        					  +"</div>";
                         }
                         $("#newContent").html(result);
                     },error:function(){
                         console.log("new전시 조회용 ajax 통신 실패");
                     }
                 })             
             }
      
      </script>
  
    	    				
      <!-- 오픈예정 전시 조회 -->
      <br><br><br>
      <div class="name">오픈예정 전시</div>
          <div id="range">
              <a href="<%=contextPath%>/pre.pro?cpage=1">더보기+</a>
          </div>
      <hr class="my-2">
      <div class="content1" id="preContent">
          
      </div>  
          
      <script>
             $(function(){                
                 selectPreList();
             })

             function selectPreList(){
                 $.ajax({
                     url:"plist.ma",
                     success:function(plist){
                         let result = "";
                         for(let i=0; i<plist.length; i++){
                             result += "<div class='content'>"
                           	  	  +	"<div class='poster'>"
                           	  	  	+"<a href='detail.pro?num=" + plist[i].pNo + "'>"
   	        						  + "<img src='"+ plist[i].mainImg + "' width='100%' height='100%'>"
   	        						+"</a>"
   	        					  + "</div>"
   	        					  + "<div class='info'>"
   	        						  + "<p class='title'>"
   	        						  +	plist[i].title + "</p>"
   	        						  + "<p class='summary'>"
   	        						  +	plist[i].sDate + " ~ " + plist[i].eDate + "<br>"
                                         + plist[i].area
                                         + "</p>"
   	        					  + "</div>"
   	        					  +"</div>";
                         }
                         $("#preContent").html(result);
                     },error:function(){
                         console.log("예정전시 조회용 ajax 통신 실패");
                     }
                 })             
             }           
      </script>
      
  </div>
  <br><br> 
    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>