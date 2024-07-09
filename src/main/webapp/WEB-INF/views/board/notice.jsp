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
<meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- 내가추가함 -->

    <!-- Favicon -->
    <link href="../resources/img/favicon.ico" rel="icon">
<link href="/resources/css/qna2.css" rel="stylesheet">   
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"rel="stylesheet">
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

</script>   
<script type="text/javascript" sc="/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/icia.common.js"></script>
<script type="text/javascript" src="/resources/js/icia.ajax.js"></script>
<script type="text/javascript" src="/resources/js/jquery.js"></script>
<Script>
$(document).ready(function(){
    $("#btnWrite").on("click", function() {  //글쓰기 버튼
         document.bbsForm.noticeSeq.value = "";
         document.bbsForm.action = "/admin/noticeWriteForm";
         document.bbsForm.submit();
      });   
   
   
});
function fn_view(noticeSeq)
{
   document.bbsForm.noticeSeq.value = noticeSeq;  
   document.bbsForm.action = "/admin/adminNoticeView";
   document.bbsForm.submit();
}

</Script>
</head>
<body>
       
        <!-- 네비게이션 시작 -->
            <%@ include file="/WEB-INF/views/include/navigation.jsp" %>
        <div class="container-xxl position-relative p-0">
            

             <div class="container-xxl py-1 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-1 pb-4">
                    <h1 class="section-title ff-secondary text-center text-primary fw-normal">Notice</h1></br></br>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="/index">홈</a></li>                          
                            <li class="breadcrumb-item text-white active" aria-current="page">공지사항</li>
                        </ol>
                    </nav>
                    
                </div>
            </div>
        </div>            
                <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.1s">
                    <ul class="nav  d-inline-flex justify-content-center border-bottom mb-1">
                        <li class="nav-item">
                            <a class="d-flex align-items-center text-start mx-3 ms-0 pb-3 active" data-bs-toggle="pill" href="#tab-1">                    
                                <div class="ps-3">                                   
                                    <h5 class="mt-n1 mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-volume-up-fill" viewBox="0 0 16 16">
  <path d="M11.536 14.01A8.473 8.473 0 0 0 14.026 8a8.473 8.473 0 0 0-2.49-6.01l-.708.707A7.476 7.476 0 0 1 13.025 8c0 2.071-.84 3.946-2.197 5.303l.708.707z"/>
  <path d="M10.121 12.596A6.48 6.48 0 0 0 12.025 8a6.48 6.48 0 0 0-1.904-4.596l-.707.707A5.483 5.483 0 0 1 11.025 8a5.483 5.483 0 0 1-1.61 3.89l.706.706z"/>
  <path d="M8.707 11.182A4.486 4.486 0 0 0 10.025 8a4.486 4.486 0 0 0-1.318-3.182L8 5.525A3.489 3.489 0 0 1 9.025 8 3.49 3.49 0 0 1 8 10.475l.707.707zM6.717 3.55A.5.5 0 0 1 7 4v8a.5.5 0 0 1-.812.39L3.825 10.5H1.5A.5.5 0 0 1 1 10V6a.5.5 0 0 1 .5-.5h2.325l2.363-1.89a.5.5 0 0 1 .529-.06z"/>
</svg> 공지사항</h5>
                                </div>
                            </a>
                        </li>
                      </ul>                    
                </div>
<div class="container" style="font-size: 18px">          
      <table class="table table-hover">
      <thead>
      <tr style="background-color: #ffa500;color:black">
         <th scope="col" class="text-center" style="width:10%">번호</th>
         <th scope="col" class="text-center" style="width:55%">제목</th>
         <th scope="col" class="text-center" style="width:10%">작성자</th>
         <th scope="col" class="text-center" style="width:15%">등록일</th>              
      </tr>
      </thead>
      <tbody>
<c:if test ="${!empty noticeList}">  
   <c:forEach var = "noticeBoard" items = "${noticeList}" varStatus = "status">

      <tr>
      <c:choose>
         <c:when test = "${noticeBoard.noticeIndent eq 0}">
         <td class="text-center"style="color:black">${noticeBoard.noticeSeq}</td>  
         </c:when>
         <c:otherwise>
         <td class="text-center"></td>
         </c:otherwise>
     </c:choose>
         <td>
            <a href="javascript:void(0)" onclick="fn_view(${noticeBoard.noticeSeq})"> <!-- 현재 게시물의 대한 번호를 가지고감 --> 
     <c:if test ="${noticeBoard.noticeIndent > 0}">
           <img src = "/resources/images/sss.gif" style = "margin-left:${noticeBoard.noticeIndent}em" />
      </c:if>      
               <c:out value = "${noticeBoard.noticeTitle}" />  <!-- 제목 -->
            </a>

         </td>
       <td class="text-center" style="color:black">${noticeBoard.adminName}</td> <!-- 작성자 -->
       <td class="text-center" style="color:black">${noticeBoard.regDate}</td> <!-- 등록일 -->
       
      </tr>
      </c:forEach>
</c:if>      
      </tbody>
      
      </table>
     

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
     
     
     
   <form name="bbsForm" id="bbsForm" method="post">
    <input type="hidden" name="noticeSeq" value="" />     
    <input type="hidden" name="curPage" value="${curPage}" />
   </form>  
      </div>
     
     <!-- footer 시작 -->  
      <%@ include file="/WEB-INF/views/include/footer.jsp" %>
      <!-- footer 종료 --> 
      
     
</body>
</html>