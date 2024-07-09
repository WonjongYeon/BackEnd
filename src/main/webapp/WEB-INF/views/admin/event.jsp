<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

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
			                                    
			                                        <img class="flex-shrink-0 img-fluid rounded" src="https://recipe1.ezmember.co.kr/cache/rpe/2023/10/06/f81917d1cf637a86a77e9820e91dbc831.jpg" alt="" style="width:400px; height:140px;"/>
			                                        <div class="w-100 d-flex flex-column text-start ps-4">
			                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
			                                            			                            		                                               
			                                                <div id="eventType"><span>[공모전]</span></div>
			                                                </a>
			                                                
			                                            </h5>
			                                            <div id="eventTitle"><small class="fst-italic">가을 무를 활용한 레시피를 알려주세요.</small></div>
			                                            <br>
			                                     		<h6>2023.10.07 ~ 2023.10.31</h6>
			                                            
			                                        </div>
			                                    </div>
			                                </div>                             
                                        </div>
                                    </div>
                                </div>
                            </div> 
			              <hr style="border: solid 1px black;">
			              
			               <div class="container text-center my-1 pt-1 pb-1 text-center wow fadeInUp">
						      <div class="tab-content">
						           <div id="tab-1" class="tab-pane fade show p-0 active">
				                            <div class="row g-4">
			                                <div class="col-lg-20">
			                                
			                                    <div class="d-flex align-items-center">
			                                    
			                                        <img class="flex-shrink-0 img-fluid rounded" src="https://recipe1.ezmember.co.kr/cache/rpe/2023/09/27/638c3aecaa904ee99761ae16abd257d11.jpg" alt="" style="width:400px; height:140px;"/>
			                                        <div class="w-100 d-flex flex-column text-start ps-4">
			                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
			                                            			                            		                                               
			                                                <div id="eventType"><span>[이벤트]</span></div>
			                                                </a>
			                                                
			                                            </h5>
			                                            <div id="eventTitle"><small class="fst-italic"> <2023 청정임산물 대축제> 개최 기념 홍보 영상 공유 이벤트</small></div>
			                                     		<br>
			                                     		<h6>2023.09.27 ~ 2023.10.15</h6>
			                                            
			                                        </div>
			                                    </div>
			                                </div>                             
                                        </div>
                                    </div>
                                </div>
                            </div> 
			              <hr style="border: solid 1px black;">
			              
			               <div class="container text-center my-1 pt-1 pb-1 text-center wow fadeInUp">
						      <div class="tab-content">
						           <div id="tab-1" class="tab-pane fade show p-0 active">
				                            <div class="row g-4">
			                                <div class="col-lg-20">
			                                
			                                    <div class="d-flex align-items-center">
			                                    
			                                        <img class="flex-shrink-0 img-fluid rounded" src="https://recipe1.ezmember.co.kr/cache/rpe/2023/09/07/5e43fb1cb22648facd12db2f651ae63a1.jpg" alt="" style="width:400px; height:140px;"/>
			                                        <div class="w-100 d-flex flex-column text-start ps-4">
			                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
			                                            			                            		                                               
			                                                <div id="eventType"><span>[공모전]</span></div>
			                                                </a>
			                                                
			                                            </h5>
			                                            <div id="eventTitle"><small class="fst-italic">★당첨자 발표★ 우리집 추석 대표음식을 소개해 주세요.</small></div>
			                                     		<br>
			                                     		<h6>2023.09.08 ~ 2023.10.06</h6>
			                                            
			                                        </div>
			                                    </div>
			                                </div>                             
                                        </div>
                                    </div>
                                </div>
                            </div> 
			              <hr style="border: solid 1px black;">
			              
			               <div class="container text-center my-1 pt-1 pb-1 text-center wow fadeInUp">
						      <div class="tab-content">
						           <div id="tab-1" class="tab-pane fade show p-0 active">
				                            <div class="row g-4">
			                                <div class="col-lg-20">
			                                
			                                    <div class="d-flex align-items-center">
			                                    
			                                        <img class="flex-shrink-0 img-fluid rounded" src="https://recipe1.ezmember.co.kr/cache/rpe/2023/08/28/c7872c9c37435c82b438b18d16f83bca1.png" alt="" style="width:400px; height:140px;"/>
			                                        <div class="w-100 d-flex flex-column text-start ps-4">
			                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
			                                            			                            		                                               
			                                                <div id="eventType"><span>[공모전]</span></div>
			                                                </a>
			                                                
			                                            </h5>
			                                            <div id="eventTitle"><small class="fst-italic"> [이벤트 발표] 2023년 삼삼(蔘蔘)한 레시피 공모전 시즌6</small></div>
			                                            <br>
			                                            <h6>2023.09.04 ~ 2023.10.17</h6>
			                                     		
			                                            
			                                        </div>
			                                    </div>
			                                </div>                             
                                        </div>
                                    </div>
                                </div>
                            </div> 
			              <hr style="border: solid 1px black;">
			              
			               <div class="container text-center my-1 pt-1 pb-1 text-center wow fadeInUp">
						      <div class="tab-content">
						           <div id="tab-1" class="tab-pane fade show p-0 active">
				                            <div class="row g-4">
			                                <div class="col-lg-20">
			                                
			                                    <div class="d-flex align-items-center">
			                                    
			                                        <img class="flex-shrink-0 img-fluid rounded" src="https://recipe1.ezmember.co.kr/cache/rpe/2023/08/18/af4eb7c7806be9252f56fea2f624957d1.jpg" alt="" style="width:400px; height:140px;"/>
			                                        <div class="w-100 d-flex flex-column text-start ps-4">
			                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
			                                            			                            		                                               
			                                                <div id="eventType"><span>[공모전]</span></div>
			                                                </a>
			                                                
			                                            </h5>
			                                            <div id="eventTitle"><small class="fst-italic">★당첨자 발표★ 익스큐수미: 일단 잡숴봐 방영기념 수미의레시피 공모전 이벤트</small></div>
			                                     		<br>
			                                     		<h6>2023.08.25 ~ 2023.09.08</h6>
			                                            
			                                        </div>
			                                    </div>
			                                </div>                             
                                        </div>
                                    </div>
                                </div>
                            </div> 
			              <hr style="border: solid 1px black;">
			              
			               <div class="container text-center my-1 pt-1 pb-1 text-center wow fadeInUp">
						      <div class="tab-content">
						           <div id="tab-1" class="tab-pane fade show p-0 active">
				                            <div class="row g-4">
			                                <div class="col-lg-20">
			                                
			                                    <div class="d-flex align-items-center">
			                                    
			                                        <img class="flex-shrink-0 img-fluid rounded" src=https://recipe1.ezmember.co.kr/cache/rpe/2023/07/27/2947d808e643430b6d20a3c089faf4a61.jpg alt="" style="width:400px; height:140px;"/>
			                                        <div class="w-100 d-flex flex-column text-start ps-4">
			                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
			                                            			                            		                                               
			                                                <div id="eventType"><span>[공모전]</span></div>
			                                                </a>
			                                                
			                                            </h5>
			                                            <div id="eventTitle"><small class="fst-italic">★당첨자 발표★ 에어프라이어 또는 오븐을 활용한 요리를 알려주세요.</small></div>
			                                            <br>
			                                            <h6>2023.08.01 ~ 2023.08.31</h6>
			                                     		
			                                            
			                                        </div>
			                                    </div>
			                                </div>                             
                                        </div>
                                    </div>
                                </div>
                            </div> 
			              <hr style="border: solid 1px black;">
			              
			               <div class="container text-center my-1 pt-1 pb-1 text-center wow fadeInUp">
						      <div class="tab-content">
						           <div id="tab-1" class="tab-pane fade show p-0 active">
				                            <div class="row g-4">
			                                <div class="col-lg-20">
			                                
			                                    <div class="d-flex align-items-center">
			                                    
			                                        <img class="flex-shrink-0 img-fluid rounded" src="https://recipe1.ezmember.co.kr/cache/rpe/2023/06/30/39391219a8a4ebc5a6f36d3891c757491.jpg" alt="" style="width:400px; height:140px;"/>
			                                        <div class="w-100 d-flex flex-column text-start ps-4">
			                                            <h5 class="d-flex justify-content-between border-bottom pb-2">
			                                            			                            		                                               
			                                                <div id="eventType"><span>[공모전]</span></div>
			                                                </a>
			                                                
			                                            </h5>
			                                            <div id="eventTitle"><small class="fst-italic">★당첨자발표★ 먹으면서 다이어트 하자!!</small></div>
			                                     		<br>
			                                     		<h6>2023.06.01 ~ 2023.06.30</h6>
			                                            
			                                        </div>
			                                    </div>
			                                </div>                             
                                        </div>
                                    </div>
                                </div>
                            </div> 
			              <hr style="border: solid 1px black;">
			     		
	
				 
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