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
    .event_on{
        width: 100%;
        font-size: 20px;
        padding: 40px;
        text-align:center;
    }
    #event_detail{
        border:1px solid black;
        text-align: left;/*안먹혀..*/
        background-color: #ebe1cf;
    }
    img{
        float: left;
        margin: 10px;
        float: left;
    }
    .pre2{ clear: both;
        float: left;
    }

</style>
</head>
<body>


    <%@ include file="../common/menubar.jsp" %>


    <div class="wrap">

        <div class="event_on">
            <br>
            <b>EVENT</b>
            <br>
        </div>
        <hr>

        <table id="event_detail">
            <!-- table로 하니까 border없애고 자연스러운 느낌이 없어서 다르게 시도해볼 것-->
       
            <div>
            <tr style="font-size: 18px;">
                <th width="1000" height="50" colspan="3" align="left" >다모아트 sns특별공유이벤트!</th>
            </tr>
            </div>

            <tr style="font-size: 14px;">
                <td width="150" align="left">admin</td>
                <td width="750">2021-12-31</td>
                <td colspan="2" width="100" align="right">조회수 75</td>
            </tr>

            <tr>
                <td colspan="4">
                    <!-- 이미지 옆 주석같은것은 div로 따로 처리할 것-->
                    <!--이미지 썸네일 크기 따로 생각해 볼 것-->
                    <br>
                    <div class="evimage"><img src="이미지배너=>주로 전시회 이미지" width="300" height="170"></div>
                    <div>
                        <p id=>이벤트 설명??????</p>
                    <pre style="height:400px;" class="pre2">
                        다모아트 특별이벤트 다모아트 특별이벤트 
			 다모아트 특별이벤트 다모아트 특별이벤트 
			 다모아트 특별이벤트 다모아트 특별이벤트 
                        특별이벤트를 연다는 내용이들어감</pre>
                       
                    </div>
                </td>
            </tr>
            

        </table>
        <br>

       
        <!--목록버튼-->
        
        <div align="right">
            <button>목록</button>
        </div>

        <br>
    </div>
</body>
</html>