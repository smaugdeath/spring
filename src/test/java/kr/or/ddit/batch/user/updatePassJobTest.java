package kr.or.ddit.batch.user;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.batch.core.ExitStatus;
import org.springframework.batch.core.JobExecution;
import org.springframework.batch.test.JobLauncherTestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {
		"classpath:kr/or/ddit/config/spring/context-datasource.xml",
		"classpath:kr/or/ddit/config/spring/context-batch.xml"})
public class updatePassJobTest {

	@Autowired
	private JobLauncherTestUtils JobLauncherTestUtils;
	
	@Test
	public void updatePassTest() throws Exception {
		/***Given***/
		

		/***When***/
		JobExecution jobExecution = JobLauncherTestUtils.launchJob();
		
		
		/***Then***/
		assertEquals(ExitStatus.COMPLETED, jobExecution.getExitStatus());

	}

}
