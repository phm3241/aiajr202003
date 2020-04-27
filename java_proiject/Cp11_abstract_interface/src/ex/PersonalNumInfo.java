package ex;

public class PersonalNumInfo {
	// 데이터를 저장하는 목적인 클래스
	
	
	private String name;
	private String number;
	
	PersonalNumInfo(String name, String number){
		this.name=name;
		this.number=number;
	}

	String getName() {
		return name;
	}
	String getNumber() {
		return number;
	}

}
