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
    

</style>
</head>
<body>
	<%@ include file="../../common/menubar.jsp" %>
	
        <div id="outer">

            <h4 style="font-weight: bolder;" align="center">고객센터</h4>
            <br>
            <hr>
            <div id="faq_area" style="height:auto">
                <a href="">FAQ <i class="fas fa-angle-right"></i></a>
                <div style="height:auto">

                    <table id="faq_tb">
                        <tr class="q">
                            <td width="150">[취소/환불]</td>
                            <td width="660">Q 티켓 구매 취소를 하고싶어요</td>
                            <td width="40"><i class="fas fa-angle-down"></i></td>
                        </tr>
                        <tr class="a">
                            <td></td>
                            <td colspan="2"><div>
                                A
    
                                ▼ 환불 안내 <br>
                                - MY PAGE 클릭 -> 최근 주문 정보 -> 티켓 번호 클릭 -> 환불신청<br>
                                - 본 상품은 특가로 진행되는 상품으로 미사용 티켓에 한하여 구매일로부터 7일 이내에만 환불이 가능합니다. <br>
                                - 티켓 사용 여부 상관없이 환불기간, 유효기간 이후, 전시종료 이후에는 어떠한 사유로든 환불이 불가합니다. <br>
                                - 해당 절차는 환불 규정에 적합하지 않은 상품일 경우 신청이 철회될 수 있습니다. <br>
                                - 결제수단에 따라 환불규정이 각기 다르므로 결제수단 별 환불 기간을 확인해주세요. <br>
                                - 신용카드 : 카드 취소일 로부터 2-5일 이내 이내 카드사별 개별 승인취소 확인이 가능합니다.<br>
                                - 무통장 입금 및 계좌이체 : 취소/환불 접수 시 입력한 환불 계좌로 (평일 기준) 2-3일 이내 입금됩니다.
                            </div></td> 
                        </tr>
                        <tr class="q">
                            <td >[취소/환불]</td>
                            <td>Q 티켓 구매 취소를 하고싶어요</td>
                            <td><i class="fas fa-angle-down"></i></td>
                        </tr>
                        <tr class="a">
                            <td width="150"></td>
                            <td colspan="2" width="700"><div>
                                A
    
                                ▼ 환불 안내 <br>
                                - MY PAGE 클릭 -> 최근 주문 정보 -> 티켓 번호 클릭 -> 환불신청<br>
                                - 본 상품은 특가로 진행되는 상품으로 미사용 티켓에 한하여 구매일로부터 7일 이내에만 환불이 가능합니다. <br>
                                - 티켓 사용 여부 상관없이 환불기간, 유효기간 이후, 전시종료 이후에는 어떠한 사유로든 환불이 불가합니다. <br>
                                - 해당 절차는 환불 규정에 적합하지 않은 상품일 경우 신청이 철회될 수 있습니다. <br>
                                - 결제수단에 따라 환불규정이 각기 다르므로 결제수단 별 환불 기간을 확인해주세요. <br>
                                - 신용카드 : 카드 취소일 로부터 2-5일 이내 이내 카드사별 개별 승인취소 확인이 가능합니다.<br>
                                - 무통장 입금 및 계좌이체 : 취소/환불 접수 시 입력한 환불 계좌로 (평일 기준) 2-3일 이내 입금됩니다.
                            </div></td> 
                        </tr>
                        <tr class="q">
                            <td >[취소/환불]</td>
                            <td>Q 티켓 구매 취소를 하고싶어요</td>
                            <td><i class="fas fa-angle-down"></i></td>
                        </tr>
                        <tr class="a">
                            <td width="150"></td>
                            <td colspan="2" width="700"><div>
                                A
    
                                ▼ 환불 안내 <br>
                                - MY PAGE 클릭 -> 최근 주문 정보 -> 티켓 번호 클릭 -> 환불신청<br>
                                - 본 상품은 특가로 진행되는 상품으로 미사용 티켓에 한하여 구매일로부터 7일 이내에만 환불이 가능합니다. <br>
                                - 티켓 사용 여부 상관없이 환불기간, 유효기간 이후, 전시종료 이후에는 어떠한 사유로든 환불이 불가합니다. <br>
                                - 해당 절차는 환불 규정에 적합하지 않은 상품일 경우 신청이 철회될 수 있습니다. <br>
                                - 결제수단에 따라 환불규정이 각기 다르므로 결제수단 별 환불 기간을 확인해주세요. <br>
                                - 신용카드 : 카드 취소일 로부터 2-5일 이내 이내 카드사별 개별 승인취소 확인이 가능합니다.<br>
                                - 무통장 입금 및 계좌이체 : 취소/환불 접수 시 입력한 환불 계좌로 (평일 기준) 2-3일 이내 입금됩니다.
                            </div></td> 
                        </tr>
                        <tr class="q">
                            <td >[취소/환불]</td>
                            <td>Q 티켓 구매 취소를 하고싶어요</td>
                            <td><i class="fas fa-angle-down"></i></td>
                        </tr>
                        <tr class="a">
                            <td width="150"></td>
                            <td colspan="2" width="700"><div>
                                A
    
                                ▼ 환불 안내 <br>
                                - MY PAGE 클릭 -> 최근 주문 정보 -> 티켓 번호 클릭 -> 환불신청<br>
                                - 본 상품은 특가로 진행되는 상품으로 미사용 티켓에 한하여 구매일로부터 7일 이내에만 환불이 가능합니다. <br>
                                - 티켓 사용 여부 상관없이 환불기간, 유효기간 이후, 전시종료 이후에는 어떠한 사유로든 환불이 불가합니다. <br>
                                - 해당 절차는 환불 규정에 적합하지 않은 상품일 경우 신청이 철회될 수 있습니다. <br>
                                - 결제수단에 따라 환불규정이 각기 다르므로 결제수단 별 환불 기간을 확인해주세요. <br>
                                - 신용카드 : 카드 취소일 로부터 2-5일 이내 이내 카드사별 개별 승인취소 확인이 가능합니다.<br>
                                - 무통장 입금 및 계좌이체 : 취소/환불 접수 시 입력한 환불 계좌로 (평일 기준) 2-3일 이내 입금됩니다.
                            </div></td> 
                        </tr>
                        <tr class="q">
                            <td >[취소/환불]</td>
                            <td>Q 티켓 구매 취소를 하고싶어요</td>
                            <td><i class="fas fa-angle-down"></i></td>
                        </tr>
                        <tr class="a">
                            <td width="150"></td>
                            <td colspan="2" width="700"><div>
                                A
    
                                ▼ 환불 안내 <br>
                                - MY PAGE 클릭 -> 최근 주문 정보 -> 티켓 번호 클릭 -> 환불신청<br>
                                - 본 상품은 특가로 진행되는 상품으로 미사용 티켓에 한하여 구매일로부터 7일 이내에만 환불이 가능합니다. <br>
                                - 티켓 사용 여부 상관없이 환불기간, 유효기간 이후, 전시종료 이후에는 어떠한 사유로든 환불이 불가합니다. <br>
                                - 해당 절차는 환불 규정에 적합하지 않은 상품일 경우 신청이 철회될 수 있습니다. <br>
                                - 결제수단에 따라 환불규정이 각기 다르므로 결제수단 별 환불 기간을 확인해주세요. <br>
                                - 신용카드 : 카드 취소일 로부터 2-5일 이내 이내 카드사별 개별 승인취소 확인이 가능합니다.<br>
                                - 무통장 입금 및 계좌이체 : 취소/환불 접수 시 입력한 환불 계좌로 (평일 기준) 2-3일 이내 입금됩니다.
                            </div></td> 
                        </tr>                   
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
    
            <div id="qna_area">
                <a href="">Q&A <i class="fas fa-angle-right"></i></a>
                <table id="qna_tb">
                    <tr class="qna">
                        <td width="150">[취소/환불]</td>
                        <td width="400">환불신청합니다.(비밀글)</td>
                        <td width=100>닉네임</td>
                        <td width="130">2021-12-12</td>
                        <td width="80">미답변</td>
                    </tr>
                    <tr class="qna">
                        <td>[취소/환불]</td>
                        <td>환불신청합니다.(비밀글)</td>
                        <td>닉네임</td>
                        <td>2021-12-12</td>
                        <td>미답변</td>
                    </tr>
                    <tr class="qna">
                        <td>[취소/환불]</td>
                        <td>환불신청합니다.(비밀글)</td>
                        <td>닉네임</td>
                        <td>2021-12-12</td>
                        <td>미답변</td>
                    </tr>
                    <tr class="qna">
                        <td>[취소/환불]</td>
                        <td>환불신청합니다.(비밀글)</td>
                        <td>닉네임</td>
                        <td>2021-12-12</td>
                        <td>미답변</td>
                    </tr>
                    <tr class="qna">
                        <td>[취소/환불]</td>
                        <td>환불신청합니다.(비밀글)</td>
                        <td>닉네임</td>
                        <td>2021-12-12</td>
                        <td>미답변</td>
                    </tr>
                </table>
            </div>
    
            <div id="area">
                <div id="notice_area">
                    <a href="<%=contextPath%>/list.no?cpage=1">공지사항 <i class="fas fa-angle-right"></i></a>
                    <table id="notice_tb">
                        <tr class="notice" style="border-bottom:1px solid rgb(151, 138, 116)">
                            <td width="320">환불신청합니다.(비밀글)</td>
                            <td width="90">2021-12-12</td>
                        </tr>
                        <tr class="notice">
                            <td width="320">환불신청합니다.(비밀글)</td>
                            <td width="90">2021-12-12</td>
                        </tr>
                        <tr class="notice">
                            <td width="320">환불신청합니다.(비밀글)</td>
                            <td width="90">2021-12-12</td>
                        </tr>
                        <tr class="notice">
                            <td width="320">환불신청합니다.(비밀글)</td>
                            <td width="90">2021-12-12</td>
                        </tr>
                        <tr class="notice">
                            <td width="320">환불신청합니다.(비밀글)</td>
                            <td width="90">2021-12-12</td>
                        </tr>

                    </table>
        
                </div>
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

    <%@ include file="../../common/footerbar.jsp" %>

</body>
</html>