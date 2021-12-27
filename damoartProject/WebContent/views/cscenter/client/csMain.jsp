<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.kh.cscenter.model.vo.FAQ, com.kh.cscenter.model.vo.QnA, com.kh.cscenter.model.vo.Notice" %>
<%
	ArrayList<FAQ> fList = (ArrayList<FAQ>)request.getAttribute("fList");
	ArrayList<QnA> qList = (ArrayList<QnA>)request.getAttribute("qList");
	ArrayList<Notice> nList = (ArrayList<Notice>)request.getAttribute("nList");
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
    div{ box-sizing:border-box;}
    #outer{
        
        width:1000px; 
        height:auto; 
        padding:40px;
        margin:auto;
        margin-top:50px;
    }

    #outer>div{
        width:900px;
        height:250px;
        margin:auto;
        margin-top:40px;
        
    }

    #area>div{
        float:left;
    }
    #notice_area{
        width:430px;
        height:250px;
        background:rgb(203, 185, 153);
    }

    #call_area{
        width:430px;
        height:250px;
        margin-left:38px;
        background:rgb(203, 185, 153);
    }


    #faq_area, #qna_area, #notice_area, #call_area{
        padding:15px;
    }

    #faq_area, #qna_area{
        border:1px solid rgb(151, 138, 116);
    }
    
    #outer a{
        text-decoration:none;
            color:rgb(64, 64, 64);
            font-size:16px;
            font-weight:600;
    }

    .a{
        display:none;
    }

    .q, .qna, .notice{
        cursor:pointer;
        height:35px;
    }

    #faq_tb, #qna_tb, #notice_tb{
        margin-top:20px;
        margin-bottom:10px;
    }

    .q:hover{
        background:rgb(204, 191, 169);
    }

    .qna:hover{
        background:rgb(204, 191, 169);
    }
    
    .notice:hover{
        background:rgb(221, 204, 175);
    }

    tr{
        border-bottom:1px solid rgb(189, 174, 148);
        border-top:1px solid rgb(189, 174, 148);
    }

    #call_area>div{
        height:100%;
        float:left;
    }

    #icon{
        width:35%;
        line-height:270px
    }
    #call_content{
        width:65%;
        padding:15px;
        padding-top:30px;
        font-weight:500;
    }
    
    #myModal{
    	padding-top:150px;
    }
    
    #modalClose{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }
    

