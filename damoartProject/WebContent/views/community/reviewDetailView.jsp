<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.community.model.vo.Review"%>
<% 
	ArrayList<Review> reviewList = (ArrayList<Review>)request.getAttribute("reviewList");
%>    

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
    div{box-sizing:border-box;}
    #outer{
        width:1000px; 
        height:auto; 
        padding:40px;
        margin:auto;
    }
    #outer>a{
        color:rgb(64, 64, 64);
    }
    #name1{
        width: 100%;
        font-size: 26px;
        font-weight: bolder;
        text-align: center;
        margin-top: 15px;
    }
    .detail-area{
        width:750px;
        height:auto;
        margin:auto;
    }
    .detail-data>div{
        float:left;
    }
    .detail-data{
        height:40px;
    }
    .title{
        height:40px;
        line-height:40px;
        background:rgb(203, 185, 153);
        /* border-top:1px solid rgb(163, 162, 162); */
        border-bottom:1px solid rgb(163, 162, 162);
        padding-left:10px;
        font-weight:600;
    }
    .writer{
        width:13%;
        height:40px;
        line-height:40px;
        padding-left:10px;
    }
    .date{
        width:67%;
        height:40px;
        line-height:40px;
    }
    .count{
        width:20%;
        height:60px;
        line-height:40px;
        padding-right:10px;
    }
    .poster{
    	width: 100px;
    	height: 100px;
    	float: left;
    	margin-left: 20px;
    	margin-right: 50px;
    }
    .content{
        border-top:1px solid rgb(163, 162, 162);
        border-bottom:1px solid rgb(163, 162, 162);
        padding-top:50px;
        padding-bottom:80px;
        padding-left:10px;
        padding-right: 30px;
    }
	.reply table{
		width: 100%;
		border-top:1px solid rgb(163, 162, 162);
        border-bottom:1px solid rgb(163, 162, 162);
        padding-bottom:50px;
        padding-left:10px;
	}
    .button>a{
        background-color:rgb(151, 138, 116);
        color:white;
    }

    .button{
        width:750px;
        margin:auto;
        margin-top:20px;
    }
    

</style>
</head>
<body>

	<%@ include file="../common/menubar.jsp" %>
	
	<div id="outer">
		<h4 id="name1">REVIEW</h4>
        <br>
        <hr>
        <br><br>
        <% for(Review r : reviewList){ %>
	       <div class="detail-area">
		       	<div class="detail-area1">
		           <div class="title">
		               <%= r.getReviewName() %>
		           </div>
		           <div class="detail-data">
		               <div class="writer">
		                   <%= r.getReviewId() %>
		               </div>
		               <div class="date">
		                   <%= r.getReviewDate() %>
		               </div>
		               <div class="count" align="right">
		                                            조회수 <%= r.getReviewView() %>
		               </div>
		        	</div>
		      	</div>
		      	<div class="poster">
		                <img src="<%= r.getMainImg() %>" width="100%" height="100%">
		        </div>
		      	<div class="detail-area2">
		            <div class="content">
		                <%= r.getReviewContent() %>
		            </div>
	            </div>
	            <div class="detail-area3">
		            <div class="reply">
			            <table align="center">
			                <thead>
			                    <tr>
			                        <th width="100px">댓글작성</th>
			                        <% if(loginUser != null){ %>
				                        <td>
				                            <textarea id="replyContent" cols="100" rows="1" style="resize: none;"></textarea>
				                        </td>
				                        <td><button onclick="insertReply();">댓글등록</button></td>
			                        <% }else{ %>
			                        	<td>
				                            <textarea cols="70" rows="1" style="resize: none;" readonly>로그인 후 이용 가능</textarea>
				                        </td>
				                        <td><button class="btn btn-sm" style="background-color:rgb(151, 138, 116); color:white;" disabled>댓글등록</button></td>
			                        <% } %>
			                        
			                    </tr>
			                </thead>
			                <tbody>
			                
			                </tbody>
	            		</table>
		            </div>
	            </div>
	       </div>
	       <div class="button" align="right">
	       	   <a href="<%= contextPath %>/review.pro?cpage=1" class="btn btn-sm">목록가기</a>			
	       </div>
        <% } %> 
    </div>
    
    <%@ include file="../common/footerbar.jsp" %>

</body>
</html>