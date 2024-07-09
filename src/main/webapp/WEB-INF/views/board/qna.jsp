<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!-- 한글인코딩 추가 -->

<%@ include file="/WEB-INF/views/include/taglib.jsp" %> 

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
<meta http-equiv="X-UA-Compatible" content="ie=edge">



   <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
   <!-- qna -->
   <link href="/resources/css/qna2.css" rel="stylesheet">   
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"rel="stylesheet">
    <!-- Favicon -->
    <link href="/resources/img/favicon.ico" rel="icon">

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
<script>
$(document).ready(function() {
    
      $("#btnWrite").on("click", function() {  //글쓰기 버튼
         document.bbsForm.qnaSeq.value = "";
         document.bbsForm.action = "/board/qnaWriteForm";
         document.bbsForm.submit();
      });
});
function fn_view(qnaSeq)
{
   document.bbsForm.qnaSeq.value = qnaSeq;  
   document.bbsForm.action = "/board/qnaView";
   document.bbsForm.submit();
}

function fn_list(curPage)
{
   document.bbsForm.qnaSeq.value = "";
   document.bbsForm.curPage.value = curPage;  
   document.bbsForm.action = "/board/qna";
   document.bbsForm.submit();
}

</script>   
<script type="text/javascript" sc="/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/icia.common.js"></script>
<script type="text/javascript" src="/resources/js/icia.ajax.js"></script>
<script type="text/javascript" src="/resources/js/jquery.js"></script>




</head>
<body>
       
        <!-- 네비게이션 시작 -->
         <%@ include file="/WEB-INF/views/include/navigation.jsp" %>
        <div class="container-xxl position-relative p-0">
            

             <div class="container-xxl py-1 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-1 pb-4">
                    <h1 class="section-title ff-secondary text-center text-primary fw-normal">Q&A</h1>
                    </br></br>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="/index">홈</a></li>                          
                            <li class="breadcrumb-item text-white active" aria-current="page">Q&A</li>
                        </ol>
                    </nav>
                    
                </div>
            </div>
        </div>            
                
                
     <!-- 본문 흰색 바탕 레이아웃 -->
   <div class="col-12 text-center container">
     <div class="col-12">
       <div class="wow fadeInUp" data-wow-delay="0.1s">
          <div class="team-item text-center rounded overflow-hidden">
          <br>
          <br>
                
                <!-- 본문 시작 -->
                
           <!-- 여러 사람들에게 물어본 결과 기존에 있던 엄지척 QnA는 위에 있는 남색배경 QnA가 있기 때문에 필요 없을거 같다는 의견이 압도적이여서 주석처리로 삭제해놓았습니다 -->
        <!--        <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.1s">
                    <ul class="nav  d-inline-flex justify-content-center border-bottom mb-1">
                        <li class="nav-item">
                            <a class="d-flex align-items-center text-start mx-3 ms-0 pb-3 active" data-bs-toggle="pill" href="#tab-1">                    
                                <div class="ps-3">                                   
                                    <h5 class="mt-n1 mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
  <path d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z"/>
