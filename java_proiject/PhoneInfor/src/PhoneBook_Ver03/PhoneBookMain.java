package PhoneBook_Ver03;

/*
배열을 이용해서 프로그램 사용자가 입력하는 정보가 최대 100개까지 유지되도록 프로그램을 변경. 
 ㅡ> 배열!을 어디에서 만들것인가? ㅡ> 메인쪽에서 만들 수 있긴한데, static으로 만들어줘야한다.(계속 저장, 검색, 삭제등 사용하니까) 
   ㅡ> 그러나 계속 메모리를 차지하기도하고, 또다른 배열이 생기지 않으므로, 인스턴스에 포함시키는 것이 좋다.
     ㅡ> PhoneBookManager에 만들어주어야겠다.  
 
 
아래기능 삽입

저장 : 이름, 전화번호, 생년월일 정보를 대상으로 하는 저장 
 ㅡ> PhoneInfor 클래스는 그냥 저장목적이니까 두고, 여기서 말하는 저장공간은 배열로 만들어야한다. 
 
검색 : 이름을 기준으로 데이터를 찾아서 해당 데이터의 정보를 출력
 ㅡ> 배열안에서! 이름을 기준으로! (이제 배열관점에서 작업)
 
삭제 : 이름을 기준으로 데이터를 찾아서 해당 데이터를 삭제
 ㅡ> 배열란에서! 이름을 기준으로! (이제 배열관점에서 작업) 
데이터 삭제 후 남아있는 데이터 처리는 데이터를 빈 공란이 없이 순차적으로
재정리 2번이 삭제되었다면 3번 이후 데이터들의 주소 값이 -1 처리되어 재저장.


PhoneInfor 클래스 : 데이터 저장 클래스
PhoneBookManager 클래스 : 기능. <ㅡ 여기에 배열의 기능을 넣어준다.

*/



public class PhoneBookMain {

	public static void main(String[] args) {
		
		PhoneBookManager manager=new PhoneBookManager();
		
		PhoneInfor info=null;
		
		while(true) {
			
			// 사용자의 입력 데이터를 인스턴스 생성
			info= manager.creatInstance();   // 데이터입력받아서 생성되도록
			// 정보를 배열에 저장
			manager.addInfo(info);   // 배열에 들어가도록
			// 전체 리스트 출력
			manager.showAllData();   
			// 이름으로 검색
			manager.searchInfo();
			// 이름으로 검색 후 삭제
			manager.deleteInfo();
			manager.showAllData(); // 실제로 데이터 삭제되었는지 확인출력
			
			///
			
			// 이 기능은 배열관련이니까 배열이 있는  매니저에 기능으로 넣음
//			System.out.println("-------------------------");
//			
////			for(int i=0; i<manager.pBooks.length; i++) {
//			// 반복범위는 cnt가 되어야한다. length는 배열 100인데(저장할 수 있는 공간)
//			// 저장되어있는 공간은 cnt이기 떄문에, 
//			for(int i=0; i<manager.cnt; i++) {   
//				manager.pBooks[i].showInfo(); 
//				
//			System.out.println("-------------------------");
			
			}
		}
	}

