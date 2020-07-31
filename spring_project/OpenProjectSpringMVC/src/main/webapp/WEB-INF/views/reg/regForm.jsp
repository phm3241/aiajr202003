<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		@charset "UTF-8";
		
		* {
			margin: 0;
			padding: 0;
		}
		
		#header {
			padding: 15px 20px;
		}
		
		#nav {
			border-bottom: 1px solid #DDD;
			border-top: 1px solid #DDD;
			overflow: hidden;
			list-style: none;
		}
		
		#nav>li {
			float: left;
			padding: 5px 20px;
		}
		
		footer {
			text-align: center;
			border: 1px solid #DDD;
			padding: 20px 0;
			margin-top: 10px;
		}
		
		#nav+div {
			padding: 25px;
		}
		
		.subtitle {
			padding: 15px 0;
		}
		
		hr {
			border: 0px;
			border-top: thin solid #ddd;
			margin: 15px 0;
		}
		
		table.table td {
			padding: 5px;
		}
		
		input[type=text], input[type=password], input[type=email] {
			padding: 3px;
		}
		
		.deletForm_div {
			display: none;
			width: 300px;
			float: right;
		}
		
		.check_ok {
		color : blue;
		}
		.check_not {
			color : red;
		}
		/* #idchk{
			display: none;
		} */
	</style>

</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	
	<div>
		<h1 class="subtitle">회원 가입</h1>
		<hr>
		<form id="regForm" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" name="uid" id="uid" required>
						<span id="checkmsg"></span>
						<input type="checkbox" name="idchk" id="idchk">
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="upw" required></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="uname" required></td>
				</tr>
				<tr>
					<td>사진</td>
					<td><input type="file" name="uphoto"></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="submit" name="회원가입" >
						<input type="reset">
					</td>
				</tr>
			</table>

		</form>
	</div>
	
	
	
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>



<!-- <script>
	
	
	$(document).ready(function(){
		
		
		$('#regForm').submit(function(){
			
			// 아이디 중복체크가 안되어있으면, 제출이 안되고, uid쪽으로 커서들어가도록. 
			if(!$('#idchk').prop('checked')){
				alert("아이디 중북 체크는 필수 항목입니다.");
				$('#uid').focus();
				return false;
			};
		});
		
			
		
		
		
		$('#uid').focusin(function(){
			
			$(this).val(''); // 기존 텍스트를 공백으로
			$('#idchk').prop('checked', false);
			
			$('#checkmsg').text('');  //id체크 메시지도 공백으로
			$('#checkmsg').removeClass('check_not');
			$('#checkmsg').removeClass('check_ok');
			
		});
		
		
		
		$('#uid').focusout(function(){
			
			if($(this).val().length < 1){
				$('#checkmsg').text("아이디 항목은 필수항목입니다.");
				$('#checkmsg').addClass('check_not');
				return false; 	// 아래의 비동기 통신으로 안넘어간다. 
			}
			
			
			// 비동기 통신으로 아이디체크
			$.ajax({
				url : 'idCheck.do',  		 	//상대경로
				data : { uid : $(this).val()},  //데이터를 객체로 	
				success : function(data){
					
					if(data == 'Y'){
						$('#checkmsg').text("사용가능한 아이디입니다.");
						$('#checkmsg').addClass('check_ok');
						$('#idchk').prop('checked', true);
					
					} else {
						$('#checkmsg').text("사용 불가능한 아이디입니다.");
						$('#checkmsg').addClass('check_not');
						$('#idchk').prop('checked', false);
						
					}
				}
				
			});
		});
		
		
	});

</script> -->


