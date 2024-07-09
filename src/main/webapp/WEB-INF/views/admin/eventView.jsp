<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>

<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="../resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&family=Pacifico&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/css/style.css" rel="stylesheet">
    
    <link href="/resources/upload">
    
<style>

    #eventType {
    color: #4a89dc;
    padding-right: 5px;
    font-size: 24px;
    
   
}
   #eventTitle {
    color: #333;
    text-decoration: none;
    font-size: 20px;
    font-family: 'Gothic', sans-serif;
    line-height: 1.2;
    word-break: break-all;
}

</style>    





</head>

<body>
<!-- 네비게이션 시작 -->
         <%@ include file="/WEB-INF/views/include/navigation.jsp" %>
        <div class="container-xxl position-relative p-0">
            

             <div class="container-xxl py-1 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-1 pb-4">
                    <h1 class="section-title ff-secondary text-center text-primary fw-normal">My Fridge Event</h1></br></br>           
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="/index">홈</a></li>                          
                            <li class="breadcrumb-item text-white active" aria-current="page">Event</li>
                        </ol>
                    </nav>                  
                </div>
            </div>
        </div>
     <!-- 본문 시작 -->
 <!-- 흰색 배경 테두리 시작 -->
 <div class="col-12 text-center container">
<div class="col-12">
    <div class="wow fadeInUp" data-wow-delay="0.1s">
       <div class="team-item text-center rounded overflow-hidden">
       
        <!-- 내가 가진 재료로 만들 수 있는 레시피 리스트들 넣어줄 영역 -->
            <div class="container-xxl py-5">
              <div class="container">
                  <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                  <br>
                
                   <!-- 흰색 배경안에서 정렬 해줄 작은 영역 시작 -->
                   <div class="col-lg-9 col-md-10 col-sm-11 col-12 mx-auto"> <!-- 여기서 col-12는 필요에 따라 조정가능. -->
               <div class="content section_delete"  >
                  
  
              <!-- 이벤트 리스트 시작 -->                         
         <tbody> 
                    <div class="container text-center my-1 pt-1 pb-1 text-center wow fadeInUp">
                        <div class="tab-content">
                             <div id="tab-1" class="tab-pane fade show p-0 active">
                                        <div class="row g-4">
                                         <div class="col-lg-20">
                                         
                                             <div class="d-flex align-items-center">
                                             
                                                 <div class="w-100 d-flex flex-column text-start ps-4">
                                                     <h5 class="d-flex justify-content-between border-bottom pb-2">
                                                                                                                                               
   <style type="text/css">
