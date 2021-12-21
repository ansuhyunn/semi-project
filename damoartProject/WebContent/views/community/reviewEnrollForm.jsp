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
        width:1000px;
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
	    color:rgb(255, 255, 255);
	}
    #secretCk{
        font-size: 8px;
        text-align: right;
        margin: auto;
    }
    .persnalCheck{
        width:200px;
        height:30px;
        font-size: 10px;
       text-align: center;
       margin: auto;
        padding-top: 5px;
    }

</style>
</head>
<body>


    <%@ include file="../common/menubar.jsp" %>


     <div class="wrap">

        <br>
        <h2 align="center">리뷰등록페이지</h2> <br>

        <form action="" id="enroll-form" method="post" enctype="multipart/form-data">
			
           
			<input type="hidden" name="userNo" value="">
            <table align="center">
                <tr>
                    <td width="100">작성자</th>
                        <!-- 비회원이면 작성하고 회원이면 안에 아이디 들어가게..-->
                    <td colspan=""><input type="text" name="title" required></td>
                    <td width="80" id="secretCk"><input type="checkbox">비밀글</td>
                    <td></td>
                </tr>
                <tr>
                    <td width="100">비밀번호</th>
                    <td colspan=""><input type="password" name="title" required></td>
                    <td colspan="2" width="600">
                        <div style="float: right;">
                            <input type="checkbox">
                            <input type="checkbox">
                            <!-- 왜 라디오 버튼이나 체크박스가 여러개면 수직으로 붙지..-->
                        </div>
                    </td>
                        
                </tr>
                <tr>
                    <td width="100">티켓번호</td>
                    <td width="200"><button>선택된 상품이 없습니다</button></td>
                </tr>
                
                <tr>
                    <td>제목</td>
                    <td colspan="3">
                        <textarea rows="1" style="resize:none" name="content" required></textarea>
                    </td>
                </tr>
                <tr>
                    <td>내용</td>
                    <td colspan="3">
                        <textarea rows="16" style="resize:none" name="content" required></textarea>
                    </td>
                    
                </tr>
               <tr>
                   <td>사진 첨부</td>
                    <td><input type="file"></td>
               </tr>
            </table>

            <div align="center">
                <button>
                    리캡챠위치 <!-- 호스트를 사와서 넣는다는데..음-->
                </button>
            </div>

			<div class="persnalCheck">
				<textarea readonly style="resize:none">개인정보 수집 방침에 동의합니다.</textarea>
                <input type="checkbox"><!--이건 또 왜 아래에 붙지...-->
			</div>
           

            <br>

            <div align="right" style="margin-right: 100px;">
                <button type="reset"  class="buttons" id="reset">취소</button>
                <button type="submit" class="buttons" id="enroll">등록</button>
            </div>


        </form>

    </div>
	
</body>
</html>