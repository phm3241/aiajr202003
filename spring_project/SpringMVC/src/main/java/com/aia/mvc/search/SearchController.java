package com.aia.mvc.search;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aia.mvc.search.model.SearchType;

@Controller
public class SearchController {
	
	@RequestMapping("/search")
	public String search(
			@RequestParam(name = "query", required = false) String query,  
			@RequestParam(name = "page", defaultValue="1") int pageNumber,
			Model model  
			// request.getParameter()하면 String만 반환하기 때문에, 
			// int형으로 형변환이 필요했는데 
			// @RequestParam은 다양한 파라미터를 받을 수 있고, 
			// defaultValue를 설정할 수 있어, 파라미터가 없어도 오류없이 진행된다. 
			) {
		
		model.addAttribute("query", query);
		model.addAttribute("page", pageNumber);
		
		return "search/search";
	};
	
	@RequestMapping("/search/searchForm")
	public String searchForm() {
		return "search/searchForm";
	}
	
	
	
	
	// 메서드를 이름을 등록하여 뷰에 공유할 수 있다. 
	// View에 전달되는 모델 데이터
	// @ModelAttribute 어노테이션이 적용된 메서드가 리턴 한 객체
	@ModelAttribute("searchType")  
	public List<SearchType> searchType() {
		
		List<SearchType> options = new ArrayList<SearchType>();
		options.add(new SearchType(1, "전체"));
		options.add(new SearchType(2, "이름"));
		options.add(new SearchType(3, "포지션"));
		
		return options;
	}
	
	
	
	

}
