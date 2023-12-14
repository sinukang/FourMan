<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사업자등록 번호 테스트</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
	<div>
		<p>사업자 등록번호 입력</p>
		<input type="text" id="b_no" placeholder="-없이 입력해주세요" maxlength="10">
		<button type="button" id="checkBtn">확인</button>
	</div>
</body>
<script type="text/javascript">

	$(document).ready(function(){
		
		//사업자 등록번호 조회 
		$("#checkBtn").on("click", function(){
			
			var serviceKey = "jdqeda3KmEcYvpo8HNtf1xb%2B8SSbifMG34HyMYsOZtf5gUATuhzQ3NRCOKnyyhlFcm47ZSEuFR2gPpX2dnLfpQ%3D%3D";
			var b_no = $("#b_no").val();
			var data = {
				    "b_no": [b_no] // 사업자번호 "xxxxxxx" 로 조회 시,
				   }; 
			
			$.ajax({
				  url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey="+serviceKey,  // serviceKey 값을 xxxxxx에 입력
				  type: "POST",
				  data: JSON.stringify(data), // json 을 string으로 변환하여 전송
				  dataType: "JSON",
				  contentType: "application/json",
				  accept: "application/json",
				  success: function(result) {
				      console.log(result);
				      console.log(result.data);
				      
				      let b_stt_cd = result.data[0].b_stt_cd;
				      if(b_stt_cd == "01"){
				    	  console.log("인증에 성공했습니다.");
				      }else if(b_stt_cd == "02"){
				    	  console.log("인증에 실패했습니다. 휴업자 상태입니다.");
				      }else if(b_stt_cd == "03"){
				    	  console.log("인증에 실패했습니다. 폐업자 상태입니다.");
				      }
				  },
				  error: function(result) {
				      console.log(result.responseText); //responseText의 에러메세지 확인
				  }
			});
			
		});

		
	});

</script>
</html>