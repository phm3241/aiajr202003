// 1. 회원등록 ㅡ> 데이터저장 : 자바스크립트의 객체 형식으로 ㅡ> 배열에

// 생성자 함수 
// 생성자 캡슐화 : 변수의 직접참조를 막기 위해.. this 말고, var로 선언하고 getter, setter 만들기.
function Member(uid, upw, uname){
    this.id = uid;
    this.pw = upw;
    this.name = uname;
};

// 배열생성
var members = [];



// 회원 정보를 저장하는 함수
// ◆ 실수부분 : value를 안썼다..
// value없이 그냥 요소아이디만 가져오면, [object HTMLInputElement] 이렇게 출력된다..
function create() {
    var id =document.getElementById('uid').value;
    var pw =document.getElementById('pw').value;
    var name =document.getElementById('uname').value;

    // 배열에 데이터(생성자 통한 객체) 삽입 : 배열이름.push 
    members.push(new Member(id, pw, name));       
    console.log(members);      

    // 추가한 회원객체 ㅡ> 회원리스트에 화면에 출력하기
    displayTable();
    
    // 무조건 false 반환해주어야한다.? 왜?
    return false;
};



// 2. 회원리스트
// 회원리스트 브라우저에 출력하기 : 문서객체 ㅡ> body
//  .innerHTML += 행
function displayTable(){

    var listHTML = '';

    // ◆ 실수부분 : 이 부분은 추가하지 않고, 아래 HTML만 추가하는 것으로 작성했었다..
    listHTML += '<table  class="listtable">';
    listHTML += '   <tr>'; 
    listHTML += '       <td> index </td>';
    listHTML += '       <td> 아이디(이메일) </td>';
    listHTML += '       <td> 비밀번호 </td>';
    listHTML += '       <td> 이름 </td>';
    listHTML += '       <td> 관리 </td>';
    listHTML += '   </tr>';


        // ◆ 실수부분 : 인덱스를 1부터 시작하려고 i를 1로 했다..
        // 그래서 당연히 members[1] 는 null이니까 출력이 안되었다..
        // ㅡ> i=0으로 수정하고, 인덱스출력은 (i+1)로 1부터 나오도록 수정
        for(var i=0; i<members.length; i++){
            
            listHTML += '   <tr>'; 
            listHTML += '       <td>' + (i+1) + '</td>';
            listHTML += '       <td>' + members[i].id + '</td>';
            listHTML += '       <td>' + members[i].pw + '</td>';
            listHTML += '       <td>' + members[i].name + '</td>';
            listHTML += '       <td> 수정 ㅣ 삭제 </td>';
            listHTML += '   </tr>';    
        };

    listHTML += '</table>';
    
    // body의 회원리스트에 더하기 
    var listTable = document.getElementById('list');
    listTable.innerHTML = listHTML;

};











//--------------------------------------------------------------------------------------------------
// 회원 정보 수정/ 삭제, submit 이벤트 처리 
window.onload = function(){

    // ◆ 실수부분 : 먼저 실행해줘야한다. (회원리스트 브라우저에 출력해야하니까..)
    displayTable();
    


    // 회원정보 등록. 변수 캐스팅
    var regForm = document.getElementById('regForm');
    
    // 등록버튼 눌렀을 때 ㅡ> .onsubmit 이벤트속성, 함수 실행
    regForm.onsubmit = create;
    

    
    // member객체(javascript object) ㅡ> JSON객체(String) 변환해서
    // ㅡ> localStorage에 저장하기
    localStorage.setItem('member',jsonmeber);

    var saveData = localStorage.getItem('member');

        // 탐색결과 확인
        console.log('저장데이터 : ' +saveData);


    // 
    // // 수정버튼 클릭시, 
    // var btn_edit = document.createElement('button');
    // btn_edit.onlick = function(){

    // };  

    // // 여러 문서객체 값을 가져오는 것. 
    // // .getElementsByName('job')로 배열로 가져올 수 있다. 
    // var regForm = document.getElementsByName('regForm');
    // console.log(regForm[0].value);
    // console.log(regForm[1].value);

    // var inputs = document.getElementsByTagName('input');
    // // console.log(inputs); 
    // console.log(inputs[0].value); 
    // console.log(inputs[1].value); 
    // console.log(inputs[2].value);



    

     
}; // onload end 


// JSON -------------------------------------------------------------------------

// 저장하거나 데이터 전송을 위해 Json객체(String)로 변환하기 
        //  : JSON 내장객체의 .stringify() 메서드 사용
        // JavaScript Object ㅡ> Json (String)
        // var jsondata = JSON.stringify(book);
        
        // console.log('jsondata type : ' + typeof(jsondata));
         
        // window.onload = function(){
        //     document.getElementById('json').innerHTML = jsondata;


        //     // String JSON
        //     var newdata ='{"memberid":"cool","membername":"COOL","age":27,"program":["java","python","javascript"]}';
        //     console.log('newdata type : '+typeof(newdata));

        //     // Json (String) ㅡ> JavaScript Object 
        //     var newObj = JSON.parse(newdata);
        //     console.log('newObj type : '+ typeof(newObj));
        //     console.log(newObj);

        //     // 객체로 변환되었으므로 memberid를 불러올 수 있다.
        //     alert(newObj.memberid);
            

        // };



// // localStorage은 생명주기가 없으므로, 데이터를 활용하고 최종적으로 만들어지면, 서버로 보낸다?

//         // -------------------------------------------------------------------------
//         // 저장
//         // 키값을 적어 저장한다
//         // setItem : 저장할 때  문자열로 String 저장된다. ★
//         // 또 똑같은 정보를 넣으면 기존 정보가 갱신된다. 
//         localStorage.setItem('name','손흥민');

//         // 탐색
//         // 키값으로 데이터를 꺼내올 수 있다. 
//         // getItem : 가져올때도 문자열 String이다 ★
//         var saveData = localStorage.getItem('name');

//         // 탐색결과 확인
//         console.log('저장데이터 : ' +saveData);

//         // 수정
//         localStorage.setItem('name','박지성');
//         var saveData = localStorage.getItem('name');
//         console.log('저장데이터 : ' +saveData);

//         // 삭제
//         localStorage.removeItem('name');
//         var saveData = localStorage.getItem('name');
//         console.log('저장데이터 : ' +saveData);