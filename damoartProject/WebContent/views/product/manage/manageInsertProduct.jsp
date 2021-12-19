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
    div{ box-sizing:border-box; }
    .wrapper{
        width: 1000px;
        height: 1000px;
        margin: auto;
        margin-left: auto; 
        margin-right: auto;
        margin-top: 200px
    } 
    form>table{
        width: 600px;
        height: 800px;
        margin: 0 auto;
    }
    table th{text-align: center;}
    table td{padding-left: 20px;}
    input{border: none;}
    #insert{
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
        <div class="name" style="font-size: 30px; font-weight: bolder;">
            	상품등록
        </div>
        <br>
        <hr class="my-2">
        <br>
        <form action="<%= request.getContextPath() %>/manageInsert.pro" method="post" enctype="multipart/form-data">
            <table border=1px>
                <tr>
                    <th>상품코드</th>
                    <td>자동부여</td>
                </tr>
                <tr>
                    <th>등록날짜</th>
                    <td>자동부여</td>
                </tr>
                <tr>
                    <th>타이틀</th>
                    <td><input type="text" name="title" style="width:450px"required></td>
                </tr>
                <tr>
                    <th>지역</th>
                    <td>
                        <input type="checkbox" name="region" id="seoul" value="서울">
                        <label for="seoul">서울</label>
                        
                        <input type="checkbox" name="region" id="ki" value="경기/인천">
                        <label for="ki">경기/인천</label>
                        
                        <input type="checkbox" name="region" id="ck" value="충청/강원">
                        <label for="ck">충청/강원</label>
                        
                        <input type="checkbox" name="region" id="jeonra" value="전라도">
                        <label for="jeonra">전라도</label>
                        
                        <input type="checkbox" name="region" id="kyong" value="경상도">
                        <label for="kyong">경상도</label>
                        
                        <input type="checkbox" name="region" id="jaeju" value="제주">
                        <label for="jaeju">제주도</label>
                    </td>
                </tr>
                <tr>
                    <th>장소</th>
                    <td><input type="text" name="area" style="width:450px" required></td>
                </tr>
                <tr>
                    <th>관람연령</th>
                    <td colspan="2">
                    	<input type="checkbox" name="age" id="all" value="전체이용가">
                        <label for="all">전체이용가 </label>
                        
                        <input type="checkbox" name="age" id="teen" value="중학생">
                        <label for="teen">유아동 </label>
                        
                        <input type="checkbox" name="age" id="high" value="고등학생">
                        <label for="high">청소년 </label>
                        
                        <input type="checkbox" name="age" id="adult" value="성인">
                        <label for="adult">성인 </label>
                   </td>
                </tr>
                <tr>
                    <th>시작일</th>
                    <td><input type="text" name="sDate" style="width:450px" placeholder="20210720 형식으로 입력" required></td>
                </tr>
                <tr>
                    <th>종료일</th>
                    <td><input type="text" name="eDate" style="width:450px" placeholder="20210720 형식으로 입력" required></td>
                </tr>
                <tr>
                    <th>관람시간</th>
                    <td><input type="text" name="time" style="width:450px" placeholder="오전xx시 ~ 오후xx시 형식으로 입력" required></td>
                </tr>
                <tr>
                    <th>성인가격</th>
                    <td><input type="text" name="aPrice" placeholder="숫자만 입력" required></td>
                </tr>
                <tr>
                    <th>청소년가격</th>
                    <td><input type="text" name="tPrice" placeholder="숫자만 입력" required></td>
                </tr>
                <tr>
                    <th>소아가격</th>
                    <td><input type="text" name="cPrice" placeholder="숫자만 입력" required></td>
                </tr>
                <tr>
                    <th>메인포스터</th>
                    <td><input type="file" name="main" required></td>
                </tr>
                <tr>
                    <th>상세포스터</th>
                    <td><input type="file" name="detail" required></td>
                </tr>
                <tr>
                    <th>기타등록사항</th>
                    <td><input type="text" name="etc" placeholder="없으면 - 입력" ></td>
                </tr>
                <tr>
                    <th>품절여부</th>
                    <td>N</td>
                </tr>
            </table>
            <br><br>
            
            <div align="center">
                <button id="insert" class="btn btn-sm" type="submit">등록</button>
                <button id="cancel" class="btn btn-sm" type="reset">취소</button>
            </div>
            
             <br><br>
        </form>
    </div>
    
</body>
</html>