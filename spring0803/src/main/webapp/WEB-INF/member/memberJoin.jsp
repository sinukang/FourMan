<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<link href="../css/mystyle.css" type="text/css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


<script type="text/javascript">
$(document).ready(function(){
	
	//alert("test");	
	$("#btn").on("click",function(){
		//alert("클릭했습니다.");
		
		let memberId = $("#memberId").val();
		
		$.ajax({
			type: "post",
			url : "<%=request.getContextPath() %>/member/memberIdCheck.do",	
			data : {"memberId" : memberId},
			dataType : "json", 
			success : function(data){
				//alert("성공");
				//alert(data.cnt);
				if (data.cnt == 0){
					alert("사용할수 있는 아이디입니다.");
				}else{
					alert("사용할수 없는 아이디입니다.");
				}
				
			},
			error : function(){
				alert("실패");				
			}			
		});
		
	});
	
	
});

</script>
	

</head>
<body>
<script>
	function check(){
	//alert("체크함수들어옴");
	
	//let memberId = document.frm.memberId.value; //alert("입력된 아이디는?"+memberId);
	var fm = document.frm; //문서객체안의 폼객체이름
	//alert(document.frm.memberHobby[0].value); 	//alert(document.frm.memberHobby[1].checked);
	if(fm.memberId.value ==""){
		alert("아이디를 입력하세요");
		fm.memberId.focus();
		return;
		
	}else if (fm.memberPwd.value ==""){
		alert("비밀번호를 입력하세요");
		fm.memberPwd.focus();
		return;		
	}else if (fm.memberPwd2.value ==""){
		alert("비밀번호 확인을 입력하세요");
		fm.memberPwd2.focus();
		return;		
	}else if(fm.memberPwd.value !=fm.memberPwd2.value){
		alert("비밀번호가 일치하지 않습니다.");
		fm.memberPwd.value="";
		fm.memberPwd2.value="";
		fm.memberPwd.focus();
		return;
	}else if (fm.memberName.value ==""){
		alert("이름을 입력하세요");
		fm.memberName.focus();
		return;
	}else if (fm.memberPhone.value ==""){
		alert("핸드폰 번호를 입력하세요");
		fm.memberPhone.focus();
		return;		
	}else if (fm.memberAddr.value ==""){
		alert("주소를 입력하세요");
		fm.memberAddr.focus();
		return;	
	}else if (fm.memberEmail.value ==""){
		alert("이메일을 입력하세요");
		fm.memberEmail.focus();
		return;		
	}else if (!CheckEmail(fm.memberEmail.value)){
		alert("이메일 형식이 유효하지 않습니다.");
		fm.memberEmail.value="";
		fm.memberEmail.focus();
		return;	
	}else{
		var tf = checkYn(fm.memberHobby);
		if(tf==false){
			return;
		}
	}
	
    fm.action ="<%=request.getContextPath()%>/member/memberJoinAction.do";  //처리하기위해 이동하는 주소
	fm.method = "post";  //이동하는 방식  get 노출시킴 post 감추어서 전달
	fm.submit(); //전송시킴
	return;

}
	
//이메일이 잘못되었는지 확인하는 함수
function CheckEmail(str){ 
	//정규표현식 - 일정한 패턴에따라 해당되는 위치에 해당하는 값의 범위를 지정
     var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
     if(!reg_email.test(str)) { 
          return false;  
     }  
     else {
          return true; 
     } 
} 

	function checkYn(str){
		
		var isChk =false;
		for(var i =0;i<str.length;i++){
			if (str[i].checked == true){
				isChk = true;
				break;
			}	
		}
		
		if (!isChk){
			alert("가입목적을 하나이상 선택하세요");
			return false;
		}	
	}
		

</script>
<style>

body {
    background-color: #e0f7fa; /* Light green background */
}

table {
    border: 2px solid #009688; /* Teal border for the table */
    border-radius: 15px; /* Elliptical corners */
    background-color: #e0f7fa; /* Light blue background inside the table */
    margin: 20px auto;
}

table th, table td {
    padding: 10px;
    text-align: center;
}

input[type="text"], input[type="password"] {
    width: 280px;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #009688;
    border-radius: 5px;
    background-color: #e0f7fa; /* Light blue background for text input */
}

