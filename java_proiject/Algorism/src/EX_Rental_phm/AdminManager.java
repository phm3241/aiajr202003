package EX_Rental_phm;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class AdminManager implements RentalInterface {

    private ArrayList<Member> member;
    Scanner sc;
    public AdminManager() {
        this.member =  new ArrayList<Member>();
        sc =  new Scanner(System.in);
    }

    //어드민매니저 객체 싱글톤 구현
    private static AdminManager manager = new AdminManager();
    public static AdminManager getInstance(){
        return manager;
    }

    //회원정보보기
    //객체 전체 목록 출력
    @Override
    public void showInfo() {
        Iterator itr = member.iterator();
        while(itr.hasNext()){
            System.out.println(itr.next());
        }
    }

    @Override
    public void addInfo() {
        String id = null, pw = null, pw2 = null, name = null, phoneNum = null, addr = null, email = null;
        int age = 0;

        //비밀번호 확인 루프를 위한 변수
        boolean checkPw = true;

        System.out.println("회원가입을 시작합니다.");
        System.out.println("사용하실 아이디를 입력해 주세요.");
        id = sc.nextLine();
        while(checkPw) {
            System.out.println("비밀번호를 입력해 주세요.");
            pw = sc.nextLine();
            System.out.println("다시한번 입력해 주세요.");
            pw2 = sc.nextLine();
            if (pw.equals(pw2)) {
                System.out.println("이름을 입력해 주세요.");
                name = sc.nextLine();
                System.out.println("전화번호를 입력해 주세요.");
                phoneNum = sc.nextLine();
                System.out.println("주소를 입력해 주세요.");
                addr = sc.nextLine();
                System.out.println("이메일을 입력해 주세요.");
                email = sc.nextLine();

                //입력받은 데이터 저장
                Member info = new Member(name,age,phoneNum,addr,email,id,pw);
                member.add(info);

                System.out.println("회원가입이 정상적으로 완료되었습니다.");
                //저장후 무한루프를 빠져나오기 위해 checkPw를 false로 변경
                checkPw=false;
            } else {
                System.out.println("입력하신 비밀번호가 다릅니다. 다시 입력해 주세요.");
                continue;
            }
        }
    }


    int searchIndex(String id) {

        //정상적인 index 값은 0~이상의 값, 찾지 못했을 때 구분 값 -1을 사용
        int searchIndex = -1;

        //배열의 반복으로 id값을 비교해서 index 값을 찾는다.
        for (int i = 0; i < member.size(); i++) {
            if (member.get(i).id.equals(id)) {
                searchIndex = i;
                break;
            }
        }
        return searchIndex;
    }

    @Override
    public void editInfo() {

        System.out.println("수정하실 분의 아이디를 선택해 주세요.");
        String id = sc.nextLine();

        int index = searchIndex(id);

        MemberInfo info = null;

        System.out.println("1. 비밀번호 | 2. 전화번호 | 3.주소 | 4. 이메일");

        int selectNum = sc.nextInt();
        switch (selectNum){
            case 1:
                boolean check = true;
                while(check) {
                    System.out.println("변경하실 비밀번호를 입력해 주세요.");
                    String pw1 = sc.nextLine();
                    System.out.println("다시 입력해주세요.");
                    String pw2 = sc.nextLine();

                    //아이디,비밀번호정보 받고 수정해야함
                    if (pw1.equals(pw2)) {
                        member.get(index).pw = pw1;
                        System.out.println("비밀번호 변경이 완료되었습니다.");
                        check = false;
                        break;
                    } else {
                        System.out.println("비밀번호가 맞지 않습니다. 다시 입력해 주세요.");
                        continue;
                    }
                }
            case 2:
                System.out.println("변경하실 전화번호를 입력해 주세요.");
                String phoneNumber = sc.nextLine();

                member.get(index).phoneNum = phoneNumber;
                break;
            case 3:
                System.out.println("변경하실 주소를 입력해 주세요.");
                String addr = sc.nextLine();

                member.get(index).addr = addr;
                break;
            case 4:
                System.out.println("변경하실 이메일을 입력해 주세요.");
                String email = sc.nextLine();

                member.get(index).email = email;
                break;
        }
    }

    @Override
    public void deleteInfo() {
        System.out.println("삭제하실분의 아이디를 입력해 주세요.");
        String id = sc.nextLine();

        int index = searchIndex(id);

        member.remove(index);

    }

    @Override
    public void login() {
        boolean check = true;
        while(check) {
            System.out.println("아이디를 입력해 주세요.");

            String id = sc.nextLine();
            sc.nextLine();
            int index = searchIndex(id);

            if (index > 0) {
                System.out.println("비밀번호를 입력해 주세요.");
                String pw = sc.nextLine();
                if(member.get(index).pw.equals(pw)){
                    System.out.println("로그인이 완료되었습니다.");
                    member.get(index).loginCheck = true;
                    check = false;
                    break;
                } else{
                    System.out.println("비밀번호를 다시 입력해 주세요.");
                    continue;
                }
            } else {
                System.out.println("입력하신 아이디가 없습니다. 다시 입력해주세요.");
                continue;
            }
        }
    }

    public void logOut(){

        for(int i=0; i < member.size(); i++){
            if(member.get(i).loginCheck == true){
                    member.get(i).loginCheck = false;
            System.out.println("로그아웃 되었습니다.");
            break;
        } else{
                System.out.println("로그인된 계정이 없습니다.");
                break;
            }
            }

    }





    @Override
    public void adminLogin() {

    }

    @Override
    public void showBookInfo() {

    }

    @Override
    public void addBookInfo() {

    }

    @Override
    public void editBookInfo() {

    }

    @Override
    public void deleteBookInfo() {

    }

    @Override
    public void showDvdInfo() {

    }

    @Override
    public void addDvdInfo() {

    }

    @Override
    public void editDvdInfo() {

    }

    @Override
    public void deleteDvdInfo() {

    }

    @Override
    public void showGameInfo() {

    }

    @Override
    public void addGameInfo() {

    }

    @Override
    public void editGameInfo() {

    }

    @Override
    public void deleteGameInfo() {

    }
}