</svg> Q&A</h5>
                                </div>
                            </a>
                        </li>
                      </ul>                    
                </div>
       -->
                
                
         <!--  -->
                <div class="container" style="font-size: 18px">
                <div class="" data-wow-delay="0.1s">
                    <ul class="nav  d-inline-flex justify-content-center border-bottom mb-1">
                        <li class="nav-item">
                            <a class="d-flex align-items-center text-start mx-3 ms-0 pb-3 active" data-bs-toggle="pill" href="#tab-1">                    
                                <div class="ps-3" >                                   
                                    <h3 class="mt-n1 mb-0"><span class="material-symbols-outlined" style="font-size:40px;position:relative;top:10px;">contact_support</span>자주 묻는 질문</h3>
                                </div>
                            </a>
                        </li>
                      </ul>                    
                </div>
  
  
  <br>              
 <ul class="qna" style="text-align: left;">
          <li style=" text-align: center; background-color: orange; padding: 20px ;">
         </li>
            <li style=" border-top: 1px solid grey; ">
            &emsp;<i class="fa-solid fa-q" style="color:orange;"></i>&emsp;
                <input type="checkbox" id="qna-1">
                <label for="qna-1">레시피 랭킹의 레시피 노출순위의 기준이 무엇인가요?</label>              
                <div>                
                    <p><i class="fa-solid fa-a" style="color:orange;"></i>&emsp;추천순 : 레시피에 대한 My Fridge 회원들의 추천이 모아져 가장 많은 추천을 받은 순으로 레시피를 보여줍니다. </p>
                    <p></i>&emsp;&nbsp;&nbsp;&nbsp;조회순 : My Frige 사용자들의 제일 많이 찾아본 레시피 순으로 랭킹에 레시피를 보여줍니다.</p>
                </div>
            </li>
            <li style="">
            &emsp;<i class="fa-solid fa-q" style="color:orange;"></i>&emsp;
                <input type="checkbox" id="qna-2">
                <label for="qna-2">나만의 냉장고에서 재료를 지우려면 어떻게 해야하나요?</label>
                <div>
                    <p><i class="fa-solid fa-a" style="color:orange;"></i>&emsp;나만의 냉장고 페이지에 들어가신 후 나만의 재료 리스트에서 삭제하기 원하는 재료 이름 앞의 하얀색 체크박스를 눌러 체크 후</p>
                    <p>&emsp;&nbsp;&nbsp;&nbsp;재료 리스트의 왼쪽 하단의 빨간색 삭제 버튼을 누르면 체크한 재료를 삭제 하실 수 있습니다.</p>
                </div>
            </li>
            <li style="">
            &emsp;<i class="fa-solid fa-q" style="color:orange;"></i>&emsp;
                <input type="checkbox" id="qna-3">
                <label for="qna-3">회원 탈퇴 후 이전에 사용하던 아이디로 다시 재가입 할 수 있나요?</label>
                <div>
                    <p><i class="fa-solid fa-a" style="color:orange;"></i>&emsp;이전에 사용하던 아이디는 다시 사용하실 수 없습니다. </p>
                    <p>&emsp;&nbsp;&nbsp;&nbsp;회원탈퇴 시 탈퇴 약관에 설명되어 있으니 반드시 읽어보시고 신중하게 탈퇴하시기 바랍니다.</p>
                </div>
            </li>
            <li style="">
            &emsp;<i class="fa-solid fa-q" style="color:orange;"></i>&emsp;
                <input type="checkbox" id="qna-4">
                <label for="qna-4">비회원에게 제한된 서비스는 무엇이 있나요?</label>
                <div>
                    <p><i class="fa-solid fa-a" style="color:orange;"></i>&emsp;게시판에 게시물 작성, 레시피 찜하기, 나만의 냉장고 기능을 사용하실 수 없습니다.</p> 
               <p></i>&emsp;&nbsp;&nbsp;&nbsp;해당 서비스를 이용하시려면 개인 계정 회원으로 가입 및 로그인해 주시기 바랍니다.</p> 
               
                </div>
            </li>
            <!-- border-left: 1px solid grey; border-right: 1px solid grey;  -->
            <li style=" border-bottom: 1px solid grey;">
            &emsp;<i class="fa-solid fa-q" style="color:orange;"></i>&emsp;
                <input type="checkbox" id="qna-5">
                <label for="qna-5">사용자가 레시피를 등록할 수 있나요?</label>
                <div>
                    <p><i class="fa-solid fa-a" style="color:orange;"></i>&emsp;My Fridge 회원이라면 누구나 레시피 등록 페이지에서 나만의 레시피를 등록할 수 있습니다.</p>
                    <p>&emsp;&nbsp;&nbsp;&nbsp;나만의 창의력과 노하우가 담긴 레시피를 공유하고 뽐내보세요.</p>
                </div>
            </li>
        </ul>
        </br>
        </br>
        </br>
        </br>
      
      
      
      
      <!-- 문의하기 섹션 시작 -->
        <div class="" data-wow-delay="0.1s">
                    <ul class="nav  d-inline-flex justify-content-center border-bottom mb-1">
                        <li class="nav-item">
                            <a class="d-flex align-items-center text-start mx-3 ms-0 pb-3 active" data-bs-toggle="pill" href="#tab-1">                    
                                <div class="ps-3">                                   
                                    <h3 class="mt-n1 mb-0"><span class="material-symbols-outlined"style="font-size:40px;position:relative;top:10px;">note_alt</span>문의하기</h3>
                                </div>
                            </a>
                        </li>
                      </ul>                    
                </div>
                </div>
                <br> <!-- 문의하기와 게시물 리스트 사이에 공간 주기 위한 br -->
                               
      <div class="container" style="font-size: 18px">          
      <table class="table table-hover">
      <thead>
      <tr style="background-color: #ffa500;color:black">
         <th scope="col" class="text-center" style="width:10%">번호</th>
         <th scope="col" class="text-center" style="width:55%">제목</th>
         <th scope="col" class="text-center" style="width:10%">작성자</th>
         <th scope="col" class="text-center" style="width:15%">등록일</th> 
         <th scope="col" class="text-center" style="width:15%">답변확인</th>      
      </tr>
      </thead>
      <tbody>
