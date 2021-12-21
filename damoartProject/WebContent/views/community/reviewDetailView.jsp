<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

    .wrap{
        background:#e1d5bf;
        color: black;
        width: 1000px;
        height: 1000px;
        margin: auto;
        margin-top: 50px;
    }

    #review_on{
        width: 100%;
        font-size: 20px;
        padding: 60px;
    }
</style>

</head>
<body>


    <%@ include file="../common/menubar.jsp" %>



    <div class="wrap">

        <div class="">
            <br><br>
            <b id="review_on">전시 후기</b>
            <br><br>
        </div>
        <hr>

        <table id="review_detail" border="1" align="center">
            <!-- table로 하니까 border없애고 자연스러운 느낌이 없어서 다르게 시도해볼 것-->
       
            <tr style="font-size: 16px;">
                <th width="350" colspan="2" align="left" >다모아트 특별기획전 후기</th>
                <td width="100" colspan="2" height="50" align="center">ㅇㅇㅇㅇㅇ</td>
            </tr>
            
            <tr>
                <td width="100" align="left">test01</td>
                <td width="300">2021-12-31</td>
                <td colspan="2" width="50">조회수 98</td>
            </tr>

            <tr>
                <td colspan="4">
                    <!-- 이미지 옆 주석같은것은 div로 따로 처리할 것-->
                    <!--이미지 썸네일 크기 따로 생각해 볼 것-->
                    <img src="전시회 이미지" width="120" height="100">
                    <p style="height:200px;">리뷰내용 작성자가 쓴 글이 들어갈 부분</p>
                </td>
            </tr>
            
        </table>
        <br>

        <!--신고버튼-->
        <button>신고</button>
        <!--글쓴이라면 삭제버튼도-->
        <button>삭제</button>
        <hr>
        <p>
        	test01 | 심한욕설비방및모욕  <br>
        	2021-01-01 (신고아이콘) (삭제아이콘)
        </p>
        <p>
        	test01 | 광고홍보댓글 <br>
        	2021-01-01 (신고아이콘) (삭제아이콘)
        </p>
        <hr>
        <div align="center">
        <textarea name="" id="" cols="100" rows="6"></textarea>
        <button>작성하기</button>
        </div>
        <!-- 댓글 ajax-->
        
        <div id="reply-area">
			
			<table border="1" align="center">
				<thead>
					<tr>
						<th>댓글작성</th>
						<% if(loginUser != null) {  // 로그인이 되어있을 경우 %>					
							<!--  로그인만보이도록 -->
							<td>
								<textarea id="replyContent" rows="3" cols="50" style="resize:none"></textarea>
							</td>
							<td><button onclick="insertReply();">댓글등록</button></td>
						<% }else { //로그인이 되어있지 않을 경우 %>
							<td>
								<textarea rows="3" cols="50" style="resize:none" readonly>로그인 후 이용가능한 서비스입니다.</textarea>
							</td>
							<td><button>댓글등록</button></td>
						<% } %>
					</tr>
					
				</thead>
				<tbody>
					
					
					
				</tbody>
			</table>
			
			<br><br>
<!--			
			<script>
				$(function(){
					
					selectReplyList();	
					
					setInterval(selectReplyList, 1000);
				});
				
				// ajax로 댓글작성용
				function insertReply(){
					
					$.ajax({
						url:"rinsert.rv",
						data:{
							content:$("#replyContent").val(),
							rvno: <%=r.getRvNo()%>
							 },
						type:"post",
						success:function(result){
							if(result > 0){ // 댓글작성 성공 => 갱신된 댓글 리스트 조회
								selectReplyList();
								$("#replyContent").val(""); // textarea초기화
							}
						},error:function(){
							console.log("댓글작성용 ajax 통신 실패");
						}
					})
				}
				
			// ajax로 해당 게시글에 딸린 댓글 목록 조회용
			function selectReplyList(){
				$.ajax({
					url:"rlist.rv",
					data:{bno:<%=r.getBoardNo()%>},
					success:function(list){
					
						//console.log(list);
						
						let result = "";
						for(let i=0; i<list.length; i++){
							result += "<tr>"
									+	"<td>" + list[i].replyWriter + "</td>"
									+	"<td>" + list[i].replyContent + "</td>"
									+	"<td>" + list[i].createDate + "</td>"
									+   "</tr>";
						}
						
						$("#reply-area tbody").html(result);
						
					},error:function(){
						console.log("댓글목록 조회용 ajax 통신 실패...");
					}
				})
			} 
			</script>
-->		
		</div>
        <!--목록버튼-->
        
        <div align="right">
            <button>목록</button>
        </div>

    </div>
</body>
</html>