.modalApplySample {background-color:#EFEFEF;border:1px solid #A0A0A0;width:96%;margin:5px 2%;padding:5px 10px;border-radius:3px;}
</style>
<div id="contents_area" class="col-xs-9">

    <div class="talk_list">
        <div class="talk_cont">
<script type="text/javascript" src="https://recipe1.ezmember.co.kr/static/js/ez_dialog.min_20160430.js" charset="utf-8"></script><script type="text/javascript">
<!--
$(document).ready(function()
{
    $('.jq_elips').ellipsis();
    $('[id^=btnSnsShow_]').click(function (e) {
        e.stopPropagation();
        var sq_board = $(this).prop('id').replace('btnSnsShow_','');
        //$(".document_common_layer:not('#sns_div')").hide();
        $(".document_common_layer").not('#sns_div_'+sq_board).hide();

        if ($('#sns_div_'+sq_board).is(':visible')) {
            $('#sns_div_'+sq_board).hide();
        } else {
            $('#sns_div_'+sq_board).show();
        }
    });
});

function sns_show(recipe_no)
{
    $('.sns_div').hide();
    $('#sns_div_'+recipe_no).show();
}

function snsRecipe(site,recipe_no)
{
    var link = _WWW_URL_ + '/event/view.html?seq=432&recipe_no='+recipe_no;
    var title = '가을 무를 활용한 레시피를 알려주세요.';

    EZ.snsSender(site,link,title);
}
//-->
</script>
    
 
 <!--복사 시작////--> <div class="event_view_html"><img src="https://recipe1.ezmember.co.kr/cache/rpe/2023/10/06/3904741c898be652f72940a1a5e7889b.jpg" data-filename="1200x630.jpg" style="width: 100%;"><br><br><!--—당첨자발표 들어갈 자리 /// ----><div class="event_view_cont1">안녕하세요~ My Fridge 입니다. <br>10월 완연한 가을이 왔어요. 조금 쌀쌀해지기도 하고 가을 하늘이 너무 높고 푸르네요. :) <br>지금부터 햇 무가 나오기 시작 하는데요. 가을 무는 달고 시원해 국 또는 김치, 조림 등 많은 요리해 활용되고 있어요.<br>온 가족이 맛있게 먹는 우리 집 만의 특별한 무가 들어간 음식을 소개해 주세요.~^^<br><br>여러분들의 노하우가 담긴 특별한 레시피를 기대합니다. <br>즐거움이 가득한 My Fridge 공모전 주변 분들에게 입소문 많이 내주시길 부탁드려요 :)<br>(*무, 순무, 콜라비, 알타리등 모두 참여 가능합니다.)</div><div class="event_view_cont2_t" style="padding-bottom:6px;">◎ 기간</div><div class="event_view_cont2_3">- 응모 : 2023년 10월 7일~2023년 10월 31일 화요일 오후 5시<br>- 발표 : 2023년 11월 10일 금요일</div><div class="event_view_cont2_t" style="padding-bottom:6px;">◎ 당첨자 선정</div><div class="event_view_cont2_3"><p style="font-size:18px; padding-bottom:8px; font-weight: bold;">- 경 품 : <a href="https://shop.10000recipe.com/" target="_blank" style="text-decoration: underline; color: #46ae4f; font-size: 20px;">My Fridge스토어</a> 적립금 50,000원<br>- 당첨인원 : 총 6명</p>- 주제에 맞는 레시피의 리뷰와 의견, 스크랩 수, 재료계량, 과정 설명, 과정 이미지가 잘 된 레시피와 아이디어가 돋보이는 레시피 대상으로 취합하여 선정 합니다.</div><div class="event_view_cont2_2"><b><b>※ <b>레시피 제목에 '무' 또는 그에 맞는 연상 단어가 꼭 포함</b>이 되어야 참여 인정.</b></b></div><div class="event_view_cont2_2_1"><b><b>※ 해당 월에 수상하신 경우, 해당 월에 진행하는 모든 공모전의 수상 대상에서 제외되며, 해당 월 다음 월에 진행하는 공모전부터 수상대상에 포함됩니다.</b></b></div><div class="event_view_cont2_t" style="padding-bottom:6px;"><b><b>◎ 안내사항</b></b></div><div class="event_view_cont2_3"><b><b>- 공모전 요리 주제에 맞는 레시피를 등록해주세요.<br>- 전문레시피(직접등록/블로그 편집)만 응모 가능합니다<br><span>(※ 응모일 이전에 등록된 레시피는 제외)</span><br>- 주제와 맞지 않는 레시피는 수상 목록에서 제외될 수 있습니다.<br>- 공모전에 응모한 레시피는 재가공하여 My Fridge 영상 컨텐츠로 제작될 수 있습니다.<br>- 당첨자 발표는 따로 SMS를 전송하지 않습니다. 당첨자 발표일을 확인하시고 이벤트 페이지에서 확인하시기 바랍니다. <br> - 공모전 아이디어가 있으시면 [<a href="https://www.10000recipe.com/customer/list.html?bid=3" target="_blank">☞여기</a>]를 통해 알려주세요.<br><span>- TV레시피는 수상대상에서 제외됩니다.</span></b></b></div><div class="event_view_cont2_4">레시피 등록 후 담당자가 검수까지 완료해야 이벤트가 응모되므로 <b>마감날에는 오후 5시 이전에 레시피 등록</b>을 마쳐주셔야 당일 검수가 가능합니다.<div class="event_view_cont2_3"><span>(이후 시간에는 검수가 불가능 하다는 점 참고 바랍니다.)</span></div></div></div><style type="text/css">.event_view_html {letter-spacing:-0.04em;}.event_view_cont1 {font-size:18px; padding: 20px 0 0; line-height: 1.5;}.event_view_cont2_t {font-size: 25px; font-weight: 500; padding:50px 0 0;color: #ff5e5e;}.event_view_cont2 {width: 100%;}.event_view_cont2_1 {width:49%; display:inline-block; font-size:15px; margin-bottom:12px;}.event_view_cont2_1:nth-child(1), .event_view_cont2_1:nth-child(3), .event_view_cont2_1:nth-child(5), .event_view_cont2_1:nth-child(7) {margin-right:11px;}.event_view_cont2_1 a {display: block; border: 1px solid #ddd; border-radius:10px; overflow: hidden;}.event_view_cont2_1_a {width:100px; display: table-cell; vertical-align: middle; position: relative;}.event_view_cont2_1_a img {width: 100%;}.event_view_cont2_1_a b {font-size:34px; display: block; position: absolute; left:6px; top:4px; color: #fff; -webkit-text-shadow:2px 2px 6px rgba(0, 0, 0, 0.8); text-shadow:2px 2px 6px rgba(0, 0, 0, 0.8); font-weight:800; line-height: 1;}.event_view_cont2_1_b {display: table-cell; vertical-align: middle; padding: 0 16px; line-height: 1.4;}.event_view_cont2_2 {font-size: 16px; color: #DD0003; padding: 10px 0; font-weight: bold; text-decoration: underline}.event_view_cont2_2_1 {font-size: 16px; padding:0 0 10px; }.event_view_cont2_2 b {background: #fff262;}.event_view_cont2_3 {font-size: 16px; padding-left:4px; line-height:1.8;}.event_view_cont2_3 span {color: #DD0003}.event_view_cont2_4 {text-align: center; font-size: 18px; line-height:1.5; border-radius:8px; border: 2px solid #DD0003; background: #fffbef; padding:20px 116px; margin-top: 40px;}.event_view_cont2_4 b {color: #DD0003;}.event_view_cont2_t2 {font-size:15px; color:#999; padding:4px 0 0 32px}.event_view_cont2_link {padding:12px 25px; border-radius: 6px; border: 1px solid #ff5e5e; margin:15px 32px;}.event_view_cont2_link_1 {font-size:16px; padding:7px 0}.event_view_cont2_link_1 a {text-decoration: underline; }.event_view_cont2_link_1 span {color: #999; padding-left:6px; font-weight: 300;}.event_view_cont2_5 {font-size:18px; font-weight:300; padding:30px 0 60px; line-height: 1.8; border-bottom:2px solid #eee; margin-bottom:50px;}.event_view_cont2_5 b {color:#DD0003; background: #fff262;}.event_view_cont2_5 span {color: #e77d00; font-weight: 500;}@media (max-width:640px) {.event_view_cont2_4 {padding: 20px; font-size: 17px;}}</style><!--//// 복사 끝-->     <div style="line-height: 17.1429px;"><span style="font-size: 15px;"><br></span></div>
    <div style="line-height: 17.1429px;"><span style="font-size: 15px;"><br></span></div>
    <div style="line-height: 17.1429px;"><a href="javascript:void(0)" onClick="EAD.showDialog({'title':'레시피 연결','url':'/event/html/link.html?event_no=432&sday=20231007&eday=20231031','width':800,'modal':false});"><img src="https://recipe1.ezmember.co.kr/cache/rpe/2016/02/12/77a386e8d43275b11da27cbf32de6f4b.jpg" data-filename="btn_contest.jpg" style="width: 100%;"></a></div>
</div>
<br>
<br>
<a name="contestList"></a>
<div class="event_cont">
    <h3>참여한 레시피
        <b><span>27</span>개</b>
    </h3>
    <ul class="theme_list st3">
        <li>
            <a class="thumbnail" href="/recipe/7011800">
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2023/10/18/f1dfa73a6caad3b611442495abb5b7061_s.jpg" alt="recipe" />
                <div class="caption pad_t_15">
                <br>
                    <p class="jq_elips">경상도식 얼큰 소고기뭇국 끓이는 법 소고기 콩나물무국 레시피</p>
                    <span class="caption_name jq_elips">by 일등감의 쉬운 레시피</span>
                </div>
            </a>
        </li>
        <br>
        <br>
        <li>
            <a class="thumbnail" href="/recipe/7011787">
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2023/10/18/cc8c8370d3b562d194e89cd609c8ee3d1_s.jpg" alt="recipe" />
                <div class="caption pad_t_15">
                <br>
                    <p class="jq_elips">가을무 유채(하루나) 무깍두기 만드는법</p>
                    <span class="caption_name jq_elips">by Tina소울푸드</span>
                </div>
            </a>
        </li>
        <br>
        <br>
        <li>
            <a class="thumbnail" href="/recipe/7011710">
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2023/10/17/28c851cf64f60f5208025e02c79c17901_s.jpg" alt="recipe" />
                <div class="caption pad_t_15">
                <br>
                    <p class="jq_elips">무물김치 가을무 만능천연 소화제 무 깔끔하고 시원하게 드셔보세요 ‼️</p>
                    <span class="caption_name jq_elips">by 즐거운날랄라</span>
                </div>
            </a>
        </li>
        <br>
        <br>
        <li>
            <a class="thumbnail" href="/recipe/7011705">
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2023/10/04/d85ddf32ad051c6f4b3345defa5b81111_s.jpg" alt="recipe" />
                <div class="caption pad_t_15">
                <br>
                    <p class="jq_elips">가을무 소고기육개장!</p>
                    <span class="caption_name jq_elips">by 왕눈이의맛있는이야기</span>
                </div>
            </a>
        </li>
        <br><br>
        
        <li>
            <a class="thumbnail" href="/recipe/7011641">
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2023/10/15/6080e64a9938c31c9e84473bd9fd0bf11_s.jpg" alt="recipe" />
                <div class="caption pad_t_15">
                <br>
                    <p class="jq_elips">소화와 감기예방에 좋은 무차 만드는법</p>
                    <span class="caption_name jq_elips">by Tina소울푸드</span>
                </div>
            </a>
        </li>
        <br><br>
        <li>
            <a class="thumbnail" href="/recipe/7011627">
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2023/10/15/1e41e264aa91d085bdbbca96daacf77c1_s.jpg" alt="recipe" />
                <div class="caption pad_t_15">
                <br>
                    <p class="jq_elips">어묵탕 오뎅탕 레시피 무육수로 시원한 꼬치 어묵국 오뎅국 끓이는 법</p>
                    <span class="caption_name jq_elips">by 일등감의 쉬운 레시피</span>
                </div>
            </a>
        </li>
        <br><br>
        <li>
            <a class="thumbnail" href="/recipe/7011624">
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2023/10/15/b1aa91b7446d376319da1c23b937cc681_s.jpg" alt="recipe" />
                <div class="caption pad_t_15">
                <br>
                    <p class="jq_elips">무나물볶음, 무나물 무채 무침 반찬</p>
                    <span class="caption_name jq_elips">by 일등감의 쉬운 레시피</span>
                </div>
            </a>
        </li>
        <br><br>
        <li>
            <a class="thumbnail" href="/recipe/7011600">
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2023/10/14/c01965daff6d1fd1749a7769cbab9b8b1_s.jpg" alt="recipe" />
                <div class="caption pad_t_15">
                <br>
                    <p class="jq_elips">물김치 담그는 방법 나박물김치 레시피</p>
                    <span class="caption_name jq_elips">by 에궁이궁</span>
                </div>
            </a>
        </li>
        <br><br>
        <li>
            <a class="thumbnail" href="/recipe/7011596">
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2023/10/14/08b14da9af104f667e695d4b6172dac71_s.jpg" alt="recipe" />
                <div class="caption pad_t_15">
                <br>
                    <p class="jq_elips">콩나물무밥 만드는 법 간장 양념장 만들기</p>
                    <span class="caption_name jq_elips">by 승승맘h2</span>
                </div>
            </a>
        </li>
        <br><br>
        <li>
            <a class="thumbnail" href="/recipe/7011569">
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2023/10/13/48646410cf8d74e7fc7e63b00e66ba681_s.jpg" alt="recipe" />
                <div class="caption pad_t_15">
                <br>
                    <p class="jq_elips">초간단 밑반찬 새콤달콤 무생채</p>
                    <span class="caption_name jq_elips">by 뿡씨스터즈</span>
                </div>
            </a>
        </li>
        <br><br>
        <li>
            <a class="thumbnail" href="/recipe/7011543">
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2023/10/13/8de1f645bc6c758849ec4e1666fc34fc1_s.jpg" alt="recipe" />
                <div class="caption pad_t_15">
                <br>
                    <p class="jq_elips">[My Fridge 공모전] 가을무 북엇국</p>
                    <span class="caption_name jq_elips">by 다시봄</span>
                </div>
            </a>
        </li>
        <br><br>
        <li>
            <a class="thumbnail" href="/recipe/7011530">
                <img src="https://recipe1.ezmember.co.kr/cache/recipe/2023/10/13/51b0b3cb0157936d4471c35a3735e51a1_s.png" alt="recipe" />
                <div class="caption pad_t_15">
                <br>
                    <p class="jq_elips">가을 무로 이색 무전 만들기</p>
                    <span class="caption_name jq_elips">by 나봄수니</span>
                </div>
            </a>
        </li>
    </ul>
<nav class="text-center"><ul class="pagination"><li class="active"><a href="/event/view.html?seq=432&sort=&page=1">1</a></li><li><a href="/event/view.html?seq=432&sort=&page=2">2</a></li><li><a href="/event/view.html?seq=432&sort=&page=3">3</a></li></ul></nav>        </div>

<br>
        <div class="row view_btn" >
            <div class="view_btn_r">
              <a href="javascript:void(0)" onClick="snsWriter('facebook')"><img src="https://recipe1.ezmember.co.kr/img/icon_sns_f.gif" data-toggle="tooltip" title="페이스북"></a>
              <a href="javascript:void(0)" onClick="snsWriter('twitter')"><img src="https://recipe1.ezmember.co.kr/img/icon_sns_t.gif" data-toggle="tooltip" title="트위터"></a>
              <a href="javascript:void(0)" onClick="copyBbsUrl()"><img src="https://recipe1.ezmember.co.kr/img/icon_copy.gif" data-toggle="tooltip" title="" data-original-title="주소복사"></a>
            </div>
        </div>
<br>
        <div class="view_reply">
            <div class="reply_tit">댓글 <span>1</span></div>
            <div class="reply_write">
                <form name="frm1">
                                <input type="hidden" name="secret_yn" id="secret_yn" value="n" />
                <div class="info_pic" style="cursor:pointer;" onClick="doSecret('')"><img id="reply_secret_btn" src="https://recipe1.ezmember.co.kr/img/btn_secret.gif" alt="" data-original-title="클릭하시면 비밀글로 본인에게만 내용이 보입니다." data-toggle="tooltip"></div>
                                <div class="input-group" style="position:relative;">
                    <textarea name="comment_tx" id="comment_tx" class="form-control" placeholder="" style="height:100px; width:100%; resize:none;"></textarea>
                    <span class="input-group-btn"><button class="btn btn-default" type="button" style="height:100px; width:100px;" onClick="doCommentSubmit('')">등록</button></span>
                </div>
                </form>
            </div>
            <div id="replyComDiv" style="display:none;">
                <form name="frm2">
                <input type="hidden" name="parent_sq_comment" id="parent_sq_comment"/>
                <div class="reply_write">
                                <input type="hidden" name="secret_yn" id="secret_yn2" value="n" />
                <div class="info_pic" style="cursor:pointer;" onClick="doSecret(2)"><img id="reply_secret_btn2" src="https://recipe1.ezmember.co.kr/img/btn_secret.gif" alt="" data-original-title="클릭하시면 비밀글로 본인에게만 내용이 보입니다." data-toggle="tooltip"></div>
                                <div class="input-group" style="position:relative;width:680px;">
                    <textarea name="comment_tx" id="comment_tx2" class="form-control" placeholder="" style="height:100px; width:100%; resize:none;"></textarea>
                    <span class="input-group-btn"><button class="btn btn-default" type="button" style="height:100px; width:100px;" onClick="doCommentSubmit(2)">등록</button></span>
                </div>
                </div>
                </form>
            </div>

            <div id="next_comment"></div>
            <div class="reply_more" style="display:none;"><a href="javascript:void(0);">이전댓글 더보기</a></div>

        </div><!--/view_reply-->
    </div><!--/talk_list-->
</div><!-- /contents_area -->

<div id="vImageModal" class="modal" role="dialog" aria-hidden="true">
    <div id="vImageModalDialog" class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <img id="vImageModalSrc" src="">
            </div>
        </div>
    </div>
</div>

                  </tbody>
            <!-- 레시피 리스트 종료 -->    
      
                     
                     <!-- 페이징 처리 끝 -->

                    </div>
                   </div>
                 </div>
             </div>
          </div>
       </div>
     </div>
  </div>
 </div>    
</div>             
  <!-- 본문 끝 -->


    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    
      <!-- footer 시작 -->  
      <%@ include file="/WEB-INF/views/include/footer.jsp" %>
      <!-- footer 종료 --> 
</body>

</html>