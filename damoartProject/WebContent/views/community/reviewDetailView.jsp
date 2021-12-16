<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    #review_on{
        width: 100%;
        font-size: 20px;
        padding: 60px;
    }
</style>

</head>
<body>


    <%@ include file="../common/menubar.jsp" %>



    <div class="wrap">

        <div class="">
            <br><br>
            <b id="review_on">전시 후기</b>
            <br><br>
        </div>
        <hr>

        <table id="review_detail" border="1" align="center">
            <!-- table로 하니까 border없애고 자연스러운 느낌이 없어서 다르게 시도해볼 것-->
       
            <tr style="font-size: 16px;">
                <th width="350" colspan="2" align="left" >다모아트 특별기획전 후기</th>
                <td width="100" colspan="2" height="50" align="center">ㅇㅇㅇㅇㅇ</td>
            </tr>
            
            <tr>
                <td width="100" align="left">test01</td>
                <td width="300">2021-12-31</td>
                <td colspan="2" width="50">조회수 98</td>
            </tr>

            <tr>
                <td colspan="4">
                    <!-- 이미지 옆 주석같은것은 div로 따로 처리할 것-->
                    <!--이미지 썸네일 크기 따로 생각해 볼 것-->
                    <img src="전시회 이미지" width="120" height="100">
                    <p style="height:200px;">리뷰내용 작성자가 쓴 글이 들어갈 부분</p>
                </td>
            </tr>
            
        </table>
        <br>

        <!--신고버튼-->
        <button>신고</button>
        <!--글쓴이라면 삭제버튼도-->
        <button>삭제</button>
        <hr>
        <p>
        	test01 | ㅇㄴㅇㄴㅀㅎㄴㄹㅇㅎㄴㄹㅇㅎㄴㅇㅀㄴㅇㄹ  <br>
        	작성일~~~~~ (신고아이콘) (삭제아이콘)
        </p>
        <p>
        	test01 | ㄹㅇㅎㄹㅇㅎㄴㅇㅀㅇㄹㄶㄹㅇ <br>
        	작성일~~~~~~ 
        </p>
        <hr>
        <div align="center">
        <textarea name="" id="" cols="100" rows="6"></textarea>
        <button>작성하기</button>
        </div>
        <!-- 댓글 ajax-->
        <!--목록버튼-->
        
        <div align="right">
            <button>목록</button>
        </div>

    </div>
</body>
</html>