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

        /* footer바 부분 */

		#outer{
        position:absolute;
        z-index:-1;
		}
        #footer_1>a{
            text-decoration:none;
            color:rgb(46, 46, 46);
            font-weight:600;
            font-size:small;
            margin:40px; 
            vertical-align:middle; 
            text-align:center;
        }
        #footer_2>p{
            width:100%;
            box-sizing:border-box;
            margin:0; 
            font-size:12px;
            color:rgb(46, 46, 46);
            height:20%;
        }
        /*#footer{background:rgb(203, 185, 153)}*/  

    </style>
</head>

<body>
	
	<div id="outer">

	    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	    <!-- footer바 부분 -->
	    <hr>
	    <div id="footer">
	
	        <div id="footer_1" align="center">
	            <a href="">이용안내</a> |
	            <a href="">이용약관</a> |
	            <a href="">개인정보처리방침</a> |
	            <a href="">고객센터</a>
	            <br>
	            <br>
	            
	        </div>
	        <div id="footer_2" align="center">
	            <p>Copyright © DAMOART All Right Reserved <br><br></p>
	        </div>
	    </div>
    </div>
</body>
</html>