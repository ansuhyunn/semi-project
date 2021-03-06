<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.common.model.vo.PageInfo, java.util.ArrayList, com.kh.member.model.vo.Member" %>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
	
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
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	<style>
	    @font-face {
	        font-family: 'IBMPlexSansKR-Regular';
	        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff') format('woff');
	        font-weight: normal;
	        font-style: normal;
	    }
	    body{
	        background:#e1d5bf;
	        font-family: 'IBMPlexSansKR-Regular'; 
	    }
	    .outer{
	        width:1300px; 
	        margin:auto;
	        margin-top:150px;
	        margin-left:250px;
	    }
	    #outer>a{
	    color:rgb(64, 64, 64);
	    }
	    thead{background:rgb(207, 206, 206);}
	    .table>tbody{background:white;}
	    .buttons>div{float:left;}
	    .buttons{width:100%; height:40px; position:relative;}
	    .button2{
	        position:absolute;
	        right:0;
	    }
	    #update{
	        background-color:rgb(203, 185, 153);
	        color:rgb(64, 64, 64);
	        font-weight:bold;
	    }
	    #delete, #search{
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
		<h4 style="font-weight:bold;">?????? ??????</h4>
        <br>
        <hr>

        <div class="buttons">
            <div class="button1">
                    <form action="">
                        <input type="text" placeholder="?????????">
                        <a href="" class="btn btn-sm" id="search">??????</a>
                    </form>
            </div>
            
            <div class="button2">
                <a href="" class="btn btn-sm" id="update">??????</a>
                <a href="" class="btn btn-sm" id="delete">??????</a>
            </div>
        </div>
        <br>
        <div>
            <table align="center" class="table table-bordered list-area" style="text-align:center;">
                <thead>
                    <tr>
                        <th width="30"><input type="checkbox"></th>
                        <th width="90">????????????</th>
                        <th width="80">?????????</th>
                        <th width="80">??????</th>
                        <th width="120">?????????</th>
                        <th width="150">?????????</th>
                        <th width="150">????????????</th>
                        <th width="110">????????????</th>
                        <th width="110">?????????</th>
                        <th width="90">????????????</th>
                        <th colspan="2" width="50">?????????</th>
                    </tr>
                </thead>
                <tbody>

                	<% if(list.isEmpty()) { %>
		                <!--case1. ?????? ?????? ??????-->
		                <tr>
		                    <td colspan="11">????????? ????????? ????????????.</td>
		                </tr>
		            <% }else { %>    
		                <!--case2. ?????? ?????? ??????-->
		               <% for(Member m : list) { %>
		                    <tr>
		                        <td><input type="checkbox"></td>
		                        <td><%= m.getMemNo() %></td>
		                        <td><%= m.getMemId() %></td>
		                        <td><%= m.getMemName() %></td>
		                        <td><%= m.getNickName() %></td>
		                        <td><%= m.getEmail() %></td>
		                        <td><%= m.getPhone() %></td>
		                        <td><%= m.getBirth() %></td>
		                        <td><%= m.getEnrollDate() %></td>
		                        <td><%= m.getStatus() %></td>
		                        <td id="point"><%= m.getPoiPoint() %>
		                        </td>  
		                        <td>  
		                            <a class="ls-modal btn btn-outline-primary" data-toggle="modal"
										href="point.mem?mnum=<%= m.getMemNo() %>" data-target="#modal">??????</a>                   
		                        </td>
		                    </tr>
		            	<% } %>    
	        		<% } %>    
                </tbody>
            </table>
  			<br><br>
            <div class="paging-area" align="center">
			
				<% if(currentPage!=1) { %>
	            	<button onclick="location.href='<%=contextPath%>/mngmem.me?cpage=<%=currentPage-1%>';"> &lt; </button>
	            <% } %>
	            
	            <% for(int p=startPage; p<=endPage; p++){ %>
	            	
	            	<% if(p == currentPage) { %>
	            		
	            		<button disabled><%= p %></button> 
	            	<% }else { %>
	            		<button onclick="location.href='<%=contextPath%>/mngmem.me?cpage=<%= p %>'; "><%= p %></button>
	            	<% } %>
	            <% } %>
	            
	            <% if(currentPage!=maxPage) { %>
	            <button onclick="location.href='<%=contextPath%>/mngmem.me?cpage=<%=currentPage+1%>';"> &gt;</button>
				<% } %>
        	</div>
  			 			
        </div>
    </div>
    
    <div class="modal fade" id="modal" >
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
		
		      <!-- Modal Header -->
		      <div class="modal-header">
		        <h4 class="modal-title">????????? ??????</h4>
		        <button type="button" class="close" data-dismiss="modal">??</button>
		      </div>
		
		      <!-- Modal body -->
		      <div class="modal-body">
		      </div>
		
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">??????</button>
		      </div>
		
		    </div>
	  	</div>
	</div>
	
	<script type="text/javascript">
		$(".ls-modal").on('click', function(e){
			e.preventDefault();
			$('#modal').modal('show').find('.modal-body').load($(this).attr('href'));
		});
	
	</script>
	
	
    
    
</body>
</html>