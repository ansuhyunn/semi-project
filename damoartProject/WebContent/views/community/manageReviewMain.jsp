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
			padding-right: 10px;
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
	    #delete, #blind{
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
		<h4 style="font-weight:bold;">REVIEW 글 관리</h4>
        <br>
        <hr>
        
        <br>
        
        <div>
            <table align="center" class="table table-bordered" style="text-align:center;">
                <thead>
	                    <tr>
	                        <th width="20"><input type="checkbox"></th>
	                        <th width="20">No</th>
	                        <th width="90">글 번호</th>
	                        <th width="200">게시글 제목</th>
	                        <th width="60">작성자</th>
	                        <th width="80">조회수</th>
                            <th width="80">추천수</th>
	                        <th width="80">작성일</th>
	                    </tr>
                </thead>
                
                <tbody>
	                    <tr>
	                    	<td width="20"><input type="checkbox"></td>
	                        <td width="20">1</td>
	                        <td width="90">1</td>
	                        <td width="200">전시노잼</td>
	                        <td width="60">test01</td>
	                        <td width="80">21</td>
	                        <td width="80">0</td>
                            <td width="90">2021-01-01</td>
	                    </tr>
                </tbody>
                
            </table>
            
            
			<div class="under_button">
				<a href="" class="btn btn-sm" id="blind">숨김처리</a>
				<a href="" class="btn btn-sm" id="delete">삭제하기</a>
			</div>
        </div>
        
        
    </div>
</body>
</html>