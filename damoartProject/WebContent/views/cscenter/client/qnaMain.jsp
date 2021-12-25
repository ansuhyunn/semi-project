<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.common.model.vo.PageInfo, com.kh.cscenter.model.vo.QnA" %>
    
<% PageInfo pi = (PageInfo)request.getAttribute("pi");
   ArrayList<QnA> list = (ArrayList<QnA>)request.getAttribute("list");
   
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
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
    div, input{ box-sizing:border-box;}

    #outer{

        width:1000px; 
        height:1050px; 
        padding:40px;
        margin:auto;
    }

    #list-area{
        text-align:center;
    }
    
    .search-area a{
        background-color:rgb(151, 138, 116);
        color:white;
    }

    thead{
        background:rgb(203, 185, 153);
    }
    
    tbody td{
        font-weight:500;
        font-size:14px;
    }

    #outer>a{
        color:rgb(64, 64, 64);
    }
    
    .button>a, #modalClose{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }
    
    #myModal, #myModal1{
    	padding-top:150px;
    }


</style>
</head>
<body>
	<%@ include file="../../common/menubar.jsp" %>
	
        <div id="outer">
            <a href="">고객센터</a><i class="fas fa-angle-right"></i><a href=""><b>Q&A</b></a>
            <br><br>
			<h4 style="font-weight: bolder;" align="center">Q&A</h4>
            <br>
            <hr>
            <br>
            <br>
            <div>
            <% if(loginUser != null) {%>
                <table align="center" id="list-area" class="table table-hover">
                    <thead>
                        <tr>
                            <th width="50">번호</th>
                            <th width="80">분류</th>
                            <th width="280">제목</th>
                            <th width="100">작성자</th>
                            <th width="90">등록일</th>
                            <th width="70">답변상태</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<% if(list.isEmpty()) { %>
	                        <tr>
	                            <td colspan="6">게시글이 없습니다.</td>
	                        </tr>
                        <% }else { %>
                        	<%for(QnA q : list) { %>
		                        <tr>
		                            <td><%=q.getqNo() %><input type="hidden" value="<%=q.getqWriter() %>"></td>
                                    <td><%=q.getqCategoryCode()%></td>
		                            <td>
		                            	<%=q.getqTitle() %>
		                            	<% if(q.getSecret().equals("Y")) { %>
		                            		<i class="fas fa-lock"></i>
		                            		<input type="hidden" value="Y">
		                            	<% }else { %>
		                            		<input type="hidden" value="N">
		                            	<% } %>
		                            </td>
		                            <td>
			                            <%=q.getqWriter() %>
			                            <input type="hidden" value="<%=loginUser.getNickName() %>">
		                            </td>
		                            <td><%=q.getCreateDate() %></td>
		                            <td>
			                            <% if(q.getaContent() != null) { %>
											답변 완료
		                            	<% }else { %>
		                            		미답변
		                            	<% } %>
		                            </td>
		                        </tr>
                        	<% } %>
                        <% } %>
                    </tbody>
                </table> <!-- 비밀글 구현해야함 -->
                <script>
				    $("#list-area>tbody>tr").click(function(){
                		var secret = $(this).children().eq(2).find("input").val();
                		var writer = $(this).children().eq(0).find("input").val();
                		var User = $(this).children().eq(3).find("input").val();
			    		console.log(secret);	
			    		console.log(writer);
			    		console.log(User);
				    	if(secret == 'Y') {
				    		if(User == writer) {
				    			location.href='<%=contextPath %>/detail.qa?qno=' + $(this).children().eq(0).text();
				    		}else {
				    			
					    		$("#myModal").modal();
				    		}
				    	}else {
				    		location.href='<%=contextPath %>/detail.qa?qno=' + $(this).children().eq(0).text();	
				    	}
				    })				    	
			    </script>
			<% }else { %> 
				<table align="center" id="list-area" class="table table-hover">
                    <thead>
                        <tr>
                            <th width="50">번호</th>
                            <th width="80">분류</th>
                            <th width="280">제목</th>
                            <th width="100">작성자</th>
                            <th width="90">등록일</th>
                            <th width="70">답변상태</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<% if(list.isEmpty()) { %>
	                        <tr>
	                            <td colspan="6">게시글이 없습니다.</td>
	                        </tr>
                        <% }else { %>
                        	<%for(QnA q : list) { %>
		                        <tr>
		                            <td><%=q.getqNo() %><input type="hidden" value="<%=q.getqWriter() %>"></td>
                                    <td><%=q.getqCategoryCode()%></td>
		                            <td>
		                            	<%=q.getqTitle() %>
		                            	<% if(q.getSecret().equals("Y")) { %>
		                            		<i class="fas fa-lock"></i>
		                            		<input type="hidden" value="Y">
		                            	<% }else { %>
		                            		<input type="hidden" value="N">
		                            	<% } %>
		                            </td>
		                            <td>
			                            <%=q.getqWriter() %>
		                            </td>
		                            <td><%=q.getCreateDate() %></td>
		                            <td>
			                            <% if(q.getaContent() != null) { %>
											답변 완료
		                            	<% }else { %>
		                            		미답변
		                            	<% } %>
		                            </td>
		                        </tr>
                        	<% } %>
                        <% } %>
                    </tbody>
                </table> <!-- 비밀글 구현해야함 -->
                <script>
				    $("#list-area>tbody>tr").click(function(){
				    	var secret = $(this).children().eq(2).find("input").val();
				    	if(secret == 'Y') {				    	
					    	$("#myModal").modal();				    		
				    	}else {
				    		location.href='<%=contextPath %>/detail.qa?qno=' + $(this).children().eq(0).text();	
				    	}
				    })				    	
			    </script>
			<% } %>	   
                <br>
                <div class="button" align="right">
                	<%if(loginUser == null) {%>
                    	<a class="btn btn-sm" id="enroll" data-toggle="modal" data-target="#myModal1" type="button">문의 등록</a>
                    <% }else { %>
                    	<a href="<%= contextPath %>/enrollForm.qa" class="btn btn-sm" id="enroll">문의 등록</a>
                    <% } %>
            	</div>
                <br>
                <div class="paging-area" align="center">
                	<% if(currentPage != 1) {%>
                    	<button class="btn" onclick="location.href='<%=contextPath%>/list.qa?cpage=<%=currentPage-1%>'">&lt;</button>
                    <% } %>
                    
                    <% for(int p=startPage; p<=endPage; p++) { %>
                    	<% if(p == currentPage) { %>
                    		<button class="btn" disabled><%=p %></button>
                    	<% }else { %>
                    		<button class="btn" onclick="location.href='<%=contextPath %>/list.qa?cpage=<%=p%>'"><%=p %></button>
                    	<% } %>
                    <% } %>
                    <% if(currentPage != maxPage) {%>
                    <button class="btn" onclick="location.href='<%=contextPath%>/list.qa?cpage=<%=currentPage+1%>'">&gt;</button>
                    <% } %>
                </div>
                <br>
                <div class="search-area" align="center">
                    <form action="">
                        <select name="" id="">
                            <option value="">제목</option>
                            <option value="">내용</option>
                        </select>
                        <input type="text">
                        <a href="" class="btn btn-sm">검색</a>
                    </form>
                </div>
            </div>
           
        </div>
        
        <!-- The Modal -->
		<div class="modal" id="myModal">
		  <div class="modal-dialog modal-sm">
		    <div class="modal-content">
		
		      <!-- Modal body -->
		      <div class="modal-body" align="center">
		        	다른 회원의 비밀글입니다.
		      </div>
		
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button id="modalClose" type="button" class="btn" data-dismiss="modal">닫기</button>
		      </div>
		
		    </div>
		  </div>
		</div>
	
		<!-- The Modal -->
		<div class="modal" id="myModal1">
		  <div class="modal-dialog modal-sm">
		    <div class="modal-content">
		
		      <!-- Modal body -->
		      <div class="modal-body" align="center">
		        	로그인 후 이용하실 수 있습니다.
		      </div>
		
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button id="modalClose" type="button" class="btn" data-dismiss="modal">닫기</button>
		      </div>
		
		    </div>
		  </div>
		</div>
        

    <%@ include file="../../common/footerbar.jsp" %>

</body>
</html>