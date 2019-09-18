package kr.or.ddit.prod.web;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.config.test.WebTestConfig;

public class ProdControllerTest extends WebTestConfig {
	
	private static final Logger logger = LoggerFactory.getLogger(ProdControllerTest.class);

	@Test
	public void prodListTest() throws Exception {
		/***Given***/
		

		/***When***/
		mockMvc.perform(get("/prodList").param("lprod_gu", "P101"))
			.andExpect(status().isOk())
			.andExpect(model().attributeExists("prodList"))
			.andExpect(view().name("prod/prodList"));

		/***Then***/
	}
}
