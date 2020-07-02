package util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

//  쿠기를 다루는 목적으로 작성
public class CookieBox {
	
	// Cookie 목록을 Map에 저장해서 관리
	private Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();
	
	// 생성자
	public CookieBox(HttpServletRequest request) {
		
		Cookie[] cookies = request.getCookies();
		
		// 쿠키 데이터를 Map에 모두 저장
		for(int i=0; i<cookies.length; i++) {
			
			// Map 데이터 저장 
			cookieMap.put(cookies[i].getName(), cookies[i]);
		};
			
	};
	
	
	// 쿠기 가져와 반환.
	public Cookie getCookie(String name) {
		
		return cookieMap.get(name);
	};
	
	// 쿠기의 값 반환 
	public String getValue(String name) {
		
		String result = null;
		
		// 쿠키가 있는지 확인
		Cookie cookie = getCookie(name);
		
		if(cookie != null) {
			result = cookie.getValue();
		};
		
		return result;
	};
	
	
	// 쿠키값 존재유무 확인 : true/false
	public boolean exist(String name) {
		return cookieMap.get(name) != null;
	};
	
	// 쿠키 객체 생성 메서드 : 오버로딩으로 만들기
	public static Cookie createCookie(String name, String value) {
		return new Cookie(name, value);
		
	}

	
	
	
}  //class end 











