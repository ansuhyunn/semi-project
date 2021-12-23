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
    div{ box-sizing:border-box;}
    

    #outer{
		/* border:1px solid black; */
        width:1000px; 
        height:auto; 
        padding:40px;
        margin:auto;
    }

    #outer>a{
        color:rgb(64, 64, 64);
    }


    #enroll-form table input, #enroll-form textarea{
        width:100%;
        box-sizing:border-box;
    }
    th{
        height:40px;
        background:rgb(203, 185, 153);
    }

    #button{
        width:85%;
    }

    #cancel{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }

    #insert, #proSelect, #searchbtn{
        background-color:rgb(151, 138, 116);
        color:white;
    }

    #enroll-tb{
        border:1px solid rgb(173, 157, 128);
    }

    #button{
        text-align:right;
    }

    #pwd{
        background:rgb(203, 185, 153);
        font-weight: 700;
    }
    
    #result{
    	height:auto;
    }


</style>
</head>
<body>
    <%@ include file="../../common/menubar.jsp" %>

    <div id="outer">
        <a href="">고객센터</a>&gt<a href=""><b>Q&A</b></a>
        <br><br>
		<h4 style="font-weight:bolder;" align="center">Q&A</h4>
        <br>
        <hr>
        <br><br>
        <div id="inner" align="center">
            <form id="enroll-form" action="<%=contextPath%>/insert.qa" method="post" enctype="multipart/form-data">
                <table id="enroll-tb">
                    <tr style="border-bottom:1px solid rgb(173, 157, 128); border-top:1px solid rgb(173, 157, 128)">
                        <th width="120">&nbsp;&nbsp;&nbsp;제목</th>
                        <td width="700" colspan="3"><input type="text" size="80" required name="title"></td>
                    </tr>
                    <tr>
                        <th>&nbsp;&nbsp;&nbsp;분류</th>
                        <td colspan="3">
                            <select name="category" required>
                            	<option value="">--선택--</option>
                                <option value="Q1">[티켓]</option>
                                <option value="Q2">[취소/환불]</option>
                                <option value="Q3">[주문/결제]</option>
                                <option value="Q4">[상품]</option>
                                <option value="Q5">[기타]</option>
                            </select>
                        </td>
                    </tr>
                    <tr style="border-bottom:1px solid rgb(173, 157, 128); border-top:1px solid rgb(173, 157, 128)">
                        <th >&nbsp;&nbsp;&nbsp;상품선택</th>
                        <td colspan="3">
                            <button type="button" data-toggle="modal" data-target="#myModal">상품 선택</button>
                            <span id="select-result"></span>
                        </td>
                    </tr>
                    <% if(loginUser != null) {%>  
                    	<input type="hidden" name="memNo" value="<%=loginUser.getMemNo()%>"> 
            			<input type="hidden" name="nickName" value="<%=loginUser.getNickName()%>"> 
                    <% }else { %>
	                    <tr>
	                        <th>&nbsp;&nbsp;&nbsp;작성자</th>  <!-- 비회원 닉네임 입력시 중복 검사하기 -->
	                        <td><input type="text" name="nickName"></td>
	                        <td id="pwd">&nbsp;&nbsp;&nbsp;비밀번호</td>
	                        <td><input type="password" name="pwd"></td>
	                    </tr>
                    <% } %>
                    <tr style="border-bottom:1px solid rgb(173, 157, 128); border-top:1px solid rgb(173, 157, 128)">
                        <th>&nbsp;&nbsp;&nbsp;첨부 파일</th>
                        <td colspan="3"><input type="file" name="upfile"></td>
                    </tr>

                    <tr style="border-bottom:1px solid rgb(173, 157, 128)">
                        <th>&nbsp;&nbsp;&nbsp;내용</th>
                        <td colspan="3"><textarea name="content" id=""rows="20" required style="resize:none;"></textarea></td>
                    </tr>
                </table>
                <br>
                <div id="button" align="right">
                    <input type="checkbox" style="zoom:1.5;" name="secret" value="Y">비밀글 <br><br>
                    <a href="<%=contextPath%>/list.qa?cpage=1" class="btn btn-sm" id="cancel">취소하기</a>
                    <button type="submit" class="btn btn-sm" id="insert">등록하기</button>
                </div>
            </form>
        </div>
    </div>
    
    <!-- The Modal -->
	<div class="modal" id="myModal">
	  <div class="modal-dialog">
	    <div class="modal-content">
	
	      <!-- Modal Header -->
	      <div class="modal-header">
	        <h4 class="modal-title">상품 선택</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	
	      <!-- Modal body -->
	      <div class="modal-body">
	        	전시 이름으로 검색 : <input type="text" id="proSearch" placeholder="키워드를 입력하세요">
            <button type="button" onclick="searchbtn();" id="searchbtn" class="btn btn-sm">검색</button><br><br>
            <div id="result"></div><br>
	      </div>
	
	      <!-- Modal footer -->
	      <div class="modal-footer">
	        <button type="button" class="btn" data-dismiss="modal" id="proSelect" onclick="select();">선택</button>
	      </div>
	
	    </div>
	  </div>
	</div>

    <script>
        function searchbtn() {
            $.ajax({
                url:"qnaSearchPro.qa",
                data:{keyword:$("#proSearch").val()},
                success:function(result){
					console.log("성공");
                    let value = "";
                    for(let i=0; i<result.length; i++){
                        value += "<tr height='80'>"
                        			+ "<td width='20'><input type='radio' name='selectpro' value='" + result[i].pNo + "'></td>"
                                    + "<td width='70'><img src=" + result[i].mainImg + " width='60' height='70'><td><br>" 
                                    + "<td>" + result[i].title + "</td>"
                                + "</tr>"
                    }
                    $("#result").html(value);
                },error:function(result) {
                    console.log("ajax 통신 실패");
                }
            })
        }
        
        function select() {
        	$.ajax({
        		url:"proSelect.qa",
        		data:{selectpro:$("input[name='selectpro']:checked").val()},
        		success:function(result){
					console.log("성공");
					
					let value="";
					value = "<input type=hidden name='pno' value='" + result.pNo + "'> <img src=" + result.mainImg + " width='60' height='70'>&nbsp;&nbsp;&nbsp;" + result.title;
					
					$("#select-result").html(value);
					$("#proSearch").val("");
					$("#result").text("");
        		},error:function(result) {
        			console.log("ajax 통신 실패");
        		}
        	})
        }
    </script>
    <%@ include file="../../common/footerbar.jsp" %>
</body>
</html>