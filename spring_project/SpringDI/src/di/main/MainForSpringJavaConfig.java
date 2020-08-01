package di.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import di.config.JavaConfig;
import di.dao.MemberDao;
import di.service.ChangePasswordService;
import di.service.MemberRegisterService;

public class MainForSpringJavaConfig {

	public static void main(String[] args) {

		// javaConfig.class를 import 해주면 해당 클래스를 찾아가서 읽는다. 
		// 또는 풀네임을 적어줄 수도 있다. 
		ApplicationContext ctx = new AnnotationConfigApplicationContext(JavaConfig.class);
		
		
		MemberRegisterService regSvc = ctx.getBean("regSvc", MemberRegisterService.class);
		System.out.println(regSvc);

		MemberDao dao = ctx.getBean("dao", MemberDao.class);
		System.out.println(dao);
		
		ChangePasswordService shangeSvc = ctx.getBean("changePwSvc", ChangePasswordService.class);
		System.out.println(shangeSvc);
		
		
		
	}

}
