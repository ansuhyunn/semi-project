<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div{ box-sizing:border-box;}
    
    .wrap{
        background:#e1d5bf;
        color: black;
        width: 1000px;
        height: 1000px;
        margin: auto;
        margin-top: 50px;
    }
    .event-list{
        width:980px;
        margin:auto;
    }
    .banner-thumbnail{
        border:1px solid black; /*경계선 구분용--- 다하고 지울것*/
        width:450px;
        display:inline-block;
        margin:15px;
    }

    .banner-thumbnail:hover{
    	cursor:pointer;
    	opacity:0.6;
    }
    #event_on{
        width: 100%;
        font-size: 30px;
        padding: 60px;
    }

    /*더보기*/
    more_event{
    margin: auto;    /*더보기 길쭉하게 중앙으로 오도록..div로 감싸서?*/
    }
   

</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>

    <div class="wrap">
        <br>
        
        <div class="">
            <br><br>
            <b id="event_on">이벤트</b>
            <br><br>
        </div>

        <br>

        <!-- 누르면 해당하는 목록으로 보여지는 형태로..아님 ajax로 바꾸기-->
        <div align="center" style="">
            <a href="">진행중인 이벤트</a>
            <a href="">종료된 이벤트</a>
        </div>


        <hr> <!-- 잘리는 부분? 여튼 구분선-->

        <div class="event-list">

             <!-- 이벤트 배너 1개-->
             <div class="banner-thumbnail" align="center">
                 <br>
                <img scr="이미지 배너 경로" width="420" height="180">
                <p>
                    다모아트 sns 공유 특별 이벤트! <br>
                    이벤트 기간 : mm-dd ~ mm-dd
                </p>
            </div>


             <!-- 이벤트 배너 1개-->
             <div class="banner-thumbnail" align="center">
                <br>
               <img scr="이미지 배너 경로" width="420" height="180">
               <p>
                   다모아트 sns 공유 특별 이벤트! <br>
                   이벤트 기간 : mm-dd ~ mm-dd
               </p>
           </div>

           
             <!-- 이벤트 배너 1개-->
             <div class="banner-thumbnail" align="center">
                <br>
               <img scr="이미지 배너 경로" width="420" height="180">
               <p>
                   다모아트 sns 공유 특별 이벤트! <br>
                   이벤트 기간 : mm-dd ~ mm-dd
               </p>
           </div>

           
             <!-- 이벤트 배너 1개-->
             <div class="banner-thumbnail" align="center">
                <br>
               <img scr="이미지 배너 경로" width="420" height="180">
               <p>
                   다모아트 sns 공유 특별 이벤트! <br>
                   이벤트 기간 : mm-dd ~ mm-dd
               </p>
           </div>

         </div>

        <!--더보기 버튼 ajax로 해야할 것 같음+중앙정렬-->
        <button id="more_event">더보기</button>
            
  </div>
</body>

</html>