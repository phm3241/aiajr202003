package di.service;

import java.util.Date;

import di.dao.Dao;
import di.domain.Member;
import di.domain.RegisterRequest;
import di.exception.AlreadyExistingMemberException;

public class MemberRegisterService2 {
	
	// private MemberDao memberDao;
	private Dao dao;
	
	// 메서드 주입방식 (생성자주입방식 말고, set 방식. 프로퍼티방식)
	// 설정파일에서도 바꿔줘야한다. 
	public void setDao(Dao dao) {
		this.dao = dao;
	};
	


	public void regist(RegisterRequest req) throws AlreadyExistingMemberException {
		Member member = dao.selectByEmail(req.getEmail());
		if (member != null) {
			throw new AlreadyExistingMemberException("dup email " + req.getEmail());
		}
		Member newMember = new Member(req.getEmail(), req.getPassword(), req.getName(), new Date());
		dao.insert(newMember);
	}

}
