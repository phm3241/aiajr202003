package di.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import di.dao.MemberDao;
import di.service.ChangePasswordService;
import di.service.MemberRegisterService;

// XML 설정 없이도 자바 코드를 이용해서 생성할 빈 객체와 각 빈간의 의존 관계 "설정" .. 
// 지금은 생성하는 것이아니라 설정하는 것이다. 
// 하나의 클래스 안에 여러 개의 빈을 정의 할 수도 있고, 
// 클래스 자체가 자동인식 빈의 대상이 되기 때문에 XML에 명시적으로 등록하지 않아도 됨


// @Configuration : 빈 설정 메타 정보를 담고 있는 클래스가 됨
@Configuration
public class JavaConfig {
	
	// @Bean : 새로운 빈 객체를 제공할 때 사용 
	@Bean(name="dao")  // 이름을 이렇게도 지정가능.  
	public MemberDao memberDao() {
		return new MemberDao();
	}
	
	
	@Bean("regSvc")
	public MemberRegisterService memberRegSvc() {
		return new MemberRegisterService(memberDao());  //위에서 만든 메서드를 매게변수로 호출하여 MemberDao 객체를 주입받을 수 있다.
	}
	
	
	//@Bean 이렇게만 하면, 메서드의 이름인 changePwSvc가 빈의 이름이 된다. @Bean(name="changePwSvc")와 같다.
	@Bean
	public ChangePasswordService changePwSvc() {
		return new ChangePasswordService(memberDao());
	}
	
	

}
