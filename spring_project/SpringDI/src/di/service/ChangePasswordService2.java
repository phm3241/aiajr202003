package di.service;

import di.dao.Dao;
import di.dao.MemberDao;
import di.domain.Member;
import di.exception.IdPasswordNotMatchingException;
import di.exception.MemberNotFoundException;

public class ChangePasswordService2 {

	private Dao dao;

	// 메서드 주입방식 (생성자주입방식 말고, set 방식. 프로퍼티방식)
	// 설정파일에서도 바꿔줘야한다.
	public void setDao(Dao dao) {
		this.dao = dao;
	};

	public void changePassword(String email, String oldPwd, String newPwd)
			throws IdPasswordNotMatchingException, MemberNotFoundException {
		Member member = dao.selectByEmail(email);
		if (member == null)
			throw new MemberNotFoundException();

		member.changePassword(oldPwd, newPwd);

		dao.update(member);
	}

}
