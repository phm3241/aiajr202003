package member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import member.model.CookieBox;
import service.Service;

public class MemberLoginFormServiceImpl implements Service {

	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		
		
		// 저장된 쿠기 확인하기
		CookieBox cookieBox = new CookieBox(request);

		String cookieUid = cookieBox.getValue("uid");
		
		String uidValue = "";
		String checked = "";
		
		if(cookieUid != null){
			uidValue = cookieUid;
			checked = "checked";
		}
		
		
		request.setAttribute("uidValue", uidValue);
		request.setAttribute("checked", checked);
		
		
		
		return "/WEB-INF/views/member/loginForm.jsp";
	}

}