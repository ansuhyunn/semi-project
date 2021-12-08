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
div{ box-sizing:border-box; }
    .wrapper{
        width: 800px;
        height: 1000px;
    }   
    table{
        margin: 0 auto;
        width: 600px;
        text-align: center;
    }
    th{font-size: 13px;}
    td{font-size: 10px;}
    a{margin: 0 auto;}


</style>

</head>
<body>
    <div class="wrapper">

        <table border="1px">

            <tr style="background-color: lightgrey;">
                <th>&nbsp;&nbsp;&nbsp;</th>
                <th>No</th>
                <th>상품코드</th>
                <th>등록날짜</th>
                <th>Title</th>
                <th>지역</th>
                <th>장소</th>
                <th>시간</th>
                <th>시작일</th>
                <th>종료일</th>
                <th>품절여부</th>
            </tr>
            <% for(Product p : list) %>
            <tr>
                <td><input type="checkbox"></td>
                <td><%=  %></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>

        <a href="" class="btn btn-sm ">등록</a>
        <a href="" class="btn btn-sm ">수정</a>
        <a href="" class="btn btn-sm ">삭제</a>

    </div>
    

</body>
</html>