<c:if test ="${!empty qnaList}">  
   <c:forEach var = "qnaBoard" items = "${qnaList}" varStatus = "status">

      <tr>
      <c:choose>
         <c:when test = "${qnaBoard.qnaIndent eq 0}">
         <td class="text-center"style="color:black">${qnaBoard.qnaSeq}</td>  
         </c:when>
         <c:otherwise>
         <td class="text-center"></td>
         </c:otherwise>
     </c:choose>
         <td>
            <a href="javascript:void(0)" onclick="fn_view(${qnaBoard.qnaSeq})"> <!-- 현재 게시물의 대한 번호를 가지고감 --> 
     <c:if test ="${qnaBoard.qnaIndent > 0}">
           <img src = "/resources/images/sss.gif" style = "margin-left:${qnaBoard.qnaIndent}em" />
      </c:if>      
               <c:out value = "${qnaBoard.qnaTitle}" />  <!-- 제목 -->
            </a>

         </td>
       <td class="text-center" style="color:black">${qnaBoard.userName}</td> <!-- 작성자 -->
       <td class="text-center" style="color:black">${qnaBoard.regDate}</td> <!-- 등록일 -->
       <td class="text-center" style="color:black">${qnaBoard.ansStatus}</td> <!-- 답변확인 -->     
      </tr>
      </c:forEach>
</c:if>      
      </tbody>
      
      </table>
<%
   if(com.icia.web.util.CookieUtil.getCookie(request, (String)request.getAttribute("AUTH_COOKIE_NAME")) != null)//쿠키가 있을때(로그인 성공)
   {
%>      
      <div class="container" style="font-size: 18px; text-align: left;">         
     <button type="button" id="btnWrite" class ="mybtn"><i class="fa-solid fa-pen"></i></button> <!-- 글쓰기 버튼 awsome font쓴거임 -->
     </div> 
<%
   }
%>

         <!-- 페이징 처리 시작 -->
            <nav>
               <ul class="pagination justify-content-center">
               <c:if test = "${!empty paging}">
                  <c:if test = "${paging.prevBlockPage gt 0}">  
                        <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.prevBlockPage})">이전</a></li>
                  </c:if>
                  
                  <c:forEach var = "i" begin = "${paging.startPage}" end = "${paging.endPage}"> <!-- for문 -->
                     <c:choose>
                        <c:when test="${i ne curPage}"> <!-- 현재 페이지가 아닐때 -->
                        <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${i})">${i}</a></li>
                           </c:when>
                           <c:otherwise>
                        <li class="page-item active"><a class="page-link" href="javascript:void(0)" style="cursor:default;">${i}</a></li>
                           </c:otherwise>   
                       </c:choose>
                  </c:forEach>
                  <c:if test = "${paging.nextBlockPage gt 0}"> <!-- gt 0보다 크냐 -->
                        <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.nextBlockPage})">다음</a></li>
                  </c:if>
               </c:if>
               </ul>
          </nav>
           <!-- 페이징 처리 끝 -->
     
     <!-- 흰색 바탕 주는 태그 닫는 태그들 -->
       </div>
     </div>
   </div>
 </div>
     <!-- 흰색 바탕 주는 태그 닫는 태그들 -->
     
     
     
   <form name="bbsForm" id="bbsForm" method="post">
    <input type="hidden" name="qnaSeq" value="" />     
    <input type="hidden" name="curPage" value="${curPage}" />
   </form>  
      </div>              
                       
     <!-- footer 시작 -->  
      <%@ include file="/WEB-INF/views/include/footer.jsp" %>
      <!-- footer 종료 --> 
      
     
</body>
</html>