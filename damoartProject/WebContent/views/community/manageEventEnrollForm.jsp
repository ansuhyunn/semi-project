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
        color:black;
        width:1000px;
        height:1000px;
        margin:auto;
        margin-top:50px;
    }
    #enroll-form table{
        border:1px solid white;
        width: 800px;
        
    }
    #enroll-form input, #enroll-form textarea{
        width:100%;
        box-sizing:border-box;
    }
</style>
</head>
<body>


	 <%@ include file="../common/menubar.jsp" %>


     <div class="wrap">

        <br>
        <h2 align="center"><다쓰면지움!! 이벤트등록페이지></h2> <br>

        <form action="" id="enroll-form" method="post" enctype="multipart/form-data">
			
            <!--admin만 식별하게끔-->
			<input type="hidden" name="userNo" value="">
            <table align="center">
                <tr>
                    <th width="100">제목</th>
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
                   <th>첨부파일 선택</th>
                    <td><input type="file"></td>
                    <!-- 이거 나중에 바꾸기 (찾아보기..뜨는거로)-->
               </tr>
            </table>


           

            <br>

            <div align="right" style="margin-right: 150px;">
                <button type="submit">취소</button>
                <button type="submit">등록</button>
            </div>


        </form>

    </div>
	
</body>
</html>