</style>
	
	
<h1 style="text-align: center;">회원가입 페이지 </h1><br>

	<form name="frm">
	<table border="1px" style="width:700px;"  class="center-table">
		<tr><th>사용자아이디</th>
		<td style="width:200px"><input type="text" name="memberId" value="" style="width:280px;">
		<input type="button" name="btn" id="btn" value="아이디중복체크"> 
		</td>
		
		</tr>
		<tr>
		<th>비밀번호</th>
		<td><input type="password" name="memberPwd" value="" style="width:280px;">	</td>
		</tr>
		<tr>
		<th>*비밀번호확인*</th>
		<td><input type="password" name="memberPwd2" value="" style="width:280px;">	</td>
		</tr>
		<tr>
		<th>이름</td>
		<td><input type="text" name="memberName" value="" style="width:280px;" maxlength="15"> </td>
		</tr>
		<tr>
		<th>생년월일</td>
		<td> <select name="memberYear">
			<option value="1991">1991</option>
			<option value="1990">1990</option>
			<option value="1989">1989</option>
	
			
			</select>
			
			<select name="memberMonth">
			<option value="01">01</option>	
			<option value="02">02</option>
			<option value="03">03</option>
			<option value="04">04</option>
			<option value="05">05</option>
			<option value="06">06</option>
			<option value="07">07</option>
			<option value="08">08</option>
			<option value="09">09</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
				
			</select>
			
			<select name="memberDay">
			<option value="01">01</option>	
			<option value="02">02</option>
			<option value="03">03</option>
			<option value="04">04</option>
			<option value="05">05</option>
			<option value="06">06</option>
			<option value="07">07</option>
			<option value="08">08</option>
			<option value="09">09</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
			</select>
			
		</td>
		</tr>
		<tr>
		<th>성별</td>
		<td>
		<input type="radio" name="memberGender" value="남" checked>남 
		<input type="radio" name="memberGender" value="여">여
		</td>		
        </tr>
                                 
		<tr>
		<th>휴대폰</td>
		<td><input type="text" name="memberPhone"  placeholder="010-0000-0000"    style="width:280px;">              
		</td>
		</tr>
		<tr>
		<th>주소</td>
		<td><select name="memberAddr">
			<option value="전주" selected>전주</option>
			<option value="서울" selected>서울</option>
			<option value="대전" selected>대전</option>
			<option value="광주" selected>광주</option>
			<option value="부산" selected>부산</option>
			<option value="울산" selected>울산</option>
		</select></td>
		</tr>
		<tr>
		<th>이메일</td>
		<td><input type="text" name="memberEmail" placeholder="asdasd@host"  style="width:280px;"> </td>
		</tr>
		<tr>
		<th>가입목적</th>
		<td>
		<input type="checkbox" name="memberHobby" value="다이어트">다이어트
		<input type="checkbox" name="memberHobby" value1="근비대">근비대
		<input type="checkbox" name="memberHobby" value2="바디프로필">바디프로필
		<input type="checkbox" name="memberHobby" value3="대회준비">대회준비
		
		</td>
		</tr>
		
		
		<tr><td colspan="2"><h3 style="text-align: center;">가입약관 및 안내사항</h3></td></tr>
		
		<tr><th colspan="2">==========이용시간 ========== <br>
			<p>평일 06시~ 23시 / 토요일 06시~ 19시[단축운영] / 일요일<span>휴무</span> *그외 공휴일은 별도공지*</p>
			==========이용 금액==========
			<table border="1px" style="width:700px;">
				<tr>
					<th>기간</th><td>1개월</td><td>3개월</td><td>6개월</td><td>12개월</td>
				</tr><br>
				<tr>	
					<th>금액</th><td>8만원</td><td>20만원</td><td>35만원</td><td>60만원</td>
				</tr><br>	
			</table> <br>
		<p>==========계약해지 및 환불조건==========<br>
		<br>
		(계약해지) 이용시작전:전액환불 / 이용시작후:결제금액-(할인전금액/이용일수=이용금액)환불<br>
		<br>
		(이용연기) 반드시 연기하고자 하는 당일 마감전까지 방문 또는 전화로 연기신청하셔야합니다. <br>
		<br>
		(손해배상) 시설물에 의하여 이용자 신체에 피해가 발생한 경우 이용자의 *고의․과실*이 없는 한 손해를 배상합니다.<br>
		<br>
		(소지품의 보관) 개인 락커를 이용하지않는 상태에서의 소지품 분실은 보상하지않습니다.<br>
			<br>
		===========기타==========<br>
		불법행위(욕설.폭행.불법촬영 등) 적발 즉시퇴장 조치 및 *영구*센터이용 제한하며<br>
		기구 및 시설 파손 또는 청결유지에 방해되는 행위(탄마가루.분비물)는<br> 경고조치(손해배상청구)함 </p>
		</th></tr>	
		
		<tr>
		<th colspan="2" style="text-align:center;">
		<input type="button" name="btn" value="확인" onclick="check();">
		
		</td>
		</tr>
	
		
	
	
</table>
</form>
</body>
</html>