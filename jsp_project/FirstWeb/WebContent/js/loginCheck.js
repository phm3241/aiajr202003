
// alert('logincheck');

// 사용자 입력 폼 Casting
// 기본적인 유효성

// <form> casting
var form = document.getElementById('loginForm');

// setAttribute로 
form.setAttribute('action', 'http://www.naver.com');

// onsubmit
form.onsubmit = function(){

    // <input> casting
    var uid = document.getElementById('id');
    var upw = document.getElementById('pw');

    // 유효성검사 : 아이디 
    if(uid.value == null || uid.value.length<1){
        alert('아이디를 입력해주세요.');
        return false;  // ★ 아이디 없는 경우, 원래기능 하지 않도록..중요!
    };

    // 유효성검사 : 비밀번호 
    if(upw.value == null || uid.value.length<1){
        alert('비밀번호를 입력해주세요.');
        return false;  // ★ 아이디 없는 경우, 원래기능 하지 않도록..중요!
    };

}
