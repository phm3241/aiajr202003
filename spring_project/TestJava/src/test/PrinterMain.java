package test;

import org.springframework.context.support.GenericXmlApplicationContext;

public class PrinterMain {

	public static void main(String[] args) {
	
		// Spring Container 생성. 설정파일의 경로로
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext("classpath:applicationContext.xml");
		
		// 컨테이너가 bean 객체를 제공. 
		// Printer printer = new Pirnter();    이제 이렇게 코드 쓰지 않고, 컨테이너 객체를 통해 주입받는다. 
		// 컨테이너가applicationContext.xml 설정파일에서 bean 등록해둔 printer 객체를 생성하여 주입해주었다.
		Printer printer = ctx.getBean("printer",Printer.class);
		
		// 메서드 실행되서 결과출력됨. 
		printer.printer();
		
		
		
	}
	
} 
