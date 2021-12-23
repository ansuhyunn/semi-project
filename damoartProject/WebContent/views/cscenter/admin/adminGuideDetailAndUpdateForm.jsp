<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ 
	page import="com.kh.common.model.vo.Attachment, com.kh.cscenter.model.vo.Guide"
%>
    
<% 
	Guide g = (Guide)request.getAttribute("g");
	Attachment at = (Attachment)request.getAttribute("at");
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
        div{ box-sizing:border-box;}
        
    
        #outer{
            /* border:1px solid black; */
            width:1000px; 
            height:auto; 
            padding:20px;
            margin:auto;
            margin-top:150px;
            margin-left:230px;
        }
    
        #inner{
            width:100%;
            margin-top:40px;
        }
    
        #enroll-form input, #enroll-form textarea{
            width:100%;
            box-sizing:border-box;
        }
        th{
            height:40px;
            background:rgb(203, 185, 153);
        }
    
        #button{
        width:820px;
        margin:auto;
        margin-top:10px;
        }

        #button>div{
            width:50%;
            float:left;
        }
    
        #delete, #deleteCancel{
            background-color:rgb(203, 185, 153);
            color:rgb(64, 64, 64);
            font-weight:600;
        }
    
        #insert, #list, #deleteCheck{
            background-color:rgb(151, 138, 116);
            color:white;
        }
    
        #enroll-tb{
            border:1px solid rgb(173, 157, 128);
        }
    
        #myModal{
    	padding-top:150px;
   		}
    
    </style>
    </head>
    <body>
        <%@ include file="../../common/manageMenubar_2.jsp" %>
    
        <div id="outer">
            <br><br>
            <h4 style="font-weight: bolder;">이용안내 관리</h4>
            
            <br>
            <hr>
            <div id="inner" align="center">
                <form id="enroll-form" action="<%=contextPath%>/update.gu" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="gno" value="<%=g.getGuideNo()%>"> 
                    <table id="enroll-tb">
                        <tr style="border-bottom:1px solid rgb(173, 157, 128); border-top:1px solid rgb(173, 157, 128)">
                            <th width="120">&nbsp;&nbsp;&nbsp;제목</th>
                            <td width="700"><input type="text" size="80" required name="title" value="<%=g.getGuideTitle()%>")></td>
                        </tr>
                        <%if(at == null) { %>
                            <tr style="border-bottom:1px solid rgb(173, 157, 128)">
                                <th>&nbsp;&nbsp;&nbsp;첨부 파일</th>
                                <td><input type="file" name="upfile"></td>
                            </tr>
                        <% }else { %>
                            <tr style="border-bottom:1px solid rgb(173, 157, 128)">
                                <th>&nbsp;&nbsp;&nbsp;첨부 파일</th>
                                <td>
                                                                               첨부파일 : <%=at.getOriginName()%>
                                    <input type="hidden" name="OriginFileNo" value="<%=at.getFileNo()%>">
                                    <input type="file" name="upfile">
                                </td>
                            </tr>
                        <% } %>
                        <tr style="border-bottom:1px solid rgb(173, 157, 128)">
                            <th>&nbsp;&nbsp;&nbsp;상태</th>
                            <td>
                                <select name="status" required>
                                    <option value="">--선택--</option>
                                    <option value="Y">게시중</option>
                                    <option value="N">숨김</option>
                                </select>
                                <script>
                                    $(function() {
                                        $("#enroll-tb option").each(function(){
                                            if($(this).val()=="<%=g.getStatus()%>") {
                                                $(this).attr("selected", true);
                                            }
                                        })
                                    })
                                </script>
                            </td>
                        </tr>
                        <tr >
                            <th>&nbsp;&nbsp;&nbsp;내용</th>
                            <td><textarea name="content" id=""rows="20" required style="resize:none;"><%=g.getGuideContent()%></textarea></td>
                        </tr>
                    </table>
                    <br>
                    <div id="button" align="left">
                        <div>
                            <a id="list" href="<%= contextPath %>/adminList.gu?cpage=1" class="btn btn-sm">목록가기</a>			
                        </div>
                        <div align="right">
                            <a class="btn btn-sm" id="delete" data-toggle="modal" data-target="#myModal" type="button">삭제하기</a>
                            <button type="submit" class="btn btn-sm" id="insert">등록하기</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
        <!-- The Modal -->
		<div class="modal" id="myModal">
		  <div class="modal-dialog modal-sm">
		    <div class="modal-content">
		
		      <!-- Modal body -->
		      <div class="modal-body" align="center">
		        	삭제하시겠습니까?
		      </div>
		
		      <!-- Modal footer -->
		      <div class="modal-footer">
		      	<button id="deleteCancel" type="button" class="btn" data-dismiss="modal">취소</button>
		      	<button id ="deleteCheck" type="button" class="btn" data-dismiss="modal" onclick="location.href='<%=contextPath%>/delete.gu?gno=<%=g.getGuideNo()%>';">확인</button>
			  </div>	
		    </div>
		  </div>
		</div>
    </body>
    </html>