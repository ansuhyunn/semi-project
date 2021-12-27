<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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
    div{ box-sizing:border-box;}
    #outer{
        
        width:1000px; 
        height:auto; 
        padding:40px;
        margin:auto;
        margin-top:150px;
        margin-left:230px;
    }

    #outer>div{
        width:900px;
        height:250px;
        margin:auto;
        margin-top:40px;
        
    }

    #area>div{
        display:inline-block;
        margin-left:35px;
        border-radius: 20px;;
        width:250px;
        height:200px;
        background:rgb(151, 138, 116);
        color:white;
        font-size:22px;
        text-align:center;
        padding-top:60px;
    }

    #list-area{
        text-align:center;
    }

    .no-tb{
        background:white;
        font-size:14px;
    }
    
    #list-area>tbody>tr:hover{
    	background:rgb(240, 239, 239);
    	cursor:pointer;
    }
    
    h6 a{
        text-decoration:none;
        color:rgb(64, 64, 64);
    }

</style>
</head>
<body>
	<%@ include file="../../common/manageMenubar_2.jsp" %>

	
        <div id="outer">

            <h4 style="font-weight: bolder;">HOME</h4>
            <br>
            <hr>

            <div id="area">
                <div id="newOrder">7 <br> 신규주문</div>
                <div id="orderCancel"> 7 <br>취소관리</div>
                <div id="answerCheck"> 7 <br>미답변 Q&A</div>
            </div>
            <br>
            <h6> <b> <a href="">신규 회원</a> </b> </h6>
            <hr>
            <div>
                <table align="center" id="list-area" class="table table-bordered">
                    <thead>
                        <tr>
                            <th width="10"><input type="checkbox" id="allCheck"></th>
                            <th width="40">번호</th>
                            <th width="280">제목</th>
                            <th width="60">작성자</th>
                            <th width="100">등록일</th>
                            <th width="50">조회수</th>
                        </tr>
                    </thead>
                    <tbody class="no-tb">
                    	<% if(list.isEmpty()) { %>
	                        <tr>
	                            <td colspan="6">게시글이 없습니다.</td>
	                        </tr>
                        <% }else { %>
                        	<%for(Notice n : list) { %>
		                        <tr>
                                    <td><input type="checkbox" class="deleteCheck" name="checkNo" value="<%=n.getNoticeNo()%>"></td>
		                            <td><%=n.getNoticeNo() %></td>
		                            <td class="clickTitle"><%=n.getNoticeTitle() %></td>
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
                		$(".clickTitle").click(function(){
                			location.href='<%=contextPath%>/adminDetail.no?nno=' + $(this).prev().text();
                		})
                		
                		$("#allCheck").click(function(){
                			$(".deleteCheck").prop("checked", $(this).prop("checked"));
                		})
                	})
                </script>

    		<br><br>
            <h6> <b><a href="">주문 내역</a></b> </h6>
            <hr>
            <div>
                <table align="center" id="list-area" class="table table-bordered">
                    <thead>
                        <tr>
                            <th width="10"><input type="checkbox" id="allCheck"></th>
                            <th width="40">번호</th>
                            <th width="280">제목</th>
                            <th width="60">작성자</th>
                            <th width="100">등록일</th>
                            <th width="50">조회수</th>
                        </tr>
                    </thead>
                    <tbody class="no-tb">
                    	<% if(list.isEmpty()) { %>
	                        <tr>
	                            <td colspan="6">게시글이 없습니다.</td>
	                        </tr>
                        <% }else { %>
                        	<%for(Notice n : list) { %>
		                        <tr>
                                    <td><input type="checkbox" class="deleteCheck" name="checkNo" value="<%=n.getNoticeNo()%>"></td>
		                            <td><%=n.getNoticeNo() %></td>
		                            <td class="clickTitle"><%=n.getNoticeTitle() %></td>
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
                		$(".clickTitle").click(function(){
                			location.href='<%=contextPath%>/adminDetail.no?nno=' + $(this).prev().text();
                		})
                		
                		$("#allCheck").click(function(){
                			$(".deleteCheck").prop("checked", $(this).prop("checked"));
                		})
                	})
                </script>
        


</body>
</html>