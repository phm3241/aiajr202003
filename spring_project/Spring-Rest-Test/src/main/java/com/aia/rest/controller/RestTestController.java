package com.aia.rest.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.aia.rest.model.Member;


// 그냥 controller가 아니라 RestController로 하게되면 view.jsp없이 반환하는 타입 그대로 출력된다.
// 일반 문자열의 경우, 반환하는 타입이 그대로 출력되고, json 형식도 가능하다.
// RestController를 쓰면, ResponseBody는 생략해도 된다. getMapping 사용이 가능하다.
@RestController
@RequestMapping("/rest/v1")
public class RestTestController {
	
	// json형식. map 으로 응답처리.  
	@RequestMapping("/membermap")
	public Map<Integer, Member> getMap(){
		
		Map<Integer, Member> map = new HashMap<Integer, Member>();
		
		map.put(1, new Member(1,"cool1", "cool1@naver.com","cool1.png", new Date()));
		map.put(2, new Member(2,"cool2", "cool2@naver.com","cool2.png", new Date()));
		map.put(3, new Member(3,"cool3", "cool3@naver.com","cool3.png", new Date()));
		map.put(4, new Member(4,"cool4", "cool4@naver.com","cool4.png", new Date()));
		map.put(5, new Member(5,"cool5", "cool5@naver.com","cool5.png", new Date()));
		
		return map;
	};
	
	
	// json 형식으로 응답처리. 
	@RequestMapping("/memberlist")
	public List<Member> getList(){
		
		List<Member> list = new ArrayList<Member>();
		list.add(new Member(1,"cool1", "cool1@naver.com","cool1.png", new Date()));
		list.add(new Member(2,"cool2", "cool2@naver.com","cool2.png", new Date()));
		list.add(new Member(3,"cool3", "cool3@naver.com","cool3.png", new Date()));
		list.add(new Member(4,"cool4", "cool4@naver.com","cool4.png", new Date()));
		list.add(new Member(5,"cool5", "cool5@naver.com","cool5.png", new Date()));
		
		return list;
	};
	
	
	@GetMapping  
	// @RequestMapping(method = RequestMethod.GET)와 같다.
	//   /rest/v1이렇게 했을 때 get방식으로 들어오게 되면, 
	public Member getMember() {
		
		Member member = new Member();
		member.setId(1);
		member.setName("Cool");
		member.setEmail("123@naver.com");
		member.setPhoto("111.png");
		
		return member;   
		
		// jackson-databind 라이브러리 pom.xml에 설정해주면..  
		//   	: json을 ㅡ> java Object로 변환. java Object를 ㅡ> json으로 응답
		// 따라서 member객체가 json 포멧으로 반환되고, 브라우저에 출력된다.
	};
		
	
	// 텍스트인 경우, 문자열이 그대로 브라우저에 출력된다. 
	@RequestMapping("/text")   
	//  사용자가 보는 uri는  /rest/v1/text와 같다. 
	public String testString() {
		return "Hello~ RestFul";
	};
	
	
}
