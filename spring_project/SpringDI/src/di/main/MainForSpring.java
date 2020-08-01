package di.main;

import java.util.Scanner;

import org.springframework.context.support.GenericXmlApplicationContext;

import di.assembler.Assembler;
import di.domain.RegisterRequest;
import di.exception.AlreadyExistingMemberException;
import di.exception.IdPasswordNotMatchingException;
import di.exception.MemberNotFoundException;
import di.service.ChangePasswordService;
import di.service.MemberRegisterService;

public class MainForSpring {
	
	// GenericXmlApplicationContext : 스프링 컨테이너
	// 이 컨테이너가 외부 설정파일(.xml)을 읽고 객체를 생성해서 주입해준다. 
	private static GenericXmlApplicationContext ctx = null;

	public static void main(String[] args) {
		
		ctx = new GenericXmlApplicationContext("classpath:appCtx.xml");

		Scanner reader = new Scanner(System.in);
		while (true) {
			System.out.println("명렁어를 입력하세요:");
			
			String command = reader.nextLine();
			
			if (command.equalsIgnoreCase("exit")) {
				System.out.println("종료합니다.");
				break;
			}
			
			// 사용자가 입력하는 문자열 앞에 new 로 시작하는지 확인 
			if (command.startsWith("new ")) {
				processNewCommand(command.split(" "));   // split(" ")은 " " 공백으로 나눠서..문자열 배열을 반환..?
				continue;
			
				// 사용자가 입력하는 문자열 앞에 change 로 시작하는지 확인
			} else if (command.startsWith("change ")) {
				processChangeCommand(command.split(" "));
				continue;
			}
			printHelp();
		}

	}

	private static void processNewCommand(String[] arg) {
		if (arg.length != 5) {  // new 이메일 이름 비밀번호 비밀번호 ㅡ> 이렇게 입력하면 공백기준으로 잘라서 확인하므로.. 총 5개가 입력된다. 
			printHelp();
			return;
		}
		
		
		// Spring Container의 객체저장 타입은 Object이기 때문에 형변환이 필요.
		// ctx.getBean("memberregSvc", MemberRegisterService.class) : 객체생성 후 제공("설정파일에 등록된 객체의 아이디" , 형변환 타입) 
		// 설정파일에 memberregSvc가 등록되어있어야한다. 
		MemberRegisterService regSvc = ctx.getBean("memberregSvc", MemberRegisterService.class);
		
		
		RegisterRequest req = new RegisterRequest();
		req.setEmail(arg[1]);
		req.setName(arg[2]);
		req.setPassword(arg[3]);
		req.setConfirmPassword(arg[4]);
		if (!req.isPasswordEqualToConfirmPassword()) {
			System.out.println("암호와 확인이 일치하지 않습니다.\n");
			return;
		}
		try {
			regSvc.regist(req);
			System.out.println("등록했습니다.\n");
		} catch (AlreadyExistingMemberException e) {
			System.out.println("이미 존재하는 이메일입니다.\n");
		}
	}

	private static void processChangeCommand(String[] arg) {
		if (arg.length != 4) {
			printHelp();
			return;
		}
		ChangePasswordService changePwdSvc = ctx.getBean("memberPwSvc", ChangePasswordService.class);
		try {
			changePwdSvc.changePassword(arg[1], arg[2], arg[3]);
			System.out.println("암호를 변경했습니다.\n");
		} catch (MemberNotFoundException e) {
			System.out.println("존재하지 않는 이메일입니다.\n");
		} catch (IdPasswordNotMatchingException e) {
			System.out.println("이메일과 암호가 일치하지 않습니다.\n");
		}
	}

	private static void printHelp() {
		System.out.println();
		System.out.println("잘못된 명령입니다. 아래 명령어 사용법을 확인하세요.");
		System.out.println("명령어 사용법:");
		System.out.println("new 이메일 이름 암호 암호확인");
		System.out.println("change 이메일 현재비번 변경비번");
		System.out.println();
	}

}
