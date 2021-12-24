<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.community.model.vo.Review, com.kh.common.model.vo.PageInfo"%>
<% 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Review> allList = (ArrayList<Review>)request.getAttribute("allList");
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
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
div{ box-sizing:border-box; }
    .wrapper{
        width:1300px; 
        height:auto; 
        padding:20px;
        margin:auto;
        margin-top:200px;
        margin-left:230px;
    }  
	.wrapper>a{
        color:rgb(64, 64, 64);
    }
	.name>h4{
		font-weight: bolder;
	}
    #list-area{
    	width: 1200px;
    	margin-left: auto;
    	margin-right: 150px;
    }
	.header{width:100%; height:40px; position:relative;}
    .header>div{float:left;}
    .header a{
        background-color:rgb(151, 138, 116);
        color:white;
    }
	.button{
		margin-left: 1050px;
	}
	#insert{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }
    #delete{
        background-color:rgb(151, 138, 116);
        color:white;
    }
    thead{
        background:rgb(207, 206, 206);
        font-size:12px;
    }
	#list-area *{
		text-align: center;
	}
    #list-area>tbody{
        background:white;
        font-size:12px;
    }
     #list-area>tbody>tr:hover{
    	background:rgb(240, 239, 239);
    	cursor:pointer;
    }

</style>

</head>
<body>

	<%@ include file="../common/manageMenubar_2.jsp" %>
	
    <div class="wrapper">

		<div class="name">
			<h4>REVIEW 관리</h4>
			<br>
		</div>
		<hr class="my-2">
		<div class="header">
			<div class="button">
				<a href="" class="btn btn-sm" id="delete" data-toggle="modal" data-target="#myModal" type="button">숨김처리</a>
				<a href="<%= contextPath %>/delete.rv" class="btn btn-sm" id="insert">삭제</a>
			</div>
		</div>
        
        <table align="center" id="list-area" class="table table-bordered">

			<thead>
	            <tr>
	                <th><input type="checkbox" id="allCheck"></th>
	                <th>글번호</th>
	                <th>제목</th>
	                <th>작성자ID</th>
	                <th>작성일</th> 
	                <th>별점</th> 
	                <th>숨김처리</th>
	            </tr>
	        </thead>
	        <tbody>
	            <% for(Review r : allList){ %>
		            <tr>
		                <th><input type="checkbox" class="deleteCheck" name="checkNo" value="<%= r.getRvNo() %>"></th>
		                <td><%= r.getRvNo() %></td>
		                <td class="clickTitle"><%= r.getReviewTitle() %></td>
		                <td><%= r.getNickName() %></td>
		                <td><%= r.getReviewDate() %></td>
		                <td><%= r.getReviewStar() %></td>
		                <td><%= r.getDeleteStatus() %></td>
		            </tr>
		        <% } %>
		     </tbody>    
        </table>

        
        <div class="paging-area" align="center">
        
			<% if(currentPage != 1){ %>
            	<button class="btn" onclick="location.href='<%=contextPath%>/manageList.rv?cpage=<%=currentPage-1%>';">&lt;</button>
            <% } %>
            
            <% for(int p=startPage; p <= endPage; p++){ %>
            	<% if(currentPage == p) {%>
            		<button class="btn" disabled><%= p %></button>		
	            <% }else { %>
	            	<button class="btn" onclick="location.href='<%=contextPath%>/manageList.rv?cpage=<%= p %>';"><%= p %></button>
	            <% } %>
            <% } %>
            
            <% if(currentPage != maxPage){%>
            	<button class="btn" onclick="location.href='<%=contextPath%>/manageList.rv?cpage=<%=currentPage+1%>';">&gt;</button>
			<% } %>
			
        </div>
        
        <script>
            $(function(){
            	$(".clickTitle").click(function(){
            		location.href='<%=contextPath%>/manageDetail.rv?rno=' + $(this).prev().text();
            	})
            		
            	$("#allCheck").click(function(){
            		$(".deleteCheck").prop("checked", $(this).prop("checked"));
            	})
            })
        </script>
        
    </div>
    
    
    <!-- The Modal -->
	<div class="modal" id="myModal">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	
	      <!-- Modal body -->
	      <div class="modal-body" align="center">
	        	리뷰 블라인드 처리 하시겠습니까?
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	      	<button id="deleteCancel" type="button" class="btn" data-dismiss="modal">취소</button>
	      	<button id ="deleteCheck" type="button" class="btn" data-dismiss="modal" onclick="checkDelete();" name="checkDelete">확인</button>
		  </div>	
	    </div>
	  </div>
	</div>
	<script>
		function checkDelete(){
            var checkArr = [];
            $("input:checkbox[class='deleteCheck']:checked").each(function(){
                checkArr.push($(this).val());
            })
            console.log(checkArr);
            location.href = "/damoart/checkDelete.rv?arr=" + checkArr
		}    
	</script>
    

</body>
</html>