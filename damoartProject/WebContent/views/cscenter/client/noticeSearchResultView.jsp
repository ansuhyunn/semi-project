<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.common.model.vo.PageInfo, com.kh.cscenter.model.vo.Notice" %>
    
<% PageInfo pi = (PageInfo)request.getAttribute("pi");
   ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
   String keyword = request.getParameter("keyword");
   String category = request.getParameter("searchCategory");
   
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
    
    .search-area button{
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
    
    .clickList{
        cursor:pointer;
    }


</style>
</head>
<body>
	<%@ include file="../../common/menubar.jsp" %>
	
        <div id="outer">
            <a href="">고객센터</a><i class="fas fa-angle-right"></i><a href=""><b>공지사항</b></a>
            <br><br>
			<h4 style="font-weight: bolder;" align="center">공지사항</h4>
            <br>
            <hr>
            <br>
            <h5>
            	<%if(category.equals("searchTitle")) { %>
            		제목으로
            	<%}else { %>
            		내용으로
            	<%} %> "<%= keyword %>" 검색한 결과
            </h5>
            <br>
            <div>
                <table align="center" id="list-area" class="table table-hover">
                    <thead>
                        <tr>
                            <th width="70">번호</th>
                            <th width="300">제목</th>
                            <th width="100">작성자</th>
                            <th width="100">등록일</th>
                            <th width="100">조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<% if(list.isEmpty()) { %>
	                        <tr>
	                            <td colspan="5">게시글이 없습니다.</td>
	                        </tr>
                        <% }else { %>
                        	<%for(Notice n : list) { %>
		                        <tr class="clickList">
		                            <td><%=n.getNoticeNo() %></td>
		                            <td><%=n.getNoticeTitle() %></td>
		                            <td><%=n.getNoticeWriter() %></td>
		                            <td><%=n.getCreateDate() %></td>
		                            <td><%=n.getCount() %></td>
		                        </tr>
                        	<% } %>
                        <% } %>
                    </tbody>
                </table>
                <script>
			    	$(function(){
			    		$(".clickList").click(function(){
			    			location.href='<%=contextPath%>/detail.no?nno=' + $(this).children().eq(0).text();
			    		})
			    	})
			    </script>
                <br><br>
                <div class="paging-area" align="center">
                	<% if(currentPage != 1) {%>
                    	<button class="btn" onclick="location.href='<%=contextPath%>/search.no?cpage=<%=currentPage-1%>'">&lt;</button>
                    <% } %>
                    
                    <% for(int p=startPage; p<=endPage; p++) { %>
                    	<% if(p == currentPage) { %>
                    		<button class="btn" disabled><%=p %></button>
                    	<% }else { %>
                    		<button class="btn" onclick="location.href='<%=contextPath %>/search.no?cpage=<%=p%>'"><%=p %></button>
                    	<% } %>
                    <% } %>
                    <% if(currentPage != maxPage) {%>
                    <button class="btn" onclick="location.href='<%=contextPath%>/search.no?cpage=<%=currentPage+1%>'">&gt;</button>
                    <% }%>
                </div>
                <br>
                <div class="search-area" align="center">
                    <form action="search.no">
                        <select name="searchCategory">
                            <option value="searchTitle">제목</option>
                            <option value="searchContent">내용</option>
                        </select>
                        <input type="text" name="keyword" required>
                        <input type="hidden" name="cpage" value="1">
                        <button type="submit" class="btn btn-sm">검색</a>
                    </form>
                </div>
            </div>
           
        </div>

        

    <%@ include file="../../common/footerbar.jsp" %>

</body>
</html>