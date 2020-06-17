// 회원 정보를 저장할 배열 생성
//// 객체를 저장할 배열 생성
var members = [];


// ★ 회원 데이터를 객체화 시킬 생성자 함수
//// 3개 데이터를 하나로 묶어서 객체로 만들어서 저장 
//// 나중에 new Member(cool, '시원한', 111 ) 로 객체 만들어주기.
function Member(mid, mname, mpw) {
    this.id = mid;
    this.name = mname;
    this.pw = mpw;
}


// 공통 함수 : 메서드 정의
//// 사용하지는 않았다..
//// 모든 함수(Member)에는  prototype이라는 객체를 가지고 있고, 
//// 속성을 추가해줄 수 있다. (ex  .toString,  .makehtml 등)
Member.prototype.toString = function () {
    var makeHtml = '';
    makeHtml += '<td>';
    makeHtml += this.id;
    makeHtml += '</td>';
    makeHtml += '<td>';
    makeHtml += this.name;
    makeHtml += '</td>';
    makeHtml += '<td>';
    makeHtml += this.pw;
    makeHtml += '</td>';
    return makeHtml;
}


// 데이터 저장함수
function addMember(member) {
    members.push(member);
    console.log(members);

    // 동기화
    //// 배열의 갱신이 중요하므로, 배열에 추가되는 이 위치에서 들어가는 것이 좋다. 
    setStorage();
    displayTable();
}

// 회원 데이터 저장 
//// 캐스팅. vlaue로 get만 해서 변수사용.
////    ㅡ> 생성자함숭로 객체생성
////        ㅡ> 배열이름.push로 객체를 배열에 넣어주기.  
function createMember() {
    // 사용자 입력 데이터 받기, document로 케스팅 후 value 속성 사용
    var id = document.getElementById('uid').value;
    var name = document.getElementById('uname').value;
    var pw = document.getElementById('pw').value;
    // 배열에 데이터 추가
    addMember(new Member(id, name, pw));
    

    //// 초기화상태로 만들어주기 위해. 
    //// 입력해서 저장버튼 누르면, 저장되서 리스트 넘어가고, 입력란은 초기화된다. 
    this.reset();

    // form 테그의 action 실행이 되지 않도록 반드시 return false
    //// return false 로 액션으로 특정페이지 가지 못하도록 막아두었는데,
    //// ??????
    return false;

}

// 회원 리스트 출력 기능
//// 하나하나 테이블의 tr을 추가하는 방법보다
//// 테이블을 통채로 넣는 방법이 더 효율적. 
function displayTable() {

    var listHtml = '';
    listHtml += '<table  class="listtable">';
    listHtml += '   <tr>';
    listHtml += '       <th>index</th>';
    listHtml += '       <th>ID(이메일)</th>';
    listHtml += '       <th>비밀번호</th>';
    listHtml += '       <th>이름</th>';
    listHtml += '       <th>관리</th>';
    listHtml += '   </tr>';

    // 배열의 요소를 반복문으로 테그 생성
    //// onclick = edit  onclick해서 함수호출 하는 것이 아니라
    //// a태그에 javascript 함수호출하는 방식으로 해야한다. 왜??
    //// 테이블 생성할 때 미리 수정 삭제 링크주소에 인덱스 넣어두기
    for (let i = 0; i < members.length; i++) {
        listHtml += '   <tr>';
        listHtml += '       <td>' + i + '</td>';
        listHtml += '       <td>' + members[i].id + '</td>';
        listHtml += '       <td>' + members[i].pw + '</td>';
        listHtml += '       <td>' + members[i].name + '</td>';
        listHtml += '       <td> <a href="javascript:editSet('+i+')">수정</a> | <a href="javascript:deleteMember('+i+')">삭제</a> </td>';
        listHtml += '   </tr>';
    }

    listHtml += '</table>';

    //// 캐스팅 후 동적으로 추가. 
    //// 회원리스트가 갱신되는 시점 : CRUD할때 
    //// - 처음 브라우저가 로드될 때 한번 출력.  ( create() )
    //// - 회원정보 등록 : 배열에 객체가 추가되어 데이터가 변경. ( window.onload = function () )
    //// - 회원정보가 수정되었을 때.( editMember() )
    //// - 회원정보 삭제 : 배열에 객체가 추가되어 데이터가 변경. ( deleteMember() )
    var listTable = document.getElementById('list');
    listTable.innerHTML = listHtml;

}

// 리스트에서 선택한 회원의 데이터를 수정 폼에 Set
//// 수정버튼 누를 때 idx값을 전달 ㅡ> 배열을 참조해서 입력란에 기존 정보를 출력해주는 메서드.
//// idx 중요. 내가 수정하고자 하는 idx를 가지고 있어야한다. 
function editSet(idx){

    // 수정 폼 영역 출력
    //// css에서 안보이게 display='none' 해두었던 수정폼을 보여지도록 동적으로 설정. 
    document.getElementById('edit').style.display='block';

    // 사용자 입력 데이터 받기, document로 케스팅 후 value 속성 사용
    //// valu 캐스팅하고, value에 inx에 있던 기존 데이터 넣어주기..
    document.getElementById('eid').value=members[idx].id;
    document.getElementById('ename').value=members[idx].name;
    document.getElementById('epw').value=members[idx].pw;
    document.getElementById('idx').value=idx;

}

