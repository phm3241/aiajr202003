package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter {

	private String encodingType;
	
	
	// 초기화 메서드
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
		encodingType = filterConfig.getInitParameter("encoding");
		
		if(encodingType == null) {
			encodingType = "utf-8";
		};
	};

	
	
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 무조건 요청이 들어오면, body 안에 있는 파라미터들을 utf-8로 적용
		request.setCharacterEncoding(encodingType);
		
		// 다음 필터로 보내기
		chain.doFilter(request, response);
		
	};


	
	
	
	@Override
	public void destroy() {
		
	}
}
