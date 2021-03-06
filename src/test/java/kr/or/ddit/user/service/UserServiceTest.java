package kr.or.ddit.user.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.config.test.RootTestConfig;
import kr.or.ddit.user.model.User;


public class UserServiceTest extends RootTestConfig{
	
	private static final Logger logger = LoggerFactory.getLogger(UserServiceTest.class);
	
	private String userId = "brownTest";

	@Resource(name="userService")
	private IUserService userService;
	
	
	/**
	* Method : getUserListTest
	* 작성자 : PC-24
	* 변경이력 :
	* Method 설명 : getUserList 테스트
	*/
	@Test
	public void getUserListTest() {
		/***Given***/
		

		/***When***/
		List<User> userList = userService.getUserList();
		
		/***Then***/
		assertTrue(userList.size() >= 105);

	}
	
	/**
	* Method : getUserTest
	* 작성자 : PC-17
	* 변경이력 :
	* Method 설명 : 사용자 정보 조회 테스트
	*/
	@Test
	public void getUserTest() {
	   /***Given***/
	   String userId = "james";
	   
	   /***When***/
	   User userVo = userService.getUser(userId);

	   /***Then***/
	   assertEquals("제임스", userVo.getUserNm());
	   assertEquals("james1234", userVo.getPass());
	}
	
	/**
	* Method : getUserListTest
	* 작성자 : PC-17
	* 변경이력 :
	* Method 설명 : getUserListOnlyHalf 테스트
	*/
	@Test
	public void getUserListOnlyHalfTest() {
	   /***Given***/
	   
	   
	   /***When***/
	   List<User> userList = userService.getUserListOnlyHalf();
	   
	   /***Then***/
	   assertEquals(50, userList.size());
	}
	
	/**
	* Method : getUserPagingListTest
	* 작성자 : PC-17
	* 변경이력 :
	* Method 설명 : 사용자 페이징 리스트 조회 테스트
	*/
	@Test
	public void getUserPagingListTest() {
	   /***Given***/
	   Page page = new Page();
	   page.setPage(3);
	   page.setPagesize(10);

	   /***When***/
	   Map<String, Object> resultMap = userService.getUserPagingList(page); 
	   List<User> userList = (List<User>) resultMap.get("userList");
	   int paginationSize = (Integer) resultMap.get("paginationSize");

	   /***Then***/
	   assertEquals(10, userList.size());
	   assertEquals("xuserid20", userList.get(0).getUserId());
	   assertEquals(11, paginationSize);
	}
	
	@Test
	public void insertUserTest() throws ParseException {
	   /***Given***/
	   User user = new User();
	   
	   String userId = "brownTest2";
	   
	   user.setUserId(userId);
	   user.setUserNm("브라운테스트2");
	   user.setPass("brownTest1234");
	   user.setReg_dt(new SimpleDateFormat("yyyy-MM-dd").parse("2019-08-08"));
	   user.setAlias("곰테스트");
	   user.setAddr1("대전광역시 중구 중앙로 76");
	   user.setAddr2("영민빌딩 2층 DDIT");
	   user.setZipcode("34940");
	   

	   /***When***/
	   int insertCnt = userService.insertUser(user);

	   /***Then***/
	   assertEquals(1, insertCnt);
	}
	
	@Test
	public void modifyUserTest() {
		/*** Given ***/
		User user = new User();

		String userId = "brownTest1";

		user.setUserId(userId);
		user.setUserNm("가나다");
		user.setAlias("별명");
		user.setAddr1("주소1");
		user.setAddr2("주소2");

		try {
			user.setReg_dt(new SimpleDateFormat("yyyy-mm-dd").parse("2019-08-08"));
		} catch (ParseException e) {
			e.printStackTrace();
		}

		user.setZipcode("45454");
		user.setPass("1231564");
		user.setFilename("테스트");
		user.setRealfilename("테스트");

		/*** When ***/
		int cnt = userService.modifyUser(user);

		/*** Then ***/
		assertEquals(1, cnt);
		userService.deleteUser(userId);
	}

}
