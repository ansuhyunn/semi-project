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

    #event_on{
        width: 100%;
        font-size: 20px;
        padding: 60px;
    }
</style>
</head>
<body>


    <%@ include file="../common/menubar.jsp" %>


    
    <%@ include file="../common/menubar.jsp" %>



    <div class="wrap">

        <div class="">
            <br><br>
            <b id="event_on">이벤트</b>
            <br><br>
        </div>
        <hr>

        <table id="event_detail" border="1" align="center">
            <!-- table로 하니까 border없애고 자연스러운 느낌이 없어서 다르게 시도해볼 것-->
       
            <tr style="font-size: 18px;">
                <th width="500" height="50" colspan="3" align="left" >다모아트 sns특별공유이벤트!</th>
            </tr>
            
            <tr>
                <td width="100" align="left">admin</td>
                <td width="300">2021-12-31</td>
                <td colspan="2" width="50">조회수 98</td>
            </tr>

            <tr>
                <td colspan="4">
                    <!-- 이미지 옆 주석같은것은 div로 따로 처리할 것-->
                    <!--이미지 썸네일 크기 따로 생각해 볼 것-->
                    <img scr="이미지배너=>주로 전시회 이미지" width="200" height="100">
                    <p style="height:200px;">특별이벤트를 연다는 대충 그런 어쩌고의 내용이들어감</p>
                </td>
            </tr>
            
        </table>
        <br>

       
        <!--목록버튼-->
        
        <div align="right">
            <button>목록</button>
        </div>

    </div>
</body>
</html>