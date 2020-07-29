package di.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import di.dao.Dao;
import di.domain.Member;
import di.exception.IdPasswordNotMatchingException;
import di.exception.MemberNotFoundException;

// @Component 어노테이션 사용시 객체의 이름을 지정해줄 수있다. 안하면, 기본값으로 class명으로 된다. changePasswordService3
@Component("memberrPwSvc") 
public class ChangePasswordService3 {

	// @Autowired : 자동 주입 대상에 @Autowire 애노테이션 사용
	
	@Resource(name="dao")  
	// @Resource 애노테이션은 빈의 이름을 이용해서 주입할 객체를 검색.. 
	// 따라서 @Component("dao")을 지정해주고 @Resource(name="dao") 이렇게 검색하는 것이 좋다. 
	private Dao dao;

	

	public void changePassword(String email, String oldPwd, String newPwd)
			throws IdPasswordNotMatchingException, MemberNotFoundException {
		Member member = dao.selectByEmail(email);
		if (member == null)
			throw new MemberNotFoundException();

		member.changePassword(oldPwd, newPwd);

		dao.update(member);
	}

}
