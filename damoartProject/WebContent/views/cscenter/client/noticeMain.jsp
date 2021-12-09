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

        width:1000px; 
        height:1050px; 
        padding:40px;
        margin:auto;
    }

    #list-area{
        text-align:center;
    }
    
    .search-area>a{
        background-color:rgb(151, 138, 116);
        color:white;
    }

    thead{
        background:rgb(203, 185, 153);
    }

    #outer>a{
        text-decoration:none;
        color:rgb(64, 64, 64);
    }


</style>
</head>
<body>
	<%@ include file="../../common/menubar.jsp" %>
	
        <div id="outer">
            <a href="">고객센터</a>&gt<a href=""><b>공지사항</b></a>
            <br>
            <br><br>
			<h4 style="font-size: 23px; font-weight: bolder;">공지사항</h4>
            <br>
            <hr>
            <br><br>
            <div>
                <table align="center" id="list-area" class="table table-hover">
                    <thead>
                        <tr>
                            <th width="70">번호</th>
                            <th width="300">제목</th>
                            <th width="100">작성자</th>
                            <th width="100">등록일</th>
                            <th width="100">조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>1</th>
                            <th>damoart사이트 오픈</th>
                            <th>관리자</th>
                            <th>2021/12/12</th>
                            <th>0</th>
                        </tr>
                        <tr>
                            <th>1</th>
                            <th>damoart사이트 오픈</th>
                            <th>관리자</th>
                            <th>2021/12/12</th>
                            <th>0</th>
                        </tr>
                        <tr>
                            <th>1</th>
                            <th>damoart사이트 오픈</th>
                            <th>관리자</th>
                            <th>2021/12/12</th>
                            <th>0</th>
                        </tr>
                        <tr>
                            <th>1</th>
                            <th>damoart사이트 오픈</th>
                            <th>관리자</th>
                            <th>2021/12/12</th>
                            <th>0</th>
                        </tr>
                        <tr>
                            <th>1</th>
                            <th>damoart사이트 오픈</th>
                            <th>관리자</th>
                            <th>2021/12/12</th>
                            <th>0</th>
                        </tr>
                    </tbody>
                </table>
                <br><br>
                <div class="paging-area" align="center">
                    페이징처리
                </div>
                <br>
                <div class="search-area" align="center">
                    <select name="" id="">
                        <option value="">제목</option>
                        <option value="">내용</option>
                    </select>
                    <input type="text">
                    <a href="" class="btn btn-sm">검색</a>
                </div>
            </div>
           
        </div>

        

    <%@ include file="../../common/footerbar.jsp" %>

</body>
</html>