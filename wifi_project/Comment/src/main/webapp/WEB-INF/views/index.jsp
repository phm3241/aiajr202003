<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

   <!DOCTYPE html>
   <html lang="en">
   <head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
       <title>kakaoLogin</title>
       <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
   </head>
   <body>
   
   		<!-- 댓글 등록 버튼 -->
   		<button type="button" class="btn_regComment" onclick="regComment()">댓글등록</button>
   		
   		<!-- 댓글 리스트 -->
		<div>
			<div>
				<div>작성자</div>
				<div>댓글내용</div>
				<a>수정</a>
				<a>삭제</a>
				<div>등록시간</div>
			</div>
		</div>

	
    
   <script>
   		
   		var loginMix = ${loginMidx};
   		
   		
   		$(document).ready(function(){
   			getComment();
   			
   		});
   		
   		/* 댓글 리스트 */
   		function getComment(){
   			
	   		var domain = "http://localhost:8082";
	   		$.ajax({
	   			url : domain,
	   			type : 'GET',
	   			success : function(data){
	   				
	   				if(data != null){
	   					alert('');
	   					
	   					// 본인 댓글이면, 수정.삭제 버튼 활성화
	   					var html ='';
	   					
	   					html +='';
	
	   					
	   					
	   				} else {
	   					alert('');
	   				}
	   				
	   			}
	   			
   			});
   		} // getComment() end
   		
   		
   		
   		/* 댓글 등록 */
   		function regComment(){
   			
   			var regFormData = new FormData();
   			regFormData.append('content',$('.content').val());
   			regFormData.append('midx',loginMidx);
   			regFormData.append('iidx',$('.iidx')val());
   			
   			$.ajax({
   				url : domain,
   				type : 'POST',
   				data : regFormData,
   				success : function(data){
   					if(data==1){
   						alert('댓글 등록 성공');
	   					getComment();
   					} else {
   						alert('댓글 등록 실패');
   					};
					   					
   				}
   				
   			});
   		}  // regComment()  end
   		
   		
   		
   		function editComment(){
   			
   			if(confirm('댓글을 수정하시겠습니까?')){
   				
   				$.ajax({
   					url : domain,
   					type :'PUT',
   					success : function(data){
   						
   						if(data==1){
   							alert('댓글을 수정했습니다.');
   							getComment();
   							
   						} else {
   							alert('댓글을 수정하지 못했습니다. 다시 시도해주세요.');
   						}
   						
   					}
   					
   				});
   			};
   		}  // editComment() end
   		
   		
   		
   		function delCommant(cidx){
   			
			if(confirm('댓글을 삭제하시겠습니까?')){
   				
   				$.ajax({
   					url : domain+'/'+cidx,
   					type :'PUT',
   					success : function(data){
   						
   						if(data==1){
   							alert('댓글을 삭제했습니다.');
   							getComment();
   							
   						} else {
   							alert('댓글을 삭제하지 못했습니다. 다시 시도해주세요.');
   						}
   						
   					}
   					
   				});
   			};
   			
   			
   		}
   		
   		
   		
   		
   		
   		
   
   
   </script> 


   </body>
   </html>