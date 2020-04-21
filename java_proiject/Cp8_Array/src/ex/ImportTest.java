package ex;

import java.text.SimpleDateFormat; // 컨트롤+시프트+O 단축키로 import한다. 
import java.util.Date;  // 또는 클래스이름 뒤에 커서두고 컨트롤+스페이스로 import한다. 
// 같은 이름클래스가 다른 폴더에 있을 수도 있으니, import할때 폴더 이름 확인하기 

public class ImportTest {

	public static void main(String[] args) {
		
		// Java.util.Date
		// 날짜와 시간정보를 하나로 표현해주는 java폴더의 util폴더 안에 Date클래스
		
		Date today=new Date();
		
		System.out.println(today);
		// 매개변수에 today라는 변수를 쓰면, today.toString()을 가져오는거다. 
		// toString은 가지고 있는 문자열을 반환하는것. 
		// Date클래스는 현재날짜시간을 반환하도록 되어있음. (컴퓨터 시스템시간)
		// 출력은 이렇게된다. Tue Apr 21 15:11:56 KST 2020
		// SimpleDateFormat 클래스를 import 해주고, 출력형태를 바꿔줄수있다. 포멧팅.
		
		SimpleDateFormat dateFomat=new SimpleDateFormat("yyyy.MM.dd.a hh:mm:ss");
		System.out.println(dateFomat.format(today));
		// 출력은 이렇게 된다. 2020.04.21.오후 03:17:16
		
		SimpleDateFormat dateFomat1=new SimpleDateFormat("yyyy.MM.dd. HH:mm");
		System.out.println(dateFomat1.format(today));
		// 출력은 이렇게 된다. 2020.04.21. 15:16
		
		
		
		
		
	}

}
