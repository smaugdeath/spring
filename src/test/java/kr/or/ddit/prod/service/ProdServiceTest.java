package kr.or.ddit.prod.service;

import static org.junit.Assert.assertEquals;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.prod.model.ProdVo;

public class ProdServiceTest {

	private static final Logger logger = LoggerFactory.getLogger(ProdServiceTest.class);

	

	@Resource(name = "prodService")
	private IProdService prodService;

	@Test
	public void prodListTest() {
		/***Given***/
		

		/***When***/
		List<ProdVo> prodList = prodService.getProdList("P101");
		
		/***Then***/
		assertEquals(6, prodList.size());
	}

}
