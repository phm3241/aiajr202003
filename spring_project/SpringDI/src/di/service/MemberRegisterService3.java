package di.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import di.dao.Dao;
import di.domain.Member;
import di.domain.RegisterRequest;
import di.exception.AlreadyExistingMemberException;

//@Component 어노테이션 사용시 객체의 이름을 지정해줄 수있다. 안하면, 기본값으로 class명으로 된다. changePasswordService3
@Component
public class MemberRegisterService3 {
	
	@Autowired
	private Dao dao;
	
	
	


	public void regist(RegisterRequest req) throws AlreadyExistingMemberException {
		Member member = dao.selectByEmail(req.getEmail());
		if (member != null) {
			throw new AlreadyExistingMemberException("dup email " + req.getEmail());
		}
		Member newMember = new Member(req.getEmail(), req.getPassword(), req.getName(), new Date());
		dao.insert(newMember);
	}

}
