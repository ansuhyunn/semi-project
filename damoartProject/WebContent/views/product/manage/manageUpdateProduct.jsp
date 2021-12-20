<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ 
	page import="java.util.ArrayList, com.kh.common.model.vo.Attachment, com.kh.product.model.vo.Product"

%>
    
<% 
	Product p = (Product)request.getAttribute("p");
	Attachment at1 = (Attachment)request.getAttribute("at1");
	Attachment at2 = (Attachment)request.getAttribute("at2");
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    div{ box-sizing:border-box; }
    .wrapper{
        width: 1000px;
        height: auto;
        margin: auto;
        margin-left: auto; 
        margin-right: auto;
        margin-top: 200px
    } 
    .name{
    	font-size: 16px;
    	font-weight: border;
    }
    form>table{
        width: 800px;
        height: 800px;
        margin: 0 auto;
    }
    #table th{text-align: center;}
    #table td{padding-left: 20px;}
    input{border: none;}
    #insert, #back{
        background-color:rgb(203, 185, 153);
        color:rgb(64, 64, 64);
        font-weight:600;
    }
    #cancel{
        background-color:rgb(151, 138, 116);
        color:white;
    }

</style>    
</head>
<body>

	<%@ include file="../../common/manageMenubar_2.jsp" %>
	
    <div class="wrapper">
        <div class="name" >
            <h4>상품 상세 조회</h4>	
		</div>
		<hr class="my-2">
		<br>
        </div>
        <form id="updateForm" action="<%=contextPath%>/manageUpdate.pro" method="post" enctype="multipart/form-data">
            <table id="table" border=1px;>
                <tr>
                    <th>상품코드</th>
                    <td>
                    <input type="text" name="pNo" value="<%= p.getpNo() %>" readonly>		<!-- disabled로 하면 값이 아얘 안넘어감 -->
                    </td>
                </tr>
                <tr>
                    <th>등록날짜</th>
                    <td>
                    <input type="text" name="enrollDate" value="<%= p.getEnrollDate() %>" readonly>
                    </td>
                </tr>
                <tr>
                    <th>타이틀</th>
                    <td><input type="text" name="title" style="width:450px" value="<%= p.getTitle() %>" required></td>
                </tr>
                <tr>
                    <th>지역</th>
                    <td>
                    	<input type="checkbox" id="check1" name="region" id="seoul" value="서울">
                        <label for="seoul">서울</label>
                        
                        <input type="checkbox" id="check1" name="region" id="ki" value="경기/인천">
                        <label for="ki">경기/인천</label>
                        
                        <input type="checkbox" id="check1" name="region" id="ck" value="충청/강원">
                        <label for="ck">충청/강원</label>
                        
                        <input type="checkbox" id="check1" name="region" id="jeonra" value="전라도">
                        <label for="jeonra">전라도</label>
                        
                        <input type="checkbox" id="check1" name="region" id="kyong" value="경상도">
                        <label for="kyong">경상도</label>
                        
                        <input type="checkbox" id="check1" name="region" id="jaeju" value="제주">
                        <label for="jaeju">제주도</label>
                        <script>
	                        $(function(){
	                    		$("input:checkbox[name=region]").each(function(){		
	                    			if($(this).val() == "<%= p.getRegion() %>"){	
	                    				$(this).attr("checked", true);
	                    			}	
	                    		})
	                    	})
                        </script>
                    </td>
                </tr>
                <tr>
                    <th>장소</th>
                    <td><input type="text" name="area" style="width:450px" value="<%= p.getArea() %>" required></td>
                </tr>
                <tr>
                    <th>관람연령</th>
                    <td colspan="2">
                    	<input type="checkbox" name="age" id="all" value="전체이용가">
                        <label for="all">전체이용가 </label>
                        
                        <input type="checkbox" name="age" id="child" value="유아동">
                        <label for="teen">유아동 </label>
                        
                        <input type="checkbox" name="age" id="teen" value="청소년">
                        <label for="high">청소년 </label>
                        
                        <input type="checkbox" name="age" id="adult" value="성인">
                        <label for="adult">성인 </label>
                         <script>
                        	$(function(){
                        		$("input:checkbox[name=age]").each(function(){		
                        			if($(this).val() == "<%= p.getAge() %>"){	
                        				$(this).attr("checked", true);
                        			}	
                        		})
                        	})
                        </script>
                   </td>
                </tr>
                <tr>
                    <th>시작일</th>
                    <td><input type="text" name="sDate" style="width:450px" value="<%= p.getsDate() %>" required></td>
                </tr>
                <tr>
                    <th>종료일</th>
                    <td><input type="text" name="eDate" style="width:450px" value="<%= p.geteDate() %>" required></td>
                </tr>
                <tr>
                    <th>관람시간</th>
                    <td><input type="text" name="time" style="width:450px" value="<%= p.getTime() %>" required></td>
                </tr>
                <tr>
                    <th>성인가격</th>
                    <td><input type="text" name="aPrice" style="width:450px" value="<%= p.getaPrice() %>" required></td>
                </tr>
                <tr>
                    <th>청소년가격</th>
                    <td><input type="text" name="tPrice" style="width:450px" value="<%= p.gettPrice() %>" required></td>
                </tr>
                <tr>
                    <th>소아가격</th>
                    <td><input type="text" name="cPrice" style="width:450px" value="<%= p.getcPrice() %>" required></td>
                </tr>
                <tr>
                    <th>메인포스터</th>
                    <td>
	                    <%= at1.getOriginName() %>
	                    <input type="hidden" name="originFileNo" value="<%= at1.getFileNo() %>">
	                    <input type="file" name="main">
                    </td>
                </tr>
                <tr>
                    <th>상세포스터</th>
                    <td>
                    	<%= at2.getOriginName() %>
	                    <input type="hidden" name="originFileNo" value="<%= at2.getFileNo() %>">
	                    <input type="file" name="detail">
                    </td>
                </tr>
                <tr>
                    <th>기타등록사항</th>
                    <td><input type="text" name="etc" style="width:450px" value="<%= p.getEtc() %>"></td>
                </tr>
                <tr>
                    <th>품절여부</th>
                    <td><input type="text" name="soldOut" style="width:450px" value="<%= p.getSoldOut() %>" required></td>
                </tr>
            </table>
            <br><br>
            
            <div align="center">
                <button id="insert" class="btn btn-sm" type="submit">수정</button>
                <button id="cancel" class="btn btn-sm" type="reset">취소</button>
                <button id="back" class="btn btn-sm" type="button" onclick="history.back()">목록으로</button>
            </div>
            
             <br><br>
        </form>
    </div>

</body>
</html>