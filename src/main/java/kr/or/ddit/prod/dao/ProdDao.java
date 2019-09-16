package kr.or.ddit.prod.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.prod.model.ProdVo;

@Repository
public class ProdDao implements IProdDao {
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	@Override
	public List<ProdVo> getProdList(String lprod_gu) {
		List<ProdVo> prodList = sqlSession.selectList("prod.getProdList", lprod_gu);		
		
		return prodList;
	}

}

