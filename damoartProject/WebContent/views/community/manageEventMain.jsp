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
	    body{
	        background:#e1d5bf;
	    }
	    .outer{
	        width:900px; 
	        margin:auto;
	        margin-top:150px;
	        margin-left:250px;
	    }
	    #outer>a{
	    color:rgb(64, 64, 64);
	    }
	    thead{background:rgb(207, 206, 206);}
	    tbody{background:white;}
	    .buttons>div{float:left;}
	    .buttons{width:100%; height:40px; position:relative;}
		.up_button{
	        position:absolute;
			padding-right: 120px;
	        right:0;
	    }
	    .under_button{
	        position:absolute;
			padding-right: 120px;
	        right:0;
	    }
		
	    #update{
	        background-color:rgb(203, 185, 153);
	        color:rgb(64, 64, 64);
	        font-weight:bold;
	    }
	    #enroll, #delete, #search{
	        background-color:rgb(151, 138, 116);
	        color:white;
	    }
	    .point{
	        text-align:center;
	        font-weight:bold;
	        margin-left:5px;
	    }
	</style>
</head>
<body>
	<%@ include file="../common/manageMenubar_2.jsp" %>

    <div class="outer">
        <br><br>
		<h4 style="font-weight:bold;">EVENT 관리</h4>
        <br>
        <hr>

	            <div class="up_button" >
	                <a href="../community/manageEventEnrollForm.jsp" class="btn btn-sm" id="enroll">등록하기</a>
	            </div>
            
     
        <br>
        <br>
        
        <div>
            <table align="center" class="table table-bordered" style="text-align:center;">
                <thead>
	                    <tr>
	                        <th width="20"><input type="checkbox"></th>
	                        <th width="20">No</th>
	                        <th width="90">이벤트코드</th>
	                        <th width="200">글 제목</th>
	                        <th width="60">작성자</th>
	                        <th width="80">시작일</th>
	                        <th width="80">등록일</th>
	                    </tr>
                </thead>
                
                <tbody>
	                    <tr>
	                    	<td width="20"><input type="checkbox"></td>
	                        <td width="20">1</td>
	                        <td width="90">1</td>
	                        <td width="200">다모아트 sns 이벤트</td>
	                        <td width="60">admin</td>
	                        <td width="80">2021-01-01</td>
	                        <td width="80">2021-12-31</td>
	                    </tr>
                </tbody>
                
            </table>
            
            
			<div class="under_button">
				<a href="" class="btn btn-sm" id="update">수정하기</a>
				<a href="" class="btn btn-sm" id="delete">삭제하기</a>
			</div>
        </div>
        
        
    </div>
</body>
</html>