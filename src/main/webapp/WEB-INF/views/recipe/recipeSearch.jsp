<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!-- 한글인코딩 추가 -->

<%@ include file="/WEB-INF/views/include/taglib.jsp" %> <!-- head에 빼놨으니까 익 없어도되지?-->

<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
    <meta charset="UTF-8">
    <title>냉장고를 부탁해</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
<meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- 내가추가함 -->

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
<script type="text/javascript">
$(document).ready(function() {
$("#_searchValue").on("keypress", function(e){
		
		if(e.which == 13)  //13 엔터키
		{	
			fn_enter();
		}
		
	});
	
	$("#btnSearch").on("click", function() {  //조회버튼		

		   if($("#_searchType").val() == "")
		   {
			   $("#_searchValue").val();
		   }
		   
			
			
	       document.bbsForm.searchType.value = $("#_searchType").val();
	       document.bbsForm.searchValue.value = $("#_searchValue").val();
	       document.bbsForm.curPage.value = "1";
	       document.bbsForm.action = "/recipe/recipeSearch";
	       document.bbsForm.submit();
	       
	     
	   });	 
});
function fn_list(curPage)
{
   document.bbsForm.curPage.value = curPage;  
   document.bbsForm.action = "/recipe/recipeSearch";
   document.bbsForm.submit();
}

function fn_view(recipeCode)
{
	document.bbsForm.recipeCode.value = recipeCode;
	document.bbsForm.action = "/recipe/recipeView";
	document.bbsForm.submit();
}

function fn_enter()
{
	document.bbsForm.searchType.value = $("#_searchType").val();
    document.bbsForm.searchValue.value = $("#_searchValue").val();
    document.bbsForm.curPage.value = "1";
    document.bbsForm.action = "/recipe/recipeSearch";
    document.bbsForm.submit();
}

</script>   
<script type="text/javascript" sc="/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/icia.common.js"></script>
<script type="text/javascript" src="/resources/js/icia.ajax.js"></script>
<script type="text/javascript" src="/resources/js/jquery.js"></script>

</head>
<body>
 <%@ include file="/WEB-INF/views/include/navigation.jsp" %>
 <div class="container-xxl position-relative p-0">
            

            <div class="container-xxl py-1 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-1 pb-4">
                    <h1 class="section-title ff-secondary text-center text-primary fw-normal">Recipe Searching</h1></br></br>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="/index">홈</a></li>                          
                            <li class="breadcrumb-item text-white active" aria-current="page">레시피조회</li>
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
						
							<!-- 본문 내용 시작 -->		
							<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
			                    <h5 class="section-title ff-secondary text-center text-primary fw-normal">recipe menu</h5>
			                    <h1 class="mb-5">레시피 찾기</h1>
			                </div>
			                
			                
			                <div class="col-lg-9 col-md-10 col-sm-11 col-12 mx-auto"> <!-- 여기서 col-12는 필요에 따라 조정가능. -->
								<div class="content section_delete" style="text-align: left;  font-size: 14px;">
			                
			                
			              <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.1s">
			                 <div class="container mt-4 text-center wow fadeInUp ">
				                <div class="input-group mb-3">
					                <select name="_searchType" id="_searchType"  >
							            <option value = "">조회 항목</option>
							            <option value="3020001" <c:if test ='${searchType eq "3020001"}'>selected</c:if>>한식</option>
							            <option value="3020004" <c:if test ='${searchType eq "3020004"}'>selected</c:if>>중식</option>
							            <option value="3020003" <c:if test = '${searchType eq "3020003"}'>selected</c:if>>일식</option>
							            <option value="3020002" <c:if test = '${searchType eq "3020002"}'>selected</c:if>>양식</option>
							            <option value="3020009" <c:if test = '${searchType eq "3020009"}'>selected</c:if>>퓨전</option>
							            <option value="3020005" <c:if test = '${searchType eq "3020005"}'>selected</c:if>>동남아시아</option>
							         </select>
					         
					 		
									  <div class = "col-8 ">
					                  <input type="text" class="form-control d-flex justify-content-center" placeholder="레시피 입력" aria-label="검색어 입력" 
					                  aria-describedby="basic-addon2" name="_searchValue" id="_searchValue" value="${searchValue}">
					                  </div>
					                  <div class="input-group-append ">
					                      <button class="btn-primary" type="button" id="btnSearch"  style="color: white; height: 37px;" >조회</button>
					                  </div>
				                         
					             </div>
					          </div>         
				          </div>
				         </div>
				        </div>
					
					<!-- 레시피 스타트 -->   
						<tbody>
							
							   <div class="container text-center my-1 pt-1 pb-1 text-center wow fadeInUp">  
							     <div class="tab-content">
							     
							     	<c:if test ="${!empty nationList}">  <!-- list 객체가 비어있지 않을때 -->
							   			<c:forEach var = "recipeInfo" items = "${nationList}" varStatus = "status"> 
							     
					                        <div id="tab-1" class="tab-pane fade show p-0 active">
					                        <a href="javascript:void(0)" onclick="fn_view(${recipeInfo.recipeCode})"> 
					                            <div class="row g-4">
					                                <div class="col-lg-20">
					                                    <div class="d-flex align-items-center">
					                                        <img class="flex-shrink-0 img-fluid rounded" src="${recipeInfo.recipeImage}" alt="" style="width: 200px;height: 150px;">
					                                        <div class="w-100 d-flex flex-column text-start ps-4">
					                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
					                                                <span>${recipeInfo.recipeName}</span>
					                                                </a>
					                                                <span class="text-primary"><svg class="bi bi-eye" fill="currentColor" height="16" viewBox="0 0 16 16" width="16" xmlns="http://www.w3.org/2000/svg"><path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/><path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/></svg> : <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${recipeInfo.bbsReadCnt}" /></span>
					
					                                            </h5>
					                                            <small class="fst-italic">${recipeInfo.recipeIntro}</small>
					                                        </div>
					                                    </div>
					                                </div>          
	                                        	</div>
	                                    	</div>
	                                    </c:forEach>   
										</c:if>
							      </tbody>     
							        <!-- 레시피 --> 
							       <nav>
							      <ul class="pagination justify-content-center">
							<c:if test = "${!empty paging}">
							   <c:if test = "${paging.prevBlockPage gt 0}">  <!-- gt - 0보다 크냐,> -->
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
					<!-- 본문 내용 끝 -->
					
					</div>
				  </div>
				</div>
			  </div>
			</div>
		</div>
	  </div>
	</div>
</div>				
<!-- 본문 테두리 영역 끝 -->
                

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <form name="bbsForm" id="bbsForm" method="post">
      <input type="hidden" name="searchType" value="${searchType}" />
      <input type="hidden" name="searchValue" value="${searchValue}" />
      <input type="hidden" name="curPage" value="${curPage}" />
      <input type="hidden" name="recipeCode" value="${recipeInfo.recipeCode}" />
   </form>
   <%@ include file="/WEB-INF/views/include/footer.jsp" %> 
</body>
</html>