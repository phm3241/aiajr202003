package com.aia.op.member.dao;

import com.aia.op.member.model.Member;

public interface MemberDaoInterface {
	
	public Member selectByIdpw(String id, String pw); 

	
	
}
