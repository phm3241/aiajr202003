package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Service {
	
	// 인터페이스는
	// 멤버 메서드가 모두 추상메서드이다.
	// 멤버 변수는 상수이다.
	// view page 반환 메서드 역할 
	//   - 사용자 요청의 핵심처리를 이안에서 한다. 
	//   - request속성에 데이터 저장
	
	
	String getViewPage(HttpServletRequest request, HttpServletResponse response);
	
	
	
	
	

}
