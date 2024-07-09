<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ include file="/WEB-INF/views/include/taglib.jsp" %> 

<!DOCTYPE html>
<html>
<!-- %@ include file="/WEB-INF/views/include/head.jsp" % --> 

    	
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
<meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- 내가추가함 -->
<title>My Fridge</title>

    <!-- Favicon -->
    <link href="/resources/img/fridgeFavicon.png" rel="icon">

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

</script>   
<script type="text/javascript" sc="/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/resources/js/icia.common.js"></script>
<script type="text/javascript" src="/resources/js/icia.ajax.js"></script>
<script type="text/javascript" src="/resources/js/jquery.js"></script>


<style type="text/css">

	#fridgeImage {
	    cursor: pointer;
	}

	#fridgeContainer {
	    position: relative;
	    display: inline-block;
	    cursor: pointer;
	}
	
	#fridgeItems {
	    position: absolute;
	    top: 0;
	    left: 0;
	    background-color: white;
	    padding: 10px;
	    display: none;
	    list-style-type: none;
	    border: 1px solid black;
	}


</style>


<script type="text/javascript">

  /*	
	var fridgeImage = document.getElementById("fridgeImage");

	fridgeImage.addEventListener("click", function() {
	    // 현재 이미지 경로를 가져옴
	    var currentSrc = fridgeImage.getAttribute("src");
	
	    // 현재 이미지가 닫힌 냉장고이미지인지 열린 냉장고 이미지인지 확인
	    if (currentSrc === "closed-fridge.png") {
	        // 닫힌 냉장고 이미지를 열린 냉장고 이미지로 변경
	        fridgeImage.setAttribute("src", "open-fridge.png");
	        fridgeImage.setAttribute("alt", "Open Fridge");
	    } else {
	        // 열린 냉장고 이미지를 닫힌 냉장고 이미지로 변경
	        fridgeImage.setAttribute("src", "closed-fridge.png");
	        fridgeImage.setAttribute("alt", "Closed Fridge");
	    }
	});
	
	
	
	var fridgeContainer = document.getElementById("fridgeContainer");
	var fridgeItems = document.getElementById("fridgeItems");

	fridgeContainer.addEventListener("click", function() {
	    var fridgeImage = document.getElementById("fridgeImage");
	    var currentSrc = fridgeImage.getAttribute("src");

	    if (currentSrc === "closed-fridge.jpg") {
	        fridgeImage.setAttribute("src", "open-fridge.jpg");
	        fridgeImage.setAttribute("alt", "Open Fridge");
	        fridgeItems.style.display = "block"; // 리스트 표시
	    } else {
	        fridgeImage.setAttribute("src", "closed-fridge.jpg");
	        fridgeImage.setAttribute("alt", "Closed Fridge");
	        fridgeItems.style.display = "none"; // 리스트 숨김
	    }
	});
*/


$(document).ready(function() {
   // var fridgeImage = $("#fridgeImage");

    // 냉장고 이미지를 클릭할 때의 이벤트 처리
    $("#fridgeImage").on("click", function() {

        // 현재 이미지 경로를 가져옵니다.
        var currentSrc = $("#fridgeImage").attr("src");

        alert("111111:"+ currentSrc);
        // 냉장고가 닫혀있는 경우
        if (currentSrc === "/resources/img/closed-fridge.png") {
            // AJAX를 통해 서버에서 재료 데이터를 가져옵니다.
            $.ajax({
                type: "GET",
                url: "/user/myIrdnt",
                dataType: "json",
                success: function(response) {
                    // 열린 냉장고 이미지로 변경
                    fridgeImage.attr("src", "/resources/img/open-fridge.png");

                    // 재료 목록을 나열
                    var fridgeItems = $("#fridgeItems");
                    fridgeItems.empty();
                    $.each(response.ingredients, function(index, ingredient) {
                        var listItem = $("<li>").text(ingredient.name);
                        fridgeItems.append(listItem);
                    });
                },
                error: function(error) {
                    console.log(error);
                }
            });
        }
        // 냉장고가 열려있는 경우
        else {
            // 닫힌 냉장고 이미지로 변경
            fridgeImage.attr("src", "/resources/img/closed-fridge.jpg");

            // 재료 목록을 비우기
            $("#fridgeItems").empty();
        }
    });
});

</script>



</head>
<body>       
        <!-- 네비게이션 시작 -->
         <!-- %@ include file="/WEB-INF/views/include/navigation.jsp" % -->
        <div class="container-xxl position-relative p-0">
            

             <div class="container-xxl py-1 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-1 pb-4">
                    <h1 class="section-title ff-secondary text-center text-primary fw-normal">My Ingredients</h1></br></br>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="/index">홈</a></li>                          
                            <li class="breadcrumb-item text-white active" aria-current="page">재료 한눈에 보기</li>
                        </ol>
                    </nav>
                    
                </div>
            </div>
        </div>
              <!-- 네비게이션 종료 -->
              
  
       
