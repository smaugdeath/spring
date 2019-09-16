package kr.or.ddit.lprod.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.lprod.model.LprodVo;

public interface ILprodService {
	
	/**
	* Method : getUserList
	* 작성자 : PC-24
	* 변경이력 :
	* @return
	* Method 설명 : 전체 제품그룹 리스트 조회
	*/
	List<LprodVo> getLprodList();
	

	/**
	* Method : getLprodPagingList
	* 작성자 : PC-24
	* 변경이력 :
	* @param page
	* @return
	* Method 설명 : 제품그룹 페이징 리스트 조회
	*/
	Map<String, Object> getLprodPagingList(Page page);

}
