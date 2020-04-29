package PhoneBook_Ver05;

public class EmptyException extends Exception {
	
	
	public EmptyException() {
		super("입력된 정보가 없습니다. 필수사항이니 정보를 입력해주세요.");
		
	}
}
