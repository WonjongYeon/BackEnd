<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script type="text/javascript">
$(document).ready(function() {
    
   $("#hiBbsTitle").focus();	
   
   $("#btnWrite").on("click", function() { //ajax통신이 끝날때까지 버튼 비활성화
	   $("#btnWrite").prop("disabled",true);  //글쓰기 버튼 비활성화
		
	   if($.trim($("#hiBbsTitle").val()).length <= 0)
	   {
			alert("제목을 입력하세요");
			$("#hiBbsTitle").val("");
			$("#hiBbsTitle").focus();
			$("#btnWrite").prop("disabled",false);  //글쓰기 버튼 활성화
			return;
	   }
	   
	   if($.trim($("#hiBbsContent").val()).length <= 0)
	   {
		   alert("내용을 입력하세요");
		   $("#hiBbsContent").val("");
		   $("#hiBbsContent").focus();
		   $("#btnWrite").prop("disabled",false); //글쓰기 버튼 활성화
		   return;
	   }
	   
	   var form = $("#writeForm")[0];   
	   var formData = new FormData(form);  //formdata를 이용해 FormData 객체 생성
	   
	   $.ajax({
		   type:"POST",
		   enctype:"multipart/form-data", //첨부파일을 전송할떄 사용
		   url:"/board/writeProc",   //게시물 등록 컨트롤러
		   data:formData,
		   processData:false,  //form-Data 를 string으로 변환하지 않음
		   contentType:false,  //content-type  헤더가  multipart/form-data로 전송
		   cache:false,
		   timeout:600000,
		   beforeSend:function(xhr)
		   {
			   xhr.setRequestHeader("AJAX","true");
		   },
		   success:function(response)
		   {
			   if(response.code == 0)
			   {
				   alert("게시물이 등록되었습니다.");
				   location.href = "/board/list";
				   /*
				   document.bbsForm.action = "/board/list"   //bbsForm에 action 있을때
				   document.bbsForm.submot();
				   */
		       }
			   else if(response.code == 400)
			   {
				   alert("파라미터 값이 올바르지 않습니다");
				   $("#hiBbsTitle").focus();
				   $("#btnWrite").prop("disabled",false);  //글쓰기 버튼 활성화
			   }
			   else
			   {
				   alert("오류라고 이자식아");
				   $("#hiBbsTitle").focus();
				   $("#btnWrite").prop("disabled",false);  //글쓰기 버튼 활성화
			   }
		   },
		   error:function(error)
		   {
			   icia.common.error(error);
			   alert("게시물 등록 중 오류가 발생하였습니다");
			   $("#btnWrite").prop("disabled",false);   //글쓰기 버튼 활성화
		   }
		   
	   });
	   
	   
   });
   
   $("#btnWrite2").on("click", function() { //ajax통신이 끝날때까지 버튼 비활성화
	   $("#btnWrite2").prop("disabled",true);  //글쓰기 버튼 비활성화
		
	   if($.trim($("#hiBbsTitle").val()).length <= 0)
	   {
			alert("제목을 입력하세요");
			$("#hiBbsTitle").val("");
			$("#hiBbsTitle").focus();
			$("#btnWrite2").prop("disabled",false);  //글쓰기 버튼 활성화
			return;
	   }
	   
	   if($.trim($("#hiBbsContent").val()).length <= 0)
	   {
		   alert("내용을 입력하세요");
		   $("#hiBbsContent").val("");
		   $("#hiBbsContent").focus();
		   $("#btnWrite2").prop("disabled",false); //글쓰기 버튼 활성화
		   return;
	   }
	   
	   var form = $("#writeForm")[0];   
	   var formData = new FormData(form);  //formdata를 이용해 FormData 객체 생성
	   
	   $.ajax({
		   type:"POST",
		   enctype:"multipart/form-data", //파일을 전송할떄 사용
		   url:"/board/writeProc2",   //게시물 등록 컨트롤러
		   data:formData,
		   processData:false,  //form-Data 를 string으로 변환하지 않음
		   contentType:false,  //content-type  헤더가  multipart/form-data로 전송
		   cache:false,
		   timeout:600000,
		   beforeSend:function(xhr)
		   {
			   xhr.setRequestHeader("AJAX","true");
		   },
		   success:function(response)
		   {
			   if(response.code == 0)
			   {
				   alert("게시물이 등록되었습니다.");
				   location.href = "/board/list";
				   /*
				   document.bbsForm.action = "/board/list"   //bbsForm에 action 있을때
				   document.bbsForm.submot();
				   */
		       }
			   else if(response.code == 400)
			   {
				   alert("파라미터 값이 올바르지 않습니다");
				   $("#hiBbsTitle").focus();
				   $("#btnWrite").prop("disabled",false);  //글쓰기 버튼 활성화
			   }
			   else
			   {
				   alert("오류라고 이자식아");
				   $("#hiBbsTitle").focus();
				   $("#btnWrite").prop("disabled",false);  //글쓰기 버튼 활성화
			   }
		   },
		   error:function(error)
		   {
			   icia.common.error(error);
			   alert("게시물 등록 중 오류가 발생하였습니다");
			   $("#btnWrite").prop("disabled",false);   //글쓰기 버튼 활성화
		   }
		   
	   });
	   
	   
   });
   
   $("#btnList").on("click", function() {

   });
});
</script>
</head>
<body>
<%@ include file="/WEB-INF/views/include/navigation.jsp" %>
<div class="container">
   <h2>게시물 쓰기</h2>
   <form name="writeForm" id="writeForm" method="post" enctype="multipart/form-data">
      <input type="text" name="userName" id="userName" maxlength="20" value="${user.userName}" style="ime-mode:active;" class="form-control mt-4 mb-2" placeholder="이름을 입력해주세요." readonly />
      <input type="text" name="userEmail" id="userEmail" maxlength="30" value="${user.userEmail}" style="ime-mode:inactive;" class="form-control mb-2" placeholder="이메일을 입력해주세요." readonly />
      <input type="text" name="hiBbsTitle" id="hiBbsTitle" maxlength="100" style="ime-mode:active;" class="form-control mb-2" placeholder="제목을 입력해주세요." required />
      <div class="form-group">
         <textarea class="form-control" rows="10" name="hiBbsContent" id="hiBbsContent" style="ime-mode:active;" placeholder="내용을 입력해주세요" required></textarea>
      </div>
      <input type="file" id="hiBbsFile" name="hiBbsFile" class="form-control mb-2" placeholder="파일을 선택하세요." required />
      <div class="form-group row">
         <div class="col-sm-12">
         <button type="button" id="btnWrite2" class="btn btn-primary" title="저장">저장2</button>
            <button type="button" id="btnWrite" class="btn btn-primary" title="저장">저장</button>
            <button type="button" id="btnList" class="btn btn-secondary" title="리스트">리스트</button>
            
         </div>
      </div>
   </form>
   <form name="bbsForm" id="bbsForm" method="post">
      <input type="hidden" name="searchType" value="" />
      <input type="hidden" name="searchValue" value="" />
      <input type="hidden" name="curPage" value="" />
   </form>
</div>
</body>
</html>