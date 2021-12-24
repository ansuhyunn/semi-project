<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.mypage.model.vo.Qna, java.util.ArrayList, com.kh.mypage.model.vo.Point"%>
<%
	ArrayList<Qna> list = (ArrayList<Qna>)request.getAttribute("list");

	Qna question = (Qna)session.getAttribute("question");
	
	Point poi = (Point)session.getAttribute("poi");
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
    /*회원박스 스타일*/
    .mypage_top{
        width:1000px;
        height:120px;
        background:#e1d5bf;
        margin:auto;
        }
    .userbox_1, .userbox_2, .userbox_3{
        background:rgb(203, 185, 153);
        box-sizing:border-box;
        height:100%;
        float:left; 
    }
    .userbox_1{width:15%; padding-top:30px;} 
    .userbox_2{width:65%; padding-top:45px;}
    .userbox_3{width:19.5%; padding-top:30px;}
	
	.txt{font-size:20px; font-weight:600;}
    .userName{
        font-size:20px;
        padding-left:30px;      
    }

    .userbox_3{padding-left:40px; margin-left:0.5%;}
	.userbox_3:hover{
		background:rgb(182, 167, 141);
        cursor:pointer;
    }
    .userPoint{
        font-size:14px;
        color:black;
        padding-bottom:15px;
    }
    .point{
        font-size:20px;
        color:white;
    }

    /*카테고리 및 내용 스타일*/
    .mypage-content{
        width:1000px;
        height:1000px;
        background:#e1d5bf;
        margin:auto;
    }
    #content_1, #content_2{
        box-sizing:border-box;
        height:100%;
        float:left; 
    }
    #content_1{width:20%;}
    #content_2{width:80%;}

    #mp-content{height:1000px;}

    #mp-content>div{
        height:100%;
        float:left;
    }

    #content_1 h2{
        padding: 5px 0 20px 1px;
		letter-spacing:-1px;
        font-size:28px;
        font-weight:700;
    }
    .mem-box{
        height:120px;
        border:solid rgb(64, 64, 64); 
        border-width:thin;
    }
    .mem-box .txt{
        padding-left:300px;
        line-height:100px;
        font-size:21px;
        font-weight:700;
    }
	#mp-content{
		padding-top:50px;
	}
	
    ul{list-style:none; padding-left:10px;}
    #content_1 h3{
        padding-top:10px;
        font-size:17px;
        font-weight:700;
        line-height:24px;   
        letter-spacing:-1px;
    }
    #content_2 h4{
    	padding-top:10px;
    	font-size:20px;
    	font-weight:600;
    	letter-spacing:-1px;
    }
    #content_1 div{
        border:none;
        line-height:2em
    }
    #content_1 a{
        text-decoration:none;
        color:black;
        font-size:14px;
        letter-spacing:-0.8px;
        
    }
    #content_1 a:hover{
        color:rgb(151, 138, 116);
    }

    /*content_2*/
    .contents{
        height:10%;
        padding-top:15px;
        padding-left:30px;
    }
    
    /*찜한상품, qna내역이 없을 경우*/
    #exclamationmark_icon{
    	padding-left:345px;
        padding-top:35px;
    }

    /*기간설정*/
    .date{
        margin:auto;
        margin-left:30px;
        width:765px; 
        height:60px;
        border-radius:10px;
        position:absolute;
    }

    .date>p{
        float:left;
        font-size:14px;
        font-weight:bold;
        margin-left:15px;
        margin-top:20px;
        margin-right:20px;
        letter-spacing: -0.5px;
    }

    .select_date>li{
        float:left;
        width:auto;
        height:28px;
        margin-left:5px;
        margin-top:15px;
    }

    .select-range{
        width:700px;
        margin-left:-10px;
    }

    .select-btn{
        width:60px;
        float:right;
        margin-top:-30px;
    }
    .select-btn button{font-size:13px;}

    #btn_1, #btn_2, #btn_3, #btn_4{
        font-size:12px;
    }

    /*Q&A 테이블*/
    .container{
        height:30%;
        padding-top:50px;
        padding-left:-30px;
        font-size:13px;
    }

    #exclamationmark_icon{
    	padding-left:320px;
        padding-top:35px;
    }
    .container th, #table_category, #table_answer{text-align:center;}

    .table tbody:hover{
        cursor:pointer;
    }

    .qustion_open p, .qustion_answer p{font-size:15px; font-weight:700;}

    .contents p{font-size:13px;}
    
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
    <br><br>
    <!--회원박스-->
    <div class="mypage_top">
        <div class="userbox_1">
        	<img src="<%=request.getContextPath() %>/resources/images/user.png" width="60px" height="60px" align="right">
        </div>
        <div class="userbox_2">
        	<p class="txt">
        		<strong class="userName"><%= loginUser.getNickName() %></strong>님 반갑습니다.
        	</p>
        </div>
        
        <div class="userbox_3">
        
            <div class="userPoint">
                   	적립금 >
            </div>
            <p class="point"><%= poi.getPoint() %>원</p>
            
        </div>
    </div>

    <br><br>

    <!--카테고리 및 내용-->
    <div class="mypage-content">
        <div id="content_1">
            <div id="mp-title"><h2>마이페이지</h2></div>
            <ul>  	
                <li><h3>마이쇼핑</h3></li>
                <div>
                    <a href="<%= contextPath %>/reserve.mp" id="submenu">예매 내역</a> <br>
                    <a href="<%= contextPath %>/refund.mp" id="submenu">취소/환불 내역</a> <br>
                    <a href="<%=contextPath%>/pointList.mp" id="submenu">적립금 내역</a> <br>
                </div><br>
                <li><h3>마이활동</h3></li>
                <div>
                    <a href="<%=request.getContextPath() %>/views/mypage/memberReviewList.jsp" id="submenu">리뷰 내역</a> <br>
                    <a href="<%= contextPath %>/qnaList.mp" id="submenu" style="color:rgb(151, 138, 116)">Q&A 내역</a> <br>
                </div><br>
                <li><h3>마이정보</h3></li>
                <div>
                    <a href="<%=request.getContextPath() %>/views/mypage/pwdVerificationMemUpdate.jsp" id="submenu">회원정보 수정</a> <br>
                    <a href="<%=request.getContextPath() %>/views/mypage/pwdVerificationMemDelete.jsp" id="submenu">회원 탈퇴</a> <br>
                </div>
            </ul>
        </div>
        <div id="content_2">
            <div class="contents">
            <h4 class="contents_tit">Q&A 내역</h4><br>
            <p>● 상품 및 주문(결제/취소/환불) 관련 문의 내역을 확인할 수 있는 공간입니다.</p>
            </div> 

            <div class="container">

                <table class="table">
                  <thead>
                    <tr style="background:rgb(203, 185, 153)">
                      <th width="140">분류</th>
                      <th width="430">제목</th>
                      <th width="110">등록일</th>
                      <th width="110">답변상태</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                    <!--Q&A 내역이 없을 경우-->
                	<% if(list.isEmpty()){ %>
	                    <tr>
	                        <td colspan="4" >
	                            <div id="exclamationmark_icon">
	                                <img src="<%=request.getContextPath() %>/resources/images/exclamationmark.png" width="70px" height="70px"> 
	                            </div>
	                            <br>
	                            <div id="qna_txt">
	                                <p align="center">Q&A 내역이 없습니다.</p>
	                            </div>
	                        </td>
	                    </tr>
	                    <tr>
	                    </tr>
					<% }else{ %>
                    <!--Q&A 내역이 있을 경우 + 답변완료일 경우 -->
	                    <% for(Qna q : list) {%>
			                    <tr class="qustion">
			                      	<td id="table_category">
			                      		<%= q.getqCategoryCode() %>
			                      	</td>
			                      	<td>
			                      		<%= q.getqTitle() %>
			                     	</td>
			                      	<td>
			                      		<%= q.getCreateDate() %>
			                      	</td>
			                      	<td id="table_answer">
                    					<% if(q.getaContent() != null) { %>
                        					답변완료
                    					<% }else { %>
                        					미답변
                   						<% } %>
			                      	</td>
			                    </tr>
			                    <tr class="open" style="display: none">
			                        <td align="center" style="padding-top:50px;">
                                        <button type="button" name="deleteQ" onclick="deleteCheck();">삭제</button>
                                    </td>
			                        <td colspan="3">
			                            <div>
			                                <strong><p>Q.</p></strong>
			                                	문의상품 | <% if(q.getTitle() != null) { %> 
			                                				<%=q.getTitle() %>
                    									<% }else { %>
                        									선택상품 없음
                   										<% } %>
                   							<br><br>
			                                <strong><%= q.getqContent() %></strong> 
			                                <% if(q.getaContent() != null){ %>                            
			                                <hr>		                                
			                                <strong><p>A.</p></strong> 
			                                	답변일 | <%= q.getaCreateDate() %> <br><br>
			                                	<strong><%= q.getaContent() %></strong>
			                            </div>
			                            <% } %>
			                        </td> 
			                    </tr>
                        <% } %>
                    <% } %>                 
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
             <script>
                $(function(){
                    $(".qustion").click(function(){
                        const $tr = $(this).next();

                        if($tr.css("display") == "none"){
                        	$(this).siblings(".open").hide();
                            $tr.show();
                        }else{
                            $tr.hide();
                        }
                    })
                    
                })
            </script>

            <script type="text/javascript">
                function deleteCheck(){
						if(confirm("작성한 문의를 삭제하시겠습니까?")){
                            // 확인
                            location.href = "<%=contextPath%>/qnaUpdate.mp";
                            alert("삭제되었습니다.");
                        }else{
                            // 취소
                            alert("취소되었습니다.");
                        } 			
					}
            </script>
                  </tbody>
                </table>
              </div>   
            
            </div>
        </div>

        

    
    </div>

    <%@ include file="../common/footerbar.jsp" %>
</body>
</html>