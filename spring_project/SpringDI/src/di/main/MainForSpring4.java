package di.main;

import java.util.Scanner;

import org.springframework.context.support.GenericXmlApplicationContext;

import di.assembler.Assembler;
import di.domain.RegisterRequest;
import di.exception.AlreadyExistingMemberException;
import di.exception.IdPasswordNotMatchingException;
import di.exception.MemberNotFoundException;
import di.service.ChangePasswordService2;
import di.service.MemberRegisterService2;

// 생성자 주입방식말고 메서드 주입방식으로 ... 
public class MainForSpring4 {
	
	// GenericXmlApplicationContext : 스프링 컨테이너
	// 이 컨테이너가 외부 설정파일(.xml)을 읽고 객체를 생성해서 주입해준다. 
	private static GenericXmlApplicationContext ctx = null;

	public static void main(String[] args) {
		
		ctx = new GenericXmlApplicationContext("classpath:appCtx7.xml");
		
		// 프로토타입으로 생성한 객체
		MemberRegisterService2 mrService1 = ctx.getBean("memberregSvc", MemberRegisterService2.class);
		
		// 싱글톤 타입으로 생성한 객체
		MemberRegisterService2 mrService2 = ctx.getBean("memberregSvc", MemberRegisterService2.class);
		
		// 비교 결과 false. 
		boolean chk1 = mrService1 == mrService2;
		System.out.println("mrService1 == mrService2 ㅡ> " + chk1);
		
		
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		
		ChangePasswordService2 cpService1 = ctx.getBean("memberPwSvc", ChangePasswordService2.class);
		ChangePasswordService2 cpService2 = ctx.getBean("memberPwSvc2", ChangePasswordService2.class);
		
		
		// 비교 결과 false. 
		boolean chk2 = mrService1 == mrService2;
		System.out.println("cpService1 == cpService2 ㅡ> " + chk2);
		
		
		
		
	}	

}