</style>
</head>
<body>
	<%@ include file="../../common/menubar.jsp" %>
	
        <div id="outer">

            <h4 style="font-weight: bolder;" align="center">고객센터</h4>
            <br>
            <hr>
            <div id="faq_area" style="height:auto">
                <a href="<%=contextPath%>/list.fa?cpage=1">FAQ <i class="fas fa-angle-right"></i></a>
                <div style="height:auto">

                    <table id="faq_tb">
                    	<%for(FAQ f : fList) { %>
	                        <tr class="q">
	                            <td width="150"><%=f.getfCategoryCode() %></td>
	                            <td width="660">Q <%=f.getFaqTitle() %></td>
	                            <td width="40"><i class="fas fa-angle-down"></i></td>
	                        </tr>
	                        <tr class="a">
	                            <td></td>
	                            <td colspan="2"><div>
	                                A <br>
	    							<%=f.getFaqContent() %>                        
	                            </div></td> 
	                        </tr>
                        <% } %>
                    </table>
                </div>
            </div>

            <script>
                $(function(){
                    $(".q").click(function(){
                        const $tr = $(this).next();

                        if($tr.css("display") == "none"){
                            $(this).siblings(".a").hide();

                            $tr.show();
                        }else{
                            $tr.hide();
                        }
                    })
                })
            </script>
    		
    		<% if(loginUser != null) { %>
            <div id="qna_area">
                <a href="<%=contextPath%>/list.qa?cpage=1">Q&A <i class="fas fa-angle-right"></i></a>
                <table id="qna_tb">
                	<%for(QnA q : qList) {%>
	                    <tr class="qna">
	                    	<input type="hidden" name="qno" value="<%=q.getqNo()%>">
	                        <td width="150"><%=q.getqCategoryCode() %><input type="hidden" value="<%=q.getqWriter() %>"></td>
	                        <td width="400">
	                        	<%=q.getqTitle() %>
	                        	<% if(q.getSecret().equals("Y")) { %>
			                        <i class="fas fa-lock"></i>
		                            <input type="hidden" value="Y">
			                    <% }else { %>
		                            <input type="hidden" value="N">
		                        <% } %>
	                        </td>
	                        <td width=100><%=q.getqWriter() %><input type="hidden" value="<%=loginUser.getNickName() %>"></td>
	                        <td width="130"><%=q.getCreateDate() %></td>
	                        <td width="80">
	                        	<% if(q.getaContent() != null) { %>
									답변 완료
			                    <% }else { %>
			                        	미답변
			                    <% } %>
	                        </td>
	                    </tr>
                    <% } %>
                    
                </table>
            </div>
            <script>
            	$(function(){
            		
		            $("#qna_tb tr").click(function(){
				    	var secret = $(this).children().eq(2).find("input").val();
				    	var writer = $(this).children().eq(1).find("input").val();
				    	var User = $(this).children().eq(3).find("input").val();
				    	if(secret == 'Y') {
				    		if(User == writer) {
				    			location.href='<%=contextPath %>/detail.qa?qno=' + $(this).children("input").val();
				    		}else {
				    			
					    		$("#myModal").modal();
				    		}
				    	}else {
				    		location.href='<%=contextPath %>/detail.qa?qno=' + $(this).children("input").val();
				    	}
				    })
            	})
			</script>
    		<% }else { %>
            <div id="qna_area">
                <a href="<%=contextPath%>/list.qa?cpage=1">Q&A <i class="fas fa-angle-right"></i></a>
                <table id="qna_tb">
                	<%for(QnA q : qList) {%>
	                    <tr class="qna">
	                    	<input type="hidden" name="qno" value="<%=q.getqNo() %>">
	                        <td width="150"><%=q.getqCategoryCode() %></td>
	                        <td width="400">
	                        	<%=q.getqTitle() %>
	                        	<% if(q.getSecret().equals("Y")) { %>
			                        <i class="fas fa-lock"></i>
		                            <input type="hidden" value="Y">
			                    <% }else { %>
		                            <input type="hidden" value="N">
		                        <% } %>
	                        </td>
	                        <td width=100><%=q.getqWriter() %></td>
	                        <td width="130"><%=q.getCreateDate() %></td>
	                        <td width="80">
	                        	<% if(q.getaContent() != null) { %>
									답변 완료
			                    <% }else { %>
			                        	미답변
			                    <% } %>
	                        </td>
	                    </tr>
                    <% } %>
                    
                </table>
            </div>
            <script>
            	$(function(){
            		
		            $("#qna_tb tr").click(function(){
				    	var secret = $(this).children().eq(2).find("input").val();
		            	console.log(secret);
				    	if(secret == 'Y') {				    	
					    	$("#myModal").modal();				    		
				    	}else {
				    		location.href='<%=contextPath %>/detail.qa?qno=' + $(this).children("input").val();	
				    	}
				    })
            	})
			</script>
			<% } %>
    
            <div id="area">
                <div id="notice_area">
                    <a href="<%=contextPath%>/list.no?cpage=1">공지사항 <i class="fas fa-angle-right"></i></a>
                    <table id="notice_tb">
                    	<% for(Notice n : nList) { %>
	                        <tr class="notice" style="border-bottom:1px solid rgb(151, 138, 116)">
	                        	<input type="hidden" name="nno" value="<%=n.getNoticeNo() %>">
	                            <td width="320"><%=n.getNoticeTitle() %></td>
	                            <td width="90"><%=n.getCreateDate() %></td>
	                        </tr>
                        <% } %>
                    </table>       
                </div>
                <script>
			    	$(function(){
			    		$("#notice_area tr").click(function(){
			    			location.href='<%=contextPath%>/detail.no?nno=' + $(this).children("input").val();
			    		})
			    	})
			    </script>
                <div id="call_area">
                    <div id="icon" align="center"><i class="fas fa-headphones-alt fa-7x"></i></div>
                    <div id="call_content">
                        <h3>02-1234-5678</h3> <br>
                        	전화 상담 가능 시간 <br>
                        	평일 AM 10:00 ~ PM 18:00 <br>
                        	점심시간 PM 12:00 ~ PM 13:00 <br>
                        	(토요일, 일요일, 공휴일 휴무)
                    </div>
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

    <%@ include file="../../common/footerbar.jsp" %>

</body>
</html>