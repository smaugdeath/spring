package kr.or.ddit.prod.repository;

import static org.junit.Assert.assertEquals;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.config.test.RootTestConfig;
import kr.or.ddit.prod.dao.IProdDao;
import kr.or.ddit.prod.dao.ProdDao;
import kr.or.ddit.prod.model.ProdVo;

public class ProdDaoTest extends RootTestConfig{
	
	private static final Logger logger = LoggerFactory.getLogger(ProdDaoTest.class);
	
	@Resource(name = "prodDao")
	private IProdDao prodDao;
	
	@Test
	public void getProdListTest() {
		
		/***Given***/
		//IProdDao prodDao = new ProdDao();

		/***When***/
		List<ProdVo> prodList = prodDao.getProdList("P101");

		/***Then***/
		assertEquals(6, prodList.size());

	}

}
