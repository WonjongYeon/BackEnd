     <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!-- 한글인코딩 추가 -->
   
   <%@ include file="/WEB-INF/views/include/taglib.jsp" %> <!-- head에 빼놨으니까 익 없어도되지?-->
   
   
   <!DOCTYPE html>
   <html>
   <![if !IE]>
   <html lang="ko" xmlns="http://www.w3.org/1999/xhtml" class="">
   <![endif]>
   <head>
   <%@ include file="/WEB-INF/views/include/head.jsp" %>
       <meta charset="UTF-8">
       <meta content="width=device-width, initial-scale=1.0" name="viewport">
       <meta content="" name="keywords">
       <meta content="" name="description">
   <meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- 내가추가함 -->
   
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
       <link href="/resources/css/bootsave2.css" rel="stylesheet">
       <link href="/resources/css/bootsave3.css" rel="stylesheet">
       
       
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   
       
   <!-- 만개의 레시피 양식 -->
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
   <meta http-equiv="Pragma" content="no-cache" />
   <meta http-equiv="Expires" content="-1" />
   <meta property="fb:pages" content="1567451316868458" />
   <meta name="description" content="국내 No.1 요리앱, 10만개 이상의 레시피, 편리한 검색, 맛보장 레시피, TV쿡방 레시피, 온라인 최저가 쇼핑, 요리 공모전">
   <meta name="keywords" content="">
   <meta name="google-site-verification" content="3eLg1zfxeZ_oO6oOOsvIxbtcW-FtDsViPVm7-CYOl8w" />
   <meta name="p:domain_verify" content="1f5cc8d2183836842bd3db03bc960620"/>
   <meta name="user_id" content='45523655' />
   
   
   <meta property="kakao:description" content="" />
   
   <link rel="stylesheet" type="text/css" href="https://recipe1.ezmember.co.kr/static/css/ez_recipe_20230704.css" />
  
   
   <style>
   .btn_add .btn span {
       color: #74b243;
       font-size: 16px;
       margin-right: 4px;
   }
   
   .glyphicon {
       position: relative;
       top: 1px;
       display: inline-block;
       font-family: 'Glyphicons Halflings';
       font-style: normal;
       font-weight: 400;
       line-height: 1;
       -webkit-font-smoothing: antialiased;
       -moz-osx-font-smoothing: grayscale;
   }
   
   .bi-plus-circle {
   color: orange;
   }
   
   .ui-sortable-handle {
   
   }
   
   .step img {
       border: 1px solid black;
       display: block;
       vertical-align: middle;
       
   }
   
   .regi_btm {
       border: 1px solid #e6e7e8;
       background: #fff;
       text-align: center;
       padding: 20px 0 20px 0;
       border-top: none;
      width: 1321px; 
       margin: 0 auto; /* 가운데 정렬 */
   }
   
 
     .regi_center {
       border: 1px solid #e6e7e8;
       background: #fff;
       text-align: left;
       padding: 0 0 0 0; 
       border-top: none;
      	width: 1321px; 
       margin: 0 auto; /* 가운데 정렬 */
       

   }
   
   
   
   
   </style>
   

   
   <script>
   var mainIrdnt = 1;
   var subIrdnt = 1;
   var divStepItem = 1;
   let i =1;
   
   
   function previewImage() 
   {
     var reader = new FileReader();
     reader.onload = function(event) {
       document.getElementById('mainPhotoHolder').src = event.target.result;
     }
     reader.readAsDataURL(document.getElementById('recipeInfoFile').files[0]);
   }
   
   
   
   $(document).ready(function() {
       
         $("#myRecipeTitle").focus();
         
   
         
         
         
         //저장버튼 클릭 시
         $("#recipeSave").on("click", function() {
            
            document.myRecipeSave.mainIrdntCount.value = mainIrdnt;
            document.myRecipeSave.subIrdntCount.value = subIrdnt;
            document.myRecipeSave.cookingCount.value = divStepItem;
            
         if($.trim($("#myRecipeTitle").val()).length <= 0)
         {
            alert("레시피 제목을 입력해주세요.");
            $("#myRecipeTitle").val("");
            $("#myRecipeTitle").focus();
            return;
         }
         
         if($.trim($("#myRecipeIntro").val()).length <= 0)
         {
            alert("요리소개를 입력해주세요.");
            $("#myRecipeIntro").val("");
            $("#myRecipeIntro").focus();
            return;
         }
         
         if($.trim($("#myRecipeNation").val()).length <= 0)
         {
            alert("종류별 카테고리를 선택해주세요.");
            $("#myRecipeNation").val("");
            $("#myRecipeNation").focus();
            return;
         }
         
         if($.trim($("#myRecipeFood").val()).length <= 0)
         {
            alert("음식별 카테고리를 선택해주세요.");
            $("#myRecipeFood").val("");
            $("#myRecipeFood").focus();
            return;
         }
         
         if($.trim($("#myRecipeQnt").val()).length <= 0)
         {
            alert("인원을 선택해주세요.");
            $("#myRecipeQnt").val("");
            $("#myRecipeQnt").focus();
            return;
         }
         
         if($.trim($("#myRecipeTime").val()).length <= 0)
         {
            alert("조리시간을 선택해주세요.");
            $("#myRecipeTime").val("");
            $("#myRecipeTime").focus();
            return;
         }
        
         
   
     //사용자 레시피 저장 ajax
     var form = $("#myRecipeSave")[0];
     var formData = new FormData(form);
         
     
     var i = 2;
     for (i = 2; i <= mainIrdnt; i++) 
     {
        formData.append('mainIrdntNm'+i,$("#mainIrdntNm"+i).val());
        formData.append('mainIrdntAmt'+i,$("#mainIrdntAmt"+i).val());
     }
     
     for (i = 2; i <= subIrdnt; i++) 
     {
        formData.append('subIrdntNm'+i,$("#subIrdntNm"+i).val());
        formData.append('subIrdntAmt'+i,$("#subIrdntAmt"+i).val());
     }
     
     for(i =2 ; i <=divStepItem; i++)
     {
        const fileInput = document.querySelector("#cookingFile"+i);
        
        
        formData.append('stepText'+i,$("#stepText"+i).val());
        formData.append('cookingFile'+i,fileInput.files[0]);
     }
     
         $.ajax({
            type:"POST",
            enctype:"multipart/form-data",
            url:"/recipe/recipeSaveProc",
            data:formData,
            processData:false,            //formData를 string으로 변환하지 않음
            contentType:false,            //content-type헤더가 multipart/form-data로 전송
            cache:false,
            timeout:600000,
            beforeSend:function(xhr)
            {
               xhr.setRequestHeader("AJAX", "true");
            },
            success:function(response)
            {
               if(response.code == 0)
               {
                  alert("레시피가 등록되었습니다.");        
                  location.href ="/recipe/recipeSearch";
               }
               else if (response.code == 301)
               {
                  alert("insertRecipeInfo");
               }
               else if (response.code == 302)
               {
                  alert("mainInsert Error");
               }
               else if (response.code == 303)
               {
                  alert ("subInsert Error");
               }
               else if (response.code == 300)
               {
                  alert("irdnt Input error");
               }
               else if(response.code == 304)
                 {
                   alert("cookingInsert Error");    
                 }
               else if (response.code == 100)
               {
                  alert("can't find Id");
               }
               else if (response.code == 200 )
               {
                  alert("inpue Empty Error");
               }
               else if (response.code ==1000)
                 {
                  alert("메인 재료는 숫자만 입력 가능합니다. 단위는 g입니다.");
                 }
               else if(response.code == 001)
               {
                  alert("정보는 빠짐없이 입력해 주세요");
               }
               else
               {
                  alert("error발생");
               }
               
               
            },
            error:function(error)
            {
               icia.common.error(error);
               alert("레시피 등록 중 오류가 발생하였습니다.");         
            }
            
         });
         });
      });
   
   //주재료 추가버튼 클릭 시
   
    function submitFiles(number) {
      let formData = new FormData();
      let files = document.querySelector("#cookingFile"+number).files;
      let i=0;
         for(i=0; i<files.length; i++) 
         {
            formData.append("files", files[i]);
         }
         return formData;
       }
   function addMainIrdnt() 
   {
     var ul = document.getElementById("liMaterialGroup_1");
     var li = document.createElement("li");
     var idNum = ul.getElementsByTagName("li").length + 2;
     li.setAttribute("id", "mainIrdnt" + idNum);
     li.innerHTML = '<input type="text" name="mainIrdntNm' + idNum + '" id="mainIrdntNm' + idNum + '" class="form-control" style="width:330px;" placeholder="예) 재료명" >' +
                    '<input type="text" name="mainIrdntAmt' + idNum + '" id="mainIrdntAmt' + idNum + '" class="form-control" style="width:280px;" placeholder="예) 재료양">' +
                    '<a id="btnDelMainIrdnt' + idNum + '" href="javascript:delMainMaterial(1,' + idNum + ')" class="btn-del" style="display: inline-block;"></a>';
     ul.appendChild(li);
     mainIrdnt++;
   }
   
   //부재료 추가버튼 클릭 시
   function addSubIrdnt() 
   {
     var ul = document.getElementById("liMaterialGroup_2");
     var li = document.createElement("li");
     var idNum = ul.getElementsByTagName("li").length + 2;
     li.setAttribute("id", "subIrdnt" + idNum);
     li.innerHTML = '<input type="text" name="subIrdntNm' + idNum + '" id="subIrdntNm' + idNum + '" class="form-control" style="width:330px;" placeholder="예) 재료명" >' +
                    '<input type="text" name="subIrdntAmt' + idNum + '" id="subIrdntAmt' + idNum + '" class="form-control" style="width:280px;" placeholder="예) 재료양">' +
                    '<a id="btnDelSubIrdnt' + idNum + '" href="javascript:delSubMaterial(2,' + idNum + ')" class="btn-del" style="display: inline-block;"></a>';
     ul.appendChild(li);
     subIrdnt++;
   }
   
   //주재료 삭제버튼 클릭 시
   function delMainMaterial(groupNum, idNum) 
   {
     var ul = document.getElementById("liMaterialGroup_" + groupNum);
     var li = document.getElementById("mainIrdnt" + idNum);
     ul.removeChild(li);
     mainIrdnt--;
   }
   
   //부재료 삭제버튼 클릭 시
   function delSubMaterial(groupNum, idNum) 
   {
     var ul = document.getElementById("liMaterialGroup_" + groupNum);
     var li = document.getElementById("subIrdnt" + idNum);
     ul.removeChild(li);
     subIrdnt--;
   }
   
   
   //요리 순서추가 버튼 클릭 시
   let stepCount = 2; // 전역 변수로 선언
   
   function addCooking() {
     // div 요소 생성
     const newDiv = document.createElement('div');
     newDiv.id = 'divStepItem' + stepCount; // 새로운 id 생성
     newDiv.classList.add('step');
   
     // p 요소 생성
     const newP = document.createElement('p');
     newP.id = 'divStepNum' + stepCount;
     newP.classList.add('cont_tit2_1', 'ui-sortable-handle');
     newP.textContent = 'Step' + stepCount;
   
     // textarea 요소 생성
     const newTextArea = document.createElement('textarea');
     newTextArea.name = 'stepText' + stepCount;
     newTextArea.id = 'stepText' + stepCount;
     newTextArea.classList.add('form-control', 'step_cont');
     newTextArea.placeholder = '테스트';
     newTextArea.style.height = '160px';
     newTextArea.style.width = '430px';
     newTextArea.style.resize = 'none';
   
     // input[type=file] 요소 생성
     const newInputFile = document.createElement('input');
     newInputFile.type = 'file';
     newInputFile.name = 'stepFile' + stepCount;
     newInputFile.id = 'stepFile' + stepCount;
     newInputFile.setAttribute('file_gubun', 'step');
     newInputFile.style.display = 'none';
     
     // img 요소 생성
     const newImg = document.createElement('img');
     newImg.id = 'cookingFileStep' + stepCount;
     newImg.src = 'https://recipe1.ezmember.co.kr/img/pic_none2.gif';
     newImg.width = '160';
     newImg.height = '160';
     newImg.style.cursor = 'pointer';
   
     // input[type=file] 요소와 img 요소 연결
     const newDivPhotoBox = document.createElement('div');
     newDivPhotoBox.id = 'divStepPhotoBox' + stepCount;
     newDivPhotoBox.setAttribute('is_over', '0');
     
     // 요리과정 이미지 첨부
     const newInputCookingFile = document.createElement('input');
     newInputCookingFile.type = 'file';
     newInputCookingFile.id = `cookingFile` + stepCount;
     newInputCookingFile.name = `cookingFile` + stepCount;
     newInputCookingFile.classList.add('real-upload');
     newInputCookingFile.required = true;
     newInputCookingFile.multiple = true;
     newInputCookingFile.style.display = 'none';
     newInputCookingFile.setAttribute('onchange', 'previewImage2()');
   
     
     // img 요소 클릭시 input[type=file] 요소 클릭하도록 이벤트 추가
     newImg.addEventListener('click', () => {
       newInputCookingFile.click();
     });
   
     // 생성한 요소들을 div에 추가
     newDiv.appendChild(newP);
     
     const divStepText = document.createElement('div');
     divStepText.id = 'divStepText' + stepCount;
     divStepText.style.display = 'inline-block';
     divStepText.appendChild(newTextArea);
     
     const divStepUpload = document.createElement('div');
     divStepUpload.id = 'divStepUpload' + stepCount;
     divStepUpload.style.display = 'inline-block';
   
     divStepUpload.appendChild(newInputFile);
     newDivPhotoBox.appendChild(newInputCookingFile);
     newDivPhotoBox.appendChild(newImg);
     divStepUpload.appendChild(newDivPhotoBox);
     newDiv.appendChild(divStepText);
     newDiv.appendChild(divStepUpload);
   
     // 생성한 div을 추가할 위치에 추가
     const divStepArea = document.getElementById('divStepArea');
     divStepArea.appendChild(newDiv);
    
     //삭제 버튼 생성
     const newDeleteButton = document.createElement('a');
     newDeleteButton.id = 'btnDeldivStepItem' + stepCount;
     newDeleteButton.href = 'javascript:delDeldivStepItem(' + stepCount + ')';
     newDeleteButton.classList.add('btn-del');
     newDeleteButton.style.display = 'inline-block';
     newDiv.appendChild(newDeleteButton);
   
     //추가된 div의 개수를 증가시킴
     stepCount++;
     divStepItem++;
   }
   
   //요리 순서 삭제 버튼 클릭 시
   function delDeldivStepItem(stepCount)
   {
      document.getElementById("divStepItem" + stepCount).remove();
      divStepItem--;
   }
   //첨부파일(cooking) 미리보기
   function previewImage2() {
        var numFiles = 0;
        
        while (document.getElementById('cookingFile' + (++numFiles))) {}
        
        for (let i = 1; i <= numFiles; i++) {
          var reader = new FileReader();
          reader.onload = function(event) {
            document.getElementById('cookingFileStep' + i).src = event.target.result;
          }
          reader.readAsDataURL(document.getElementById('cookingFile' + i).files[0]);
        }
      }
   
   </script>
   
   </head>
   <body>    
           <!-- 네비게이션 시작 -->
            <%@ include file="/WEB-INF/views/include/navigation.jsp" %>
           <div class="container-xxl position-relative p-0">
               
   
                <div class="container-xxl py-1 bg-dark hero-header mb-5">
                   <div class="container text-center my-5 pt-1 pb-4">
                       <h1 class="section-title ff-secondary text-center text-primary fw-normal">Add Recipe </h1>
                       <nav aria-label="breadcrumb">
                           <ol class="breadcrumb justify-content-center text-uppercase">
                               <li class="breadcrumb-item"><a href="/index">홈</a></li>                          
                               <li class="breadcrumb-item text-white active" aria-current="page">레시피등록</li>
                           </ol>
                       </nav>
                       
                   </div>
               </div>
           </div>
           <!-- 네비게이션 종료 -->       
       <div class="regi_center"  >
         
           <!-- 네비게이션 종료 -->
       <div class="regi_title" >레시피 등록      
      </div>
       <div class="cont_box pad_l_60">
       
       <form name="myRecipeSave" id="myRecipeSave" method="post" enctype="multipart/form-data">      
          <div id="divMainPhotoUpload" class="cont_pic2">   
              <div id="divMainPhotoBox" is_over="0">          
   
               <!-- 레시피 대표 사진 업로드 버튼 -->
               <!-- 레시피 대표 사진 업로드 버튼 -->
   <input type="file" id="recipeInfoFile" name="recipeInfoFile" required multiple style="display: none;" onchange="previewImage();"/>
   <img id="mainPhotoHolder" src="https://recipe1.ezmember.co.kr/img/pic_none4.gif" style="width: 250px; height: 250px; cursor:pointer" onclick="document.getElementById('recipeInfoFile').click();">             
              </div>
   
         </div>
         
     
         
         <!-- 레시피 제목 -->
         <div class="cont_line"><p class="cont_tit4">레시피 제목</p><input type="text" name="myRecipeTitle" id="myRecipeTitle" value="" class="form-control" placeholder="예) 소고기 미역국 끓이기" style="width:610px; "></div>
         
         <!-- 레시피 인트로 -->
         <div class="cont_line pad_b_25"><p class="cont_tit4">요리소개</p><textarea name="myRecipeIntro" id="myRecipeIntro" class="form-control step_cont" placeholder="레시피의 간단한 소개를 해주세요." style="height:100px; width:610px; resize:none;"></textarea></div>
       
         
        <!-- 레시피 종류별 -->
         <div class="cont_line"><p class="cont_tit4">카테고리</p>
         
           <select name="myRecipeNation" id="myRecipeNation"  text="종류별">
   <option value="" >종류별</option>
   <option value="3020001">한식</option>
   <option value="3020004">중식</option>
   <option value="3020003">일식</option>
   <option value="3020005">동남아시아</option>
   <option value="3020009">퓨전</option>
   </select> 
    
   <select name="myRecipeFood" id="myRecipeFood"  text="음식별">
   <option value="" >음식별</option>
   <option value="3010018">부침</option>
   <option value="3010001">밥</option>
   <option value="3010007">나물/생체/샐러드</option>
   <option value="3010014">빵/과자</option>
   <option value="3010006">찜</option>
   <option value="3010003">조림</option>
   <option value="3010010">도시락/간식</option>
   <option value="3010004">구이</option>
   <option value="3010008">밑반찬/김치</option>
   <option value="3010015">음료</option>
   <option value="3010019">그라탕/리조또</option>
   <option value="3010022">볶음</option>
   <option value="3010009">양식</option>
   <option value="3010016">만두/면류</option>
   <option value="3010017">찌개/전골/스튜</option>
   <option value="3010002">국</option>
   <option value="3010005">튀김/커틀릿</option>
   <option value="3010013">떡/한과</option>
   <option value="3010012">양념장</option>
   <option value="3010020">샌드위치/햄버거</option>   
   <option value="3010021">피자</option>
   </select>
               
         </div>
         <div class="cont_line"><p class="cont_tit4">요리정보</p>
   
   <!-- 레시피 인분 -->     
   <select name="myRecipeQnt" id="myRecipeQnt"  text="인분">
      <option value="" >인원</option>
      <option value="1인분">1인분</option>
      <option value="2인분">2인분</option>
      <option value="3인분">3인분</option>
      <option value="4인분">4인분</option>
   </select>
   
   <!-- 레시피 조리시간 -->
   <select name="myRecipeTime" id="myRecipeTime"  text="요리시간">
      <option value="" >시간</option>
      <option value="5분">5분</option>
      <option value="10분">10분</option>
      <option value="15분">15분</option>
      <option value="20분">20분</option>
      <option value="25분">25분</option>
      <option value="30분">30분</option>
      <option value="35분">35분</option>
      <option value="40분">40분</option>
      <option value="50분">50분</option>
      <option value="60분">60분</option>
      <option value="70분">70분</option>
      <option value="80분">80분</option>
      <option value="90분">90분</option>
      <option value="120분">120분</option>
      <option value="140분">140분</option>
      <option value="175분">175분</option>
      <option value="180분">180분</option>
   </select>     
         </div>
       </div>
       
       <!-- 재료정보 시작 -->
       <div class="cont_box pad_l_60">
           <span class="guide mag_b_15" style="width:100%;"><b>재료가 남거나 부족하지 않도록 정확한 계량정보를 적어주세요.</b></span>      
         <div class="mag_b_25 ui-sortable" id="divMaterialGroupArea">
         
         <!-- 주재료 리스트 -->
         <li id="liMaterialGroup_1">
         <div class="cont_line"><p class="cont_tit4">주재료</p></div>
         </li>
         
         <li id="mainIrdnt1" >
         <input type="text" name="mainIrdntNm1" id="mainIrdntNm1" class="form-control" style="width:330px;" placeholder="예) 돼지고기" >
         <input type="text" name="mainIrdntAmt1" id="mainIrdntAmt1" class="form-control" style="width:280px;" placeholder="예) 300">
         <a id="btnDelMainIrdnt1" href="javascript:delMainMaterial(1,1)" class="btn-del" style="display: none;" ></a>
         </li>
         
         
         <div class="btn_add" style="padding:50 0 20px 300px; width:700px;">
         <button type="button" onclick="addMainIrdnt()" class="btn btn-default">
         <i class="bi bi-plus-circle"></i> 추가</button>
         
         </div>
         
         
         <!-- 부재료 리스트 -->
         <li id="liMaterialGroup_2">
         <div class="cont_line"><p class="cont_tit4">부재료</p></div>
         </li>
               
         <li id="subIrdnt1">
         <input type="text" name="subIrdntNm1" id="subIrdntNm1" class="form-control" style="width:330px;" placeholder="예) 당근" >
         <input type="text" name="subIrdntAmt1" id="subIrdntAmt1" class="form-control" style="width:280px;" placeholder="예) 50g">
         <a id="btnDelSubIrdnt1" href="javascript:delSubMaterial(2,1)" class="btn-del" style="display: none;"></a>
         </li>
               
         </ul>
         <div class="btn_add" style="padding:50 0 20px 300px; width:700px;">
         <button type="button" onclick="addSubIrdnt()" class="btn btn-default">
         <i class="bi bi-plus-circle"></i> 추가</button>
         </div>
         </li>
         </div>
       </div>
       
       <!-- 재료정보 끝 -->
       
    <!-- 요리순서 시작 -->
       <div class="cont_box pad_l_60">
       <p class="cont_tit3">요리순서</p>
        <span class="guide mag_b_15"><b>요리의 맛이 좌우될 수 있는 중요한 부분은 빠짐없이 적어주세요.</b></span>
         <div id="divStepArea" class="ui-sortable">
         <div id="divStepItem1" class="step">
               <p id="divStepNum1" class="cont_tit2_1 ui-sortable-handle" data-original-title="" title="">Step1</p>
               <div id="divStepText2" style="display: inline-block;">
   <textarea name="stepText1" id="stepText1" class="form-control step_cont" placeholder="테스트" style="height: 160px; width: 430px; resize: none;" data-listener-added_76aa8e80="true"></textarea></div>
               <div id="divStepUpload1" style="display:inline-block">               
                   <div style="position:absolute;left:-3000px">
                   <input type="file" name="stepFile1" id="stepFile1" file_gubun="step" style="display:;width:0px;height:0px;font-size:0px;" text=""></div>
                   <div id="divStepPhotoBox1" is_over="0">
                   
                      <!-- 요리과정 이미지 첨부 -->
                            <input type="file" id="cookingFile1" name="cookingFile1" class="real-upload" required multiple style="display: none;" onchange="previewImage2();">           
                       <img id="cookingFileStep1" src="https://recipe1.ezmember.co.kr/img/pic_none2.gif" width="160" height="160" style="cursor:pointer">      
   <!-- 요리순서 +버튼 클릭 시 파일 첨부 창 열기 -->                           
   <script>
      const realUpload = document.querySelector('.real-upload');
      const upload = document.querySelector('.cookingFileStep1');
      cookingFileStep1.addEventListener('click', () => realUpload.click()); 
      
      newDeleteButton.addEventListener('click', () => {
         delDivStepItem(stepCount-1);
       });
   </script>
                   </div>
               </div>
             </div>     
           </div>
           
    
   
         <div class="btn_add mag_b_25" style="padding:0 0 20px 180px; width:820px;">
         <button type="button" onclick="addCooking()" class="btn btn-default">
         <span class="glyphicon glyphicon-plus-sign"></span>
         <i class="bi bi-plus-circle"></i> 순서추가
         </button>
         </div>
   
      <div class="noti">
       </div>
       </div>
    <!-- 요리순서 끝 -->
     
     
                </div><!--/regi_center-->
     <!-- 저장, 취소 버튼 -->
     <div class="regi_btm">
      <button type="button" id="recipeSave" class="btn-lg btn-primary">저장</button>      
      <button type="button" id="recipeCancel" class="btn-lg btn-default">취소</button>
     </div>
     
     <input type = "hidden" id = "mainIrdntCount" name = "mainIrdntCount" value= ""/>
     <input type = "hidden" id = "subIrdntCount" name = "subIrdntCount" value= ""/>
     <input type = "hidden" id = "cookingCount" name = "cookingCount" value= ""/>
     
     
   </div><!-- /container -->
   </form>
   
   
   <input type="hidden" name="isRestrict" value="false" /> 
   <script type="text/javascript" src="https://recipe1.ezmember.co.kr/static/js/jquery-ui-1.11.4.js" charset="utf-8"></script>
   <script type="text/javascript" src="https://recipe1.ezmember.co.kr/static/js/tag-it.min.js" charset="utf-8"></script>
   <script type="text/javascript" src="https://recipe1.ezmember.co.kr/static/js/ez_dialog.min_20160430.js" charset="utf-8"></script>
   <script type="text/javascript" src="https://recipe1.ezmember.co.kr/static/js/coreutil.min_20170112.js" charset="utf-8"></script>
   <script type="text/javascript" src="https://recipe1.ezmember.co.kr/static/js/ui.min_20150609.js" charset="utf-8"></script>
                                             
        <!-- footer 시작 -->  
         <%@ include file="/WEB-INF/views/include/footer.jsp" %>
         <!-- footer 종료 --> 
             
   </body>
   </html>