package kr.or.ddit.lprod.web;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.config.test.WebTestConfig;
import kr.or.ddit.lprod.service.ILprodService;

public class LprodControllerTest extends WebTestConfig{
	
	private static final Logger logger = LoggerFactory.getLogger(LprodControllerTest.class);
	
	@Resource(name="lprodService")
	private ILprodService lprodService;

	@Test
	public void lprodListTest() throws Exception {
		/***Given***/
		

		/***When***/
		mockMvc.perform(get("/lprod/lprodList"))
			.andExpect(model().attributeExists("lprodList"))
			.andExpect(view().name("lprod/lprodList"));

		/***Then***/

	}
	
	@RequestMapping(path= "lprodPagingList", method = RequestMethod.GET)
	public String userPagingList(Page page, Model model) {
		
		model.addAttribute("pageVo", page);
		
		Map<String, Object> resultMap = lprodService.getLprodPagingList(page);
		model.addAllAttributes(resultMap);
		
		return "lprod/lprodPagingList";
		
	}	

}
