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
        width: 800px;
        height: 1000px;
    }
    form>table{
        width: 600px;
        height: 800px;
        margin: 0 auto;
    }
    table th{text-align: center;}
    table td{padding-left: 20px;}
    input{border: none;}

</style>    
</head>
<body>
    <div class="wrapper">
        <div class="name" style="font-size: 30px; font-weight: bolder;">
            	상품등록
        </div>
        <hr class="my-2">
        <br>
        <form action="" method="post">
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
                        <label for="jaeju">제주</label>
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
                        <label for="all">전체이용가</label>
                        
                        <input type="checkbox" name="age" id="24" value="24개월 이상">
                        <label for="24">24개월</label>
                        
                        <input type="checkbox" name="age" id="36" value="36개월 이상">
                        <label for="36">36개월</label>
                        
                        <input type="checkbox" name="age" id="48" value="48개월 이상">
                        <label for="48">48개월</label>
                        
                        <br>
                        
                        <input type="checkbox" name="age" id="child" value="초등학생">
                        <label for="child">초등학생</label>
                        
                        <input type="checkbox" name="region" id="teen" value="중학생">
                        <label for="teen">중학생</label>
                        
                        <input type="checkbox" name="region" id="high" value="고등학생">
                        <label for="high">고등학생</label>
                        
                        <input type="checkbox" name="region" id="adult" value="성인">
                        <label for="adult">성인</label>
                   </td>
                </tr>
                <tr>
                    <th>시작일</th>
                    <td><input type="text" name="sDate" style="width:450px" placeholder="2021.07.20 형식으로 입력" required></td>
                </tr>
                <tr>
                    <th>종료일</th>
                    <td><input type="text" name="eDate" style="width:450px" placeholder="2021.07.20 형식으로 입력" required></td>
                </tr>
                <tr>
                    <th>관람시간</th>
                    <td><input type="text" name="time" style="width:450px" required></td>
                </tr>
                <tr>
                    <th>성인가격</th>
                    <td><input type="text" name="aPrice" required></td>
                </tr>
                <tr>
                    <th>청소년가격</th>
                    <td><input type="text" name="tPrice" required></td>
                </tr>
                <tr>
                    <th>소아가격</th>
                    <td><input type="text" name="cPrice" required></td>
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
                    <td><input type="text" name="etc"></td>
                </tr>
                <tr>
                    <th>품절여부</th>
                    <td><input type="text" name="soldout" required></td>
                </tr>
            </table>
            <br><br>
            
            <div align="center">
                <button type="submit">등록</button>
                <button type="reset">취소</button>
            </div>
            
             <br><br>
        </form>
    </div>
    
</body>
</html>