package util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class CookieBox {
	
	// Cookie 목록을 저장해서 관리할 Map 생성
	private Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();
	
	// 생성자 ㅡ> 클라이언트 요청정보 받기 ㅡ> 쿠키배열에 담기 ㅡ> 쿠키박스 생성
	public CookieBox(HttpServletRequest request) {
		
		// 쿠기배열에 사용자 요청정보의 쿠키 담기
		Cookie[] cookies = request.getCookies();
		
		// 배열에 담은 쿠키 ㅡ> 반복문으로  Map에 저장
		for(int i=0; i<cookies.length; i++) {
			cookieMap.put(cookies[i].getName(), cookies[i]);
		};
	};
	
	
	
	// name 키값으로 쿠키 객체 반환
	public Cookie getCookie(String name) {
		return cookieMap.get(name);
	};
	
	
	// 쿠키 객체 ㅡ> 쿠키 값 반환
	public String getValue(String name) {
		
		String result = null;
		
		// 반환한 쿠키객체 cookie에 담아서
		Cookie cookie = getCookie(name);
		
		if(cookie != null) {
			result = cookie.getValue();
		};
		
		return result;
	};
	
	// name 키값으로 쿠키 객체 존재유무 확인
	public boolean exist(String name) {
		return cookieMap.get(name) !=null;
	};
	
	
	
	// 쿠키 객체 생성 메서드 : 오버로딩으로 만들기
	// 인스턴스 생성없이 바로 바로 생성할 수 있는 static 메서드
	public static Cookie createCookie(String name, String value) {
		return new Cookie(name, value);
	};
	
	
	public static Cookie createCookie(String name, String value, String path, int maxAge) {
		
		// 기본객체 생성
		Cookie cookie = new Cookie(name, value);
		
		// 경로 및 유지기간 설정
		cookie.setPath(path);
		cookie.setMaxAge(maxAge);
		
		return cookie;
	};
	
	
	public static Cookie createCookie(String name, String value, String domain, String path, int maxAge) {
		
		Cookie cookie = new Cookie(name, value);
		
		// 도메인 설정
		cookie.setDomain(domain);
		
		// 경로 설정
		cookie.setPath(path);
		
		// maxAge 설정
		cookie.setMaxAge(maxAge);
		
		return cookie;
	};

}; // class end
