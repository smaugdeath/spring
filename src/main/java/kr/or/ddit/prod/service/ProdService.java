package kr.or.ddit.prod.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import kr.or.ddit.prod.dao.IProdDao;
import kr.or.ddit.prod.model.ProdVo;
import kr.or.ddit.user.dao.IUserDao;

@Service
public class ProdService implements IProdService {

	private static final Logger logger = LoggerFactory.getLogger(ProdService.class);
	
	@Resource(name="prodDao")
	private IProdDao prodDao;

	
	public ProdService() {
		
	}

	
	
	@Override
	public List<ProdVo> getProdList(String lprod_gu) {
		List<ProdVo> prodList = prodDao.getProdList(lprod_gu);
	    return prodList;
	}

}
