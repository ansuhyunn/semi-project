<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    div{ box-sizing:border-box;}
    .outer{
        width:1000px; 
        height:1050px; 
        padding:40px;
        margin-top:50px;
        margin:auto;
    }

    #outer{
        position:absolute;
        z-index:-1;
    }

    #outer>div{
        width:900px;
        height:250px;
        margin:auto;
        margin-top:40px;
        border:1px solid black;
    }

    #area>div{
        float:left;
    }
    #notice_area{
        width:430px;
        height:250px;
        background:rgb(203, 185, 153);
    }

    #call_area{
        width:430px;
        height:250px;
        margin-left:38px;
        background:rgb(203, 185, 153);
    }

</style>
<body>
	<%@ include file="../../common/menubar.jsp" %>
	<div class="outer">
        <div id="outer">

            <h4>고객센터</h4>
            <br>
            <hr>
            <div id="faq_area">
                <a href="">FAQ &gt</a>
                <table>
                    <tr>
                        <td>취소/환불</td>
                        <td>티켓 구매 취소를 하고싶어요</td>
                    </tr>
                </table>
            </div>
    
            <div id="qna_area">
                <a href="">Q&A &gt</a>
    
            </div>
    
            <div id="area">
                <div id="notice_area">
                    <a href="">공지사항 &gt</a>
        
                </div>
                <div id="call_area">
        
                </div>
            </div>
        </div>


    </div>

</body>
</html>