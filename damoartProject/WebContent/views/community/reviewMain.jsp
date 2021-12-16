<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   
    .wrap{
        background:#e1d5bf;
        color: black;
        width: 1000px;
        height: 1000px;
        margin: auto;
        margin-top: 50px;
    }
    .review-list{
        width:980px;
        margin:auto;
    }
     /*전시회 썸네일 - 전시회 썸네일 크기 적당한 사이즈 찾을것(리사이즈)*/
    .thumbnail{
        border:1px solid black; /*경계선 구분용---다하고 지움*/
        width:210px;
        display:inline-block;
        margin:15px;
    }
    .thumbnail:hover{
    	cursor:pointer;
    	opacity:0.6;
    }

    /*상단 현재 보고있는 카테고리 표시*/
    #review_on{
        width: 100%;
        font-size: 25px;
        padding: 30px;
    }

</style>
</head>
<body>

    <%@ include file="../common/menubar.jsp" %>

    
	 
	<div class="wrap">
        <br>
        
        <div class="">
            <br><br>
            <b id="review_on">커뮤니티 > 리뷰</b> <!-- 목록 누르면 해당 페이지로 넘어가야 할까?-->
            <br><br>
        </div>

        <br>

        <div class="review-list">
        
        	
            <!--썸네일 한개-->
            <div class="thumbnail" align="center"> <!-- center 안하면 치우쳐지는데 글씨가..-->
                <br>
                <input type="hidden" value="">
                <img src="이미지경로" width="180" height="180">
                <p align=""> <!--중앙할지 좌측정렬할지..우선은 중앙-->

                   ㅇㅇㅇ전 보고왔어요~ [9]<!--[9] 댓글=> count방식으로?<<<- 찾아볼 것--> <br>
                    test01 | 2021-12-01 <br>
                </p>
            </div>

             
             <!--썸네일 한개-->
             <div class="thumbnail" align="center"> <!-- center 안하면 치우쳐지는데 글씨가..-->
                <br>
                <input type="hidden" value="">
                <img src="이미지경로" width="180" height="180">
                <p align=""> <!--중앙할지 좌측정렬할지..우선은 중앙-->
                   ㅇㅇㅇ전 보고왔어요~ [9]<!--[9] 댓글=> count방식으로?<<<- 찾아볼 것--> <br>
                    test01 | 2021-12-01 <br>
                </p>
            </div>


             <!--썸네일 한개-->
             <div class="thumbnail" align="center"> <!-- center 안하면 치우쳐지는데 글씨가..-->
                <br>
                <input type="hidden" value="">
                <img src="이미지경로" width="180" height="180">
                <p align=""> <!--중앙할지 좌측정렬할지..우선은 중앙-->
                   ㅇㅇㅇ전 보고왔어요~ [9]<!--[9] 댓글=> count방식으로?<<<- 찾아볼 것--> <br>
                    test01 | 2021-12-01 <br>
                </p>
            </div>


             <!--썸네일 한개-->
             <div class="thumbnail" align="center"> <!-- center 안하면 치우쳐지는데 글씨가..-->
                <br>
                <input type="hidden" value="">
                <img src="이미지경로" width="180" height="180">
                <p align=""> <!--중앙할지 좌측정렬할지..우선은 중앙-->
                   ㅇㅇㅇ전 보고왔어요~ [9]<!--[9] 댓글=> count방식으로?<<<- 찾아볼 것--> <br>
                    test01 | 2021-12-01 <br>
                </p>
            </div>


             <!--썸네일 한개-->
             <div class="thumbnail" align="center"> <!-- center 안하면 치우쳐지는데 글씨가..-->
                <br>
                <input type="hidden" value="">
                <img src="이미지경로" width="180" height="180">
                <p align=""> <!--중앙할지 좌측정렬할지..우선은 중앙-->
                   ㅇㅇㅇ전 보고왔어요~ [9]<!--[9] 댓글=> count방식으로?<<<- 찾아볼 것--> <br>
                    test01 | 2021-12-01 <br>
                </p>
            </div>


             <!--썸네일 한개-->
             <div class="thumbnail" align="center"> <!-- center 안하면 치우쳐지는데 글씨가..-->
                <br>
                <input type="hidden" value="">
                <img src="이미지경로" width="180" height="180">
                <p align=""> <!--중앙할지 좌측정렬할지..우선은 중앙-->
                   ㅇㅇㅇ전 보고왔어요~ [9]<!--[9] 댓글=> count방식으로?<<<- 찾아볼 것--> <br>
                    test01 | 2021-12-01 <br>
                </p>
            </div>


             <!--썸네일 한개-->
             <div class="thumbnail" align="center"> <!-- center 안하면 치우쳐지는데 글씨가..-->
                <br>
                <input type="hidden" value="">
                <img src="이미지경로" width="180" height="180">
                <p align=""> <!--중앙할지 좌측정렬할지..우선은 중앙-->
                   ㅇㅇㅇ전 보고왔어요~ [9]<!--[9] 댓글=> count방식으로?<<<- 찾아볼 것--> <br>
                    test01 | 2021-12-01 <br>
                </p>
            </div>


             <!--썸네일 한개-->
             <div class="thumbnail" align="center"> <!-- center 안하면 치우쳐지는데 글씨가..-->
                <br>
                <input type="hidden" value="">
                <img src="이미지경로" width="180" height="180">
                <p align=""> <!--중앙할지 좌측정렬할지..우선은 중앙-->
                   ㅇㅇㅇ전 보고왔어요~ [9]<!--[9] 댓글=> count방식으로?<<<- 찾아볼 것--> <br>
                    test01 | 2021-12-01 <br>
                </p>
            </div>


            <!-- 한 페이지 8개 보여지고 밑에 페이징바 넣고-->
            
         <hr>
         
        <!-- 글쓰기 우측 하단-->
        
	        <!--로그인한 회원만 보여지도록-->
	        <div align="right" style="width:950px;">
	            <a href="<%=contextPath%>/views/community/reviewEnrollForm.jsp"" class="btn btn-sm btn-secondary">글작성</a>
	            <br><br>
	        </div>
        

            <!-- 페이징바 구현-->
        <hr>

         <!-- 검색 구현-->
           
            
        </div>
    </div>

    
    
    

</body>
</html>