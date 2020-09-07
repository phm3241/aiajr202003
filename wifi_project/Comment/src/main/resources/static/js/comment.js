// (function(){
//   'use strict';
  
//   angular
//     .module('commentsApp', [])
//     .controller('CommentsController', CommentsController);
  
//   // Inject $scope dependency.
//   CommentsController.$inject = ['$scope'];
  
//   // Declare CommentsController.
//   function CommentsController($scope) {
//     var vm = this;
    
//     // Current comment.
//     vm.comment = {};

//     // Array where comments will be.
//     vm.comments = [];

//     // Fires when form is submited.
//     vm.addComment = function() {
//       // Fixed img.
//       vm.comment.avatarSrc = 'http://lorempixel.com/200/200/people/';

//       // Add current date to the comment.
//       vm.comment.date = Date.now();

//       vm.comments.push( vm.comment );
//       vm.comment = {};

//       // Reset clases of the form after submit.
//       $scope.form.$setPristine();
//     }

//     // Fires when the comment change the anonymous state.
//     vm.anonymousChanged = function(){
//       if(vm.comment.anonymous)
//         vm.comment.author = "";
//     }
//   }

// })();





var loginMidx = 2;
var iidx=5;
var domain = 'http://localhost:8082/comments';

$(document).ready(function() {
	getComment(iidx);

});

/* 댓글 리스트 */
function getComment(iidx) {

	
	$.ajax({
		url : domain+'/'+iidx,
		type : 'GET',
		success : function(data) {

			if (data != null) {
				alert('댓글 리스트 성공');

				// 본인 댓글이면, 수정.삭제 버튼 활성화
				var html = '';

				
				
				for(var i=0; i<data.length; i++){
					
					html +='				<div class="comment_card_'+data[i].cidx+'">';
					html +='					<div class="comment_imgWrap"><img src="/img/사과.jpg"></div>';
					html +='					<div class="comment_box">';
					html +='						<div class="comment_text_'+data[i].cidx+'">'+data[i].content+'</div>';
					html +='						<div class="comment_footer">';
					html +='							<div class="comment_info">';
					html +='								<input type="hidden" class="cidx" value="'+data[i].cidx+'">';
					html +='								<span class="comment_mname">'+data[i].midx+'</span>';
					html +='								<span class="comment_date">'+data[i].regdate+'</span>';
					html +='							</div>';
					html +='							<div class="comment_actions_'+data[i].cidx+'">';
					
					if(data[i].midx == loginMidx){
						html +='								<button type="button" class="btn_editComment" onclick="editCommentForm('+data[i].cidx+','+data[i].content+')">수정</button>';
						html +='								<button type="button" class="btn_delComment" onclick="delCommant('+data[i].cidx+')">삭제</button>';
					}

					html +='								<button type="button" onclick="">Reply</button>';
					html +='							</div>';
					html +='						</div>';
					html +='					</div>';
					html +='				</div>';
					html +=' ';

				}

				$('.commentlistWrap').html(html);

			} else {
				alert('댓글 리스트 실패');
			}

		}

	});
} // getComment() end


/* 댓글 등록 폼 */
function regCommentForm(iidx){

	var html = '';

	html +='				<div class="comment_imgWrap">';
	html +='					<img src="http://lorempixel.com/200/200/people">';
	html +='				</div>';
	html +='				<form class="comment_form" name="comment_form" onsubmit="return false;">';
	html +='					<div class="formRow">';
	html +='						<textarea class="comment_content" placeholder="Add comment..." required></textarea>';
	html +='					</div>';
	html +='					<div class="formRow">';
	html +='						<h4 class="comment_mname">'+loginMidx+'</h4>';
	html +='						<input type="hidden" class="comment_midx" value="2">';
	html +='					</div>';
	html +='					<div class="formRow">';
	html +='						<input type="submit" value="Add Comment" class="btn_regComment" onclick="regComment('+iidx+')">';
	html +='					</div>';
	html +='				</form>';

}


/* 댓글 등록 */
function regComment(iidx) {

	alert('댓글등록 시작 iidx : '+iidx);

	var regFormData = new FormData();
	regFormData.append('content', $('.comment_content').val());
	regFormData.append('midx', loginMidx);
	regFormData.append('iidx', iidx);

	alert('regFormData : '+regFormData);
	alert('regFormData.content : '+regFormData.content);


	$.ajax({
		url : domain,
		type : 'POST',
		data : regFormData,
		success : function(data) {
			if (data == 1) {
				alert('댓글 등록 성공');
				getComment(iidx);
			} else {
				alert('댓글 등록 실패');
			}
			;
		}

	});
} // regComment()  end



/* 댓글 수정 폼 */
function editCommentForm(cidx, content) {
	
	var html = '';
	var html2 = '';

	html +='						<textarea class="comment_content" placeholder="'+content+'" required></textarea>';
	$('.comment_text_'+cidx).html(html);

	html2 +='						<button type="button" onclick="editComment('+cidx+','+content+')">수정</button>';
	$('.comment_actions_'+cidx).html(html2);
};




/* 댓글 수정 */
function editComment(cidx, content) {

	if (confirm('댓글을 수정하시겠습니까?')) {

		$.ajax({
			url : domain,
			type : 'PUT',
			data : {cidx : cidx, content : content},
			success : function(data) {

				if (data > 0) {
					alert('댓글을 수정했습니다.');
					getComment(data);

				} else {
					alert('댓글을 수정하지 못했습니다. 다시 시도해주세요.');
				}
			}

		});
	}
	;
} // editComment() end

/* 댓글 삭제 */
function delCommant(cidx) {

	if (confirm('댓글을 삭제하시겠습니까?')) {

		$.ajax({
			url : domain + '/' + cidx,
			type : 'PUT',
			success : function(data) {

				if (data == 1) {
					alert('댓글을 삭제했습니다.');
					getComment(iidx);

				} else {
					alert('댓글을 삭제하지 못했습니다. 다시 시도해주세요.');
				}

			}

		});
	};
};


