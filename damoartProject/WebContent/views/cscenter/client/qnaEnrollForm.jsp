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
    div{ box-sizing:border-box;}
    

    #outer{
		/* border:1px solid black; */
        width:1000px; 
        height:auto; 
        padding:40px;
        margin:auto;
    }

    #outer>a{
        color:rgb(64, 64, 64);
    }


    #enroll-form table input, #enroll-form textarea{
        width:100%;
        box-sizing:border-box;
    }
    th{
        height:40px;
        background:rgb(203, 185, 153);
    }

    #button{
        width:83%;
    }

    #cancel{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }

    #insert{
        background-color:rgb(151, 138, 116);
        color:white;
    }

    #enroll-tb{
        border:1px solid rgb(173, 157, 128);
    }

    #secret{
        
    }

    #button{
        text-align:right;
    }

    #pwd{
        background:rgb(203, 185, 153);
        font-weight: 700;
    }


</style>
</head>
<body>
    <%@ include file="../../common/menubar.jsp" %>

    <div id="outer">
        <a href="">고객센터</a>&gt<a href=""><b>Q&A</b></a>
        <br><br>
		<h4 style="font-weight:bolder;" align="center">Q&A</h4>
        <br>
        <hr>
        <br><br>
        <div id="inner" align="center">
            <form id="enroll-form" action="<%=contextPath%>/insert.qa" method="post" enctype="multipart/form-data">
                <table id="enroll-tb">
                    <tr style="border-bottom:1px solid rgb(173, 157, 128); border-top:1px solid rgb(173, 157, 128)">
                        <th width="120">&nbsp;&nbsp;&nbsp;제목</th>
                        <td width="700" colspan="3"><input type="text" size="80" required name="title"></td>
                    </tr>
                    <tr>
                        <th>&nbsp;&nbsp;&nbsp;분류</th>
                        <td colspan="3">
                            <select name="category" id="">
                                <option value="Q1">티켓</option>
                                <option value="Q2">취소/환불</option>
                                <option value="Q3">주문/결제</option>
                                <option value="Q4">상품</option>
                                <option value="Q5">기타</option>
                            </select>
                        </td>
                    </tr>
                    <tr style="border-bottom:1px solid rgb(173, 157, 128); border-top:1px solid rgb(173, 157, 128)">
                        <th >&nbsp;&nbsp;&nbsp;상품선택</th>
                        <td colspan="3">
                            <button>상품 선택</button>
                        </td>
                    </tr>
                    <% if(loginUser != null) {%>  
            			<input type="hidden" name="memNo" value="<%=loginUser.getMemNo()%>"> 
                    <% }else { %>
	                    <tr>
	                        <th>&nbsp;&nbsp;&nbsp;작성자</th>
	                        <td><input type="text"></td>
	                        <td id="pwd">&nbsp;&nbsp;&nbsp;비밀번호</td>
	                        <td><input type="text"></td>
	                    </tr>
                    <% } %>
                    <tr style="border-bottom:1px solid rgb(173, 157, 128); border-top:1px solid rgb(173, 157, 128)">
                        <th>&nbsp;&nbsp;&nbsp;첨부 파일</th>
                        <td colspan="3"><input type="file" name="upfile1"></td>
                    </tr>

                    <tr style="border-bottom:1px solid rgb(173, 157, 128)">
                        <th>&nbsp;&nbsp;&nbsp;내용</th>
                        <td colspan="3"><textarea name="content" id=""rows="20" required style="resize:none;"></textarea></td>
                    </tr>
                </table>
                <br>
                <div id="button" align="right">
                    <input id="secret" type="checkbox" sytle="">비밀글 <br><br>
                    <a href="<%=contextPath%>/list.qa?cpage=1" class="btn btn-sm" id="cancel">취소하기</a>
                    <button type="submit" class="btn btn-sm" id="insert">등록하기</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>