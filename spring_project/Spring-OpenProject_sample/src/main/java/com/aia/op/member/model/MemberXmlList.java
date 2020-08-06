package com.aia.op.member.model;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

//20.08.06
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name="member-list")
public class MemberXmlList {
	
	@XmlElement(name="member") // <member> ...</member> 태그를 생성해준다. 
	private List<MemberXML> members;
	
	// 기본생성자
	public MemberXmlList() {
	}

	public MemberXmlList(List<MemberXML> members) {
		this.members = members;
	}

	//getter, setter
	public List<MemberXML> getMembers() {
		return members;
	}

	public void setMembers(List<MemberXML> members) {
		this.members = members;
	}

	
	
	
	
	

	
}
