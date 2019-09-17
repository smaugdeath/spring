package kr.or.ddit.lprod.repository;

import static org.junit.Assert.assertEquals;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.config.test.RootTestConfig;
import kr.or.ddit.lprod.dao.ILprodDao;
import kr.or.ddit.lprod.model.LprodVo;

public class LprodDaoTest extends RootTestConfig{
	
	private static final Logger logger = LoggerFactory.getLogger(LprodDaoTest.class);
	
	@Resource(name = "lprodDao")
	private ILprodDao lprodDao;
	

	@Test
	public void getLprodListTest() {
		
		/***Given***/
		
		
		/***When***/
		List<LprodVo> lprodList = lprodDao.getLprodList();

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
		List<LprodVo> lprodList = lprodDao.getLprodPagingList(page);
		
		/***Then***/
		assertEquals(5, lprodList.size());
		assertEquals("P101", lprodList.get(0).getLprod_gu());

	}
	   
	@Test
	public void getLprodTotalCnt() {
		/***Given***/
		   
	
		/***When***/
		int totalCnt = lprodDao.getLprodTotalCnt();
		   
		/***Then***/
		assertEquals(10, totalCnt);
	}
}
