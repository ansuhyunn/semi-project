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
    
    tbody th{
        font-weight:500;
        font-size:14px;
    }

    #outer>a{
        color:rgb(64, 64, 64);
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
            <br><br>
            <div>
                <table border=1 align="center" id="list-area" class="table table-hover">
                    <thead>
                        <tr>
                            <th width="50">번호</th>
                            <th width="80">분류</th>
                            <th width="280">제목</th>
                            <th width="80">작성자</th>
                            <th width="100">등록일</th>
                            <th width="80">답변상태</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<% if(list.isEmpty()) { %>
	                        <tr>
	                            <th colspan="6">게시글이 없습니다.</th>
	                        </tr>
                        <% }else { %>
                        	<%for(QnA q : list) { %>
		                        <tr>
		                            <th><%=q.getqNo() %></th>
                                    <th class="category"><%=q.getqCategoryCode()%></th>
		                            <th><%=q.getqTitle() %></th>
		                            <th><%=q.getqWriter() %></th>
		                            <th><%=q.getCreateDate() %></th>
		                            <th>
			                            <% if(q.getaContent() != null) { %>
											답변 완료
		                            	<% }else { %>
		                            		미답변
		                            	<% } %>
		                            </th>
		                        </tr>
                        	<% } %>
                        <% } %>
                    </tbody>
                </table>
                <script>
			    	$(function(){
			    		$("#list-area>tbody>tr").click(function(){
			    			location.href='<%=contextPath%>/detail.qa?qno=' + $(this).children().eq(0).text();
			    		})
			    		
			    		switch($(".category").text()) {
			    		case Q1 : [티켓] ; break;
                 	    case Q2 : [취소/환불] ; break;
                 	    case Q3 : [주문결제] ; break;
                 	    case Q4 : [상품] ; break;
                 	    default : [기타] ; break;
			    		}
			    	})
			    	
			    	
			    </script>
                <br><br>
                <div class="paging-area" align="center">
                	<% if(currentPage != 1) {%>
                    	<button class="btn" onclick="location.href='<%=contextPath%>/list.qa?cpage=<%=currentPage-1%>'">&lt;</button>
                    <% }else { %>
                    	<button class="btn" disabled>&lt;</button>
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
                    <% }else { %>
                    	<button class="btn" disabled>&gt;</button>
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

        

    <%@ include file="../../common/footerbar.jsp" %>

</body>
</html>