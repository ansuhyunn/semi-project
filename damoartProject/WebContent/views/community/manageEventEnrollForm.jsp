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
    .wrap{
        background:#e1d5bf;
        color:black;
        width:900px;
        height:auto;
        margin:auto;
        margin-top: 150px;
        
    }
    #enroll-form table{
        
        width: 800px;
        
    }
    .buttons>div{float:left;}
	.buttons{width:80px; height:40px; position:relative;}
    #enroll-form input, #enroll-form textarea{
        width:100%;
        box-sizing:border-box;
    }
    #reset{
	    background-color:rgb(203, 185, 153);
	    color:rgb(64, 64, 64);
	    font-weight:bold;
	}
	#enroll{
	    background-color:rgb(151, 138, 116);
	    color:white;
	}
    th{
        text-align: left;
        padding-left: auto;
    }
</style>
</head>
<body>


    <%@ include file="../common/manageMenubar_2.jsp" %>


     <div class="wrap">

        <br>
        <h2 align="center"><이벤트등록페이지></h2> <br>

        <form action="" id="enroll-form" method="post" enctype="multipart/form-data">
			
           
			<input type="hidden" name="userNo" value="">
            <table align="center">
                <tr>
                    <th width="100" >제목</th>
                    <td colspan="3"><input type="text" name="title" required></td>
                </tr>
                <tr>
                    <th width="100">기간 설정</th>
                    <td width="100"><input type="date" name="startday" required></td>
                    <td width="100"><input type="date" name="endday" required></td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td colspan="3">
                        <textarea rows="20" style="resize:none" name="content" required></textarea>
                    </td>
                </tr>
               <tr>
                   <th>배너 이미지 등록</th>
                    <td><input type="file"></td>
               </tr>
            </table>

			<hr>
           

            <br>

            <div align="right" style="margin-right: 100px;">
                <button type="reset"  class="buttons" id="reset">취소</button>
                <button type="submit" class="buttons" id="enroll">등록</button>
            </div>


        </form>

    </div>
	
</body>
</html>