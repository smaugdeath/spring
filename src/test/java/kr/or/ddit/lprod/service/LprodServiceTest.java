package kr.or.ddit.lprod.service;

import static org.junit.Assert.assertEquals;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.config.test.RootTestConfig;
import kr.or.ddit.lprod.model.LprodVo;

public class LprodServiceTest extends RootTestConfig{
	
	private static final Logger logger = LoggerFactory.getLogger(LprodServiceTest.class);
	
	@Resource(name="lprodService")
	private ILprodService lprodService;
	

	@Test
	public void getLprodListTest() {
		/***Given***/
		
	
		/***When***/
		List<LprodVo> lprodList = lprodService.getLprodList();
	
		/***Then***/
		assertEquals(10, lprodList.size());
	}
	
	@Test
	public void getLprodPagingListTest() {
		/***Given***/
		Page page = new Page();
		page.setPage(1);
		page.setPagesize(5);
	
		/***When***/
		Map<String, Object> resultMap = lprodService.getLprodPagingList(page); 
		List<LprodVo> lprodList = (List<LprodVo>) resultMap.get("lprodList");
		int paginationSize = (Integer) resultMap.get("paginationSize");
	
		/***Then***/
		assertEquals(5, lprodList.size());
		assertEquals(2, paginationSize);
	}

}
