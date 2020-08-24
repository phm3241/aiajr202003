//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
var domain = "http://localhost:8080/order/";


function regItemForm(){
   //$("#regItemForm_page").css("display","block");
   $(".regItemForm").toggle();
   
}

funcion regItem(){
		
		var regFormData = new FormData();
		regFormData.append('uid', $('#uid').val());
		regFormData.append('upw', $('#upw').val());
		regFormData.append('uname', $('#uname').val());
		// 파일 첨부
		if($('#photo')[0].files[0] != null){
			regFormData.append('photo',$('#photo')[0].files[0]);
		}
		
		$.ajax({
			url : 'http://localhost:8080/mm/members',
			type : 'post',
			processData: false, // File 전송시 필수
			contentType: false, // multipart/form-data
			data : regFormData,
			/* data : {
					uid: $('#uid').val(), 
					upw: $('#upw').val(), 
					uname: $('#uname').val()
					}, */
			success : function(data){
				alert(data); 
				memberList();
				document.getElementById('regForm').reset();
			}
		});
		
	}