// 사용자 입력 데이터를 배열 요소 객체의 속성 값을 변경
function editMember() {
    // 사용자 입력 데이터 받기, document로 케스팅 후 value 속성 사용
    var id = document.getElementById('eid').value;
    var name = document.getElementById('ename').value;
    var pw = document.getElementById('epw').value;
    var idx = document.getElementById('idx').value;
    
    // 배열의 요소 인 Member 객체의 속성값을 변경.
    // setter/getter 메서드 구성해도 좋습니다.
    //// 수정된 사용자입력 데이터 넣어주기
    members[parseInt(idx)].id=id;
    members[parseInt(idx)].name=name;
    members[parseInt(idx)].pw=pw;

    document.getElementById('editForm').reset();

    // 리스트 테이블 갱신
    displayTable();

    // 동기화
    //// 수정되어서 배열이 변경되었기 떄문에 스토리지에 다시 갱신 필요
    setStorage();


    alert("수정되었습니다.\n수정폼 화면을 숨깁니다.");
    // 수정 폼 영역 출력
    //// 다 수정되었으니까, 수정팝업 후 다시 수정폼 안보이도록 display='none'
    document.getElementById('edit').style.display='none';

    return false;

}




// 배열에서 데이터를 삭제
//// splice( 지우고자하는 index, 여기서 몇개지울거냐는 카운트 )
//// ★ 변수로 만들 수 있으나, if문을 사용하여 confirm으로 true/false 받아서 처리
function deleteMember(idx){

    if(confirm('삭제하시겠습니까?')){
        members.splice(idx,1);
        // 화면 갱신
        displayTable();
        // 동기화
        setStorage();
    }
}



// localStorage 에 데이터 저장/수정/삭제 시에 업데이트
//// 저장에 대한 개념, file IO. DB. JDB (서버쪽) 
////  / Client는 브라우저쪽에서는 cookie, localstorage 제공.  변수 메모리에 저장
//// localstorage : 40mb는 도메인별로 파일저장할 수 있는 구조로 되어있음. 데이터타입은 문자로 저장해야함. 
////    ㅡ> JSON 문자열로 저장할 수 있는 규격화되어있는 객체 사용 .. 
////        객체를 JSON 객체를 통해서 문자열 변환하거나 JSON 객체를 자바스크립트 객체로 변환하거나.. 
////        JSON 객체는 배열형식으로도 저장가능. 
//// JSON은 객체형식 유지하면서 String 으로 변환되기 때문에. localStorage에 저장할 때 JSON하여 저장.  

//// 같은이름으로 저장하면 기존데이터가 갱신되기 때문에, 저장할때 수정할 때도 모두 setItem으로 해도된다.
//// JXON에 String으로 저장할때 배열객체를 통체로 저장할 수 있다. ( 키값, value(string))
//// 언제 저장해줄까.? 배열에 변화가 생겼을 때.. 배열요소 저장/수정/삭제 될때  localStorage에 저장(동기화)

function setStorage(){
    // 데이터의 갱신 : 추가, 수정, 삭제
    localStorage.setItem('members', JSON.stringify(members));
}

// localStorage 의 데이터와 배열의 동기화
function initStorage(){
    
    // localStorage 에 저장되어 있는 데이터
    var storageData = localStorage.getItem('members');

    if(storageData==null){
        // 프로그램 최초 시작 또는 데이터가 없는 상태
        //// 데이터가 없으면, 스토리지 생성한다. 아니면, setStorage()을 호출해도된다. 
        localStorage.setItem('members', JSON.stringify(members));
    } else {
        // 저장되어 있는 JOSN 데이터를 배열 객체로 변환 
        members = JSON.parse(storageData);
    }

}







// 저장, 수정 submit 이벤트 처리
//// html이 다 나오고 실행되어야할 때, onload 사용. 또는 script 태그를 html 아래에서 작성
//// onload는 단 한번 실행되는 함수. 
window.onload = function () {

    // 페이지가 로드된것은 프로그램을 시작하는 시점이다.
    // 저장된 데이터를 배열 객체로 변환
    initStorage();

    // 로드된 데이터를 테이블로 화면에 출력
    displayTable();


    // 입력 폼 casting -> onsubmit Event
    //// 함수를 외부에 따로 만들어두고 처리.
    //// 또는 함수가 많아지면, 함수들을 따로 모아서 따로 function 파일로 빼고 
    //// script 로 js 파일 호출하기 전에 위에서 먼저 function 파일을 호출하는 방법도 좋다. 
    //// 구조화.   
    document.getElementById('regForm').onsubmit = createMember;

    // 수정 폼 casting -> onsubmit Event 
    document.getElementById('editForm').onsubmit = editMember;
}