<!-- 흰색 배경 테두리 시작 -->
<div>
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
                     
                     
                         <h5 class="section-title ff-secondary text-center text-primary fw-normal">My Ingredients</h5>
                         <h2 class="mb-5">재료 한눈에 보기</h2>
                         
                     </div>     
                            
                <div>                   
                                 
                                    
      	<!--   냉장고 시작 -->
      	
      <!--<c:forEach var="item" items="${myPage}" varStatus="status"> 
	        <tbody>
	            <tr>
	            	<th scope="col"><img src="${item.recipeImage}" width="100" height="100" /></th> 
	                <td scope="col"  width="200" onclick="fn_bookMarkView(${item.recipeCode})"><u style="color:orange; cursor: pointer" >${item.recipeName}</u></td>
	                <td scope="col" >${item.recipeIntro}</td> 
	            </tr>
	        </tbody>
	     </c:forEach>
	      -->
							     
		<c:forEach var="myIrdntlistItem" items="${myIrdntlist}" varStatus="status">			     
		     <div id="fridgeContainer">
			  <img id="fridgeImage" src="/resources/img/closed-fridge.png" alt="Closed Fridge">
			    <ul id="fridgeItems">
			        <li>${myIrdntlistItem.irdntImage}</li>
			    </ul>
			   
			 </div>
      </c:forEach>
      
      <!-- 냉장고 끝 -->
      
      
      
		 <!-- 페이징 처리 시작 -->
		 <nav>
		      <ul class="pagination justify-content-center">
				<c:if test = "${!empty myRecipePaging}">
				   <c:if test = "${myRecipePaging.prevBlockPage gt 0}">  <!-- gt - 0보다 크냐,> -->
				         <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_recipeList(${myRecipePaging.prevBlockPage})">이전</a></li>
				   </c:if>
				   
				   <c:forEach var = "i" begin = "${myRecipePaging.startPage}" end = "${myRecipePaging.endPage}"> <!-- for문 -->
				      <c:choose>
				         <c:when test="${i ne myRecipeCurPage}"> <!-- 현재 페이지가 아닐때 -->
				         <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_recipeList(${i})">${i}</a></li>
				            </c:when>
				            <c:otherwise>
				         <li class="page-item active"><a class="page-link" href="javascript:void(0)" style="cursor:default;">${i}</a></li>
				            </c:otherwise>   
				        </c:choose>
				   </c:forEach>
				   <c:if test = "${myRecipePaging.nextBlockPage gt 0}"> <!-- gt 0보다 크냐 -->
				         <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_recipeList(${myRecipePaging.nextBlockPage})">다음</a></li>
				   </c:if>
				</c:if>
		      </ul>
		   </nav> 
		 <!-- 페이징 처리 끝 -->
 
 	</div>    
  </div>
<div>

</div>
</div>
</div>
</div>
</div>
<!-- 흰색 배경 끝 -->
        <!-- 레시피 --> 



  <form name="fridgeForm" id="fridgeForm" method="get">
	<input type="hidden" id="myFridgeSearch" name="myFridgeSearch" value ="${myFridgeSearchValue}"/>
	<input type="hidden" id="myFridgeCurPage" name = "myFridgeCurPage" value = "${myFridgeCurPage}">
	<input type="hidden" id="irdntSearch" name="irdntSearch" value = "${irdntSearchValue}">
  	<input type="hidden" id="irdntCurPage" name = "irdntCurPage" value = "${irdntCurPage}">
  	<input type="hidden" id="myRecipeSearch" name = "myRecipeSearch" value = "${myRecipeSearchValue}">
  	<input type="hidden" id="myRecipeCurPage" name = "myRecipeCurPage" value="${myRecipeCurPage}">
   </form>
   
   <form name="fridgeUpdateForm" id = "fridgeUpdateForm" method="post">
   	<input type ="hidden" id ="irdntName" name = "irdntName" value="">
   	<input type ="hidden" id ="fridgeIrdntAmount" name = "fridgeIrdntAmount" value ="">
   	<input type="hidden" name="recipeCode" value="${RecipeInfo.recipeCode}" /> 
   </form>
   
   
   

   

<!-- 레시피들 나오는 레시피 리스트와 footer 사이에 간격주기 위한 div -->
  <div style = "padding: 50px 50px 50px 50px;"><!-- (각각 위 오른쪽 아래 왼쪽 - 시계방향) -->  
  </div>
 <!-- 간격 끝 -->
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>


    <!-- Template Javascript -->
    <script src="js/main.js"></script>

        <!-- Footer + Template Javascript + JavaScript Libraries
        <!--%@ include file="/WEB-INF/views/include/footer.jsp" %>  -->
</body>
</html>