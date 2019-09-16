--해당 테이블은 테스트 계정에만 있기 때문에
--개발자가 실수로 운영디비 설정을 사용해도 해당 sql이 정상적으로 실행되지 않으면서
--이후 등장하는 sql들은 실행되지 않는다. populator.setContinueOnError(false);
select * from not_exists_in_prd;


--users 테이블 데이터 전체 지우기
--delete users;		  	--복구가 가능(아카이브 로그를 남긴다)	
truncate table users; 	--복구가 불가능(아카이브 로그를 남기지 않는다)

Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('brown','브라운','c6347b73d5b1f7c77f8be828ee3e871c819578f23779c7d5e082ae2b36a44',to_date('2019/08/12','YYYY/MM/DD'),'곰',null,null,null,'brown.png','e:\upload\2019\09\1936767c-4ec2-49ba-abd3-23377ef56c71.png',null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('cony','코니','c6347b73d5b1f7c77f8be828ee3e871c819578f23779c7d5e082ae2b36a44',to_date('2019/08/12','YYYY/MM/DD'),'토끼',null,null,null,'cony.png','D:\picture\535d2599-4fb5-4fce-a514-11320de99aec',null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('sally','샐리','c6347b73d5b1f7c77f8be828ee3e871c819578f23779c7d5e082ae2b36a44',to_date('2019/08/12','YYYY/MM/DD'),'오리',null,null,null,'sally.png','e:\upload\2019\08\8882f582-6191-4f05-a5b1-c105934fb8c4.png','/upload/2019/08/sally.png');
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('james','제임스','james1234',to_date('2019/08/12','YYYY/MM/DD'),'사람',null,null,null,'james.png','D:\picture\d52bad73-596b-4055-a7ed-3392adaa8f95',null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('moon','문','moon1234',to_date('2019/08/12','YYYY/MM/DD'),'달',null,null,null,'moon.png','D:\picture\957cadae-ead3-4763-90d6-53c53951d8fe',null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid1','xusernm1','xuserid1pass',to_date('2019/08/02','YYYY/MM/DD'),'xuseralais1',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid2','xusernm2','xuserid2pass',to_date('2019/07/23','YYYY/MM/DD'),'xuseralais2',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid3','xusernm3','xuserid3pass',to_date('2019/07/13','YYYY/MM/DD'),'xuseralais3',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid4','xusernm4','xuserid4pass',to_date('2019/07/03','YYYY/MM/DD'),'xuseralais4',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid5','xusernm5','xuserid5pass',to_date('2019/06/23','YYYY/MM/DD'),'xuseralais5',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid6','xusernm6','xuserid6pass',to_date('2019/06/13','YYYY/MM/DD'),'xuseralais6',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid7','xusernm7','xuserid7pass',to_date('2019/06/03','YYYY/MM/DD'),'xuseralais7',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid8','xusernm8','xuserid8pass',to_date('2019/05/24','YYYY/MM/DD'),'xuseralais8',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid9','xusernm9','xuserid9pass',to_date('2019/05/14','YYYY/MM/DD'),'xuseralais9',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid10','xusernm10','xuserid10pass',to_date('2019/05/04','YYYY/MM/DD'),'xuseralais10',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid11','xusernm11','xuserid11pass',to_date('2019/04/24','YYYY/MM/DD'),'xuseralais11',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid12','xusernm12','xuserid12pass',to_date('2019/04/14','YYYY/MM/DD'),'xuseralais12',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid13','xusernm13','xuserid13pass',to_date('2019/04/04','YYYY/MM/DD'),'xuseralais13',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid14','xusernm14','xuserid14pass',to_date('2019/03/25','YYYY/MM/DD'),'xuseralais14',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid15','xusernm15','xuserid15pass',to_date('2019/03/15','YYYY/MM/DD'),'xuseralais15',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid16','xusernm16','xuserid16pass',to_date('2019/03/05','YYYY/MM/DD'),'xuseralais16',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid17','xusernm17','xuserid17pass',to_date('2019/02/23','YYYY/MM/DD'),'xuseralais17',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid18','xusernm18','xuserid18pass',to_date('2019/02/13','YYYY/MM/DD'),'xuseralais18',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid19','xusernm19','xuserid19pass',to_date('2019/02/03','YYYY/MM/DD'),'xuseralais19',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid20','xusernm20','xuserid20pass',to_date('2019/01/24','YYYY/MM/DD'),'xuseralais20',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid21','xusernm21','xuserid21pass',to_date('2019/01/14','YYYY/MM/DD'),'xuseralais21',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid22','xusernm22','xuserid22pass',to_date('2019/01/04','YYYY/MM/DD'),'xuseralais22',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid23','xusernm23','xuserid23pass',to_date('2018/12/25','YYYY/MM/DD'),'xuseralais23',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid24','xusernm24','xuserid24pass',to_date('2018/12/15','YYYY/MM/DD'),'xuseralais24',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid25','xusernm25','xuserid25pass',to_date('2018/12/05','YYYY/MM/DD'),'xuseralais25',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid26','xusernm26','xuserid26pass',to_date('2018/11/25','YYYY/MM/DD'),'xuseralais26',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid27','xusernm27','xuserid27pass',to_date('2018/11/15','YYYY/MM/DD'),'xuseralais27',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid28','xusernm28','xuserid28pass',to_date('2018/11/05','YYYY/MM/DD'),'xuseralais28',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid29','xusernm29','xuserid29pass',to_date('2018/10/26','YYYY/MM/DD'),'xuseralais29',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid30','xusernm30','xuserid30pass',to_date('2018/10/16','YYYY/MM/DD'),'xuseralais30',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid31','xusernm31','xuserid31pass',to_date('2018/10/06','YYYY/MM/DD'),'xuseralais31',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid32','xusernm32','xuserid32pass',to_date('2018/09/26','YYYY/MM/DD'),'xuseralais32',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid33','xusernm33','xuserid33pass',to_date('2018/09/16','YYYY/MM/DD'),'xuseralais33',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid34','xusernm34','xuserid34pass',to_date('2018/09/06','YYYY/MM/DD'),'xuseralais34',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid35','xusernm35','xuserid35pass',to_date('2018/08/27','YYYY/MM/DD'),'xuseralais35',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid36','xusernm36','xuserid36pass',to_date('2018/08/17','YYYY/MM/DD'),'xuseralais36',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid37','xusernm37','xuserid37pass',to_date('2018/08/07','YYYY/MM/DD'),'xuseralais37',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid38','xusernm38','xuserid38pass',to_date('2018/07/28','YYYY/MM/DD'),'xuseralais38',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid39','xusernm39','xuserid39pass',to_date('2018/07/18','YYYY/MM/DD'),'xuseralais39',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid40','xusernm40','xuserid40pass',to_date('2018/07/08','YYYY/MM/DD'),'xuseralais40',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid41','xusernm41','xuserid41pass',to_date('2018/06/28','YYYY/MM/DD'),'xuseralais41',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid42','xusernm42','xuserid42pass',to_date('2018/06/18','YYYY/MM/DD'),'xuseralais42',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid43','xusernm43','xuserid43pass',to_date('2018/06/08','YYYY/MM/DD'),'xuseralais43',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid44','xusernm44','xuserid44pass',to_date('2018/05/29','YYYY/MM/DD'),'xuseralais44',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid45','xusernm45','xuserid45pass',to_date('2018/05/19','YYYY/MM/DD'),'xuseralais45',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid46','xusernm46','xuserid46pass',to_date('2018/05/09','YYYY/MM/DD'),'xuseralais46',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid47','xusernm47','xuserid47pass',to_date('2018/04/29','YYYY/MM/DD'),'xuseralais47',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid48','xusernm48','xuserid48pass',to_date('2018/04/19','YYYY/MM/DD'),'xuseralais48',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid49','xusernm49','xuserid49pass',to_date('2018/04/09','YYYY/MM/DD'),'xuseralais49',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid50','xusernm50','xuserid50pass',to_date('2018/03/30','YYYY/MM/DD'),'xuseralais50',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid51','xusernm51','xuserid51pass',to_date('2018/03/20','YYYY/MM/DD'),'xuseralais51',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid52','xusernm52','xuserid52pass',to_date('2018/03/10','YYYY/MM/DD'),'xuseralais52',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid53','xusernm53','xuserid53pass',to_date('2018/02/28','YYYY/MM/DD'),'xuseralais53',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid54','xusernm54','xuserid54pass',to_date('2018/02/18','YYYY/MM/DD'),'xuseralais54',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid55','xusernm55','xuserid55pass',to_date('2018/02/08','YYYY/MM/DD'),'xuseralais55',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid56','xusernm56','xuserid56pass',to_date('2018/01/29','YYYY/MM/DD'),'xuseralais56',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid57','xusernm57','xuserid57pass',to_date('2018/01/19','YYYY/MM/DD'),'xuseralais57',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid58','xusernm58','xuserid58pass',to_date('2018/01/09','YYYY/MM/DD'),'xuseralais58',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid59','xusernm59','xuserid59pass',to_date('2017/12/30','YYYY/MM/DD'),'xuseralais59',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid60','xusernm60','xuserid60pass',to_date('2017/12/20','YYYY/MM/DD'),'xuseralais60',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid61','xusernm61','xuserid61pass',to_date('2017/12/10','YYYY/MM/DD'),'xuseralais61',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid62','xusernm62','xuserid62pass',to_date('2017/11/30','YYYY/MM/DD'),'xuseralais62',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid63','xusernm63','xuserid63pass',to_date('2017/11/20','YYYY/MM/DD'),'xuseralais63',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid64','xusernm64','xuserid64pass',to_date('2017/11/10','YYYY/MM/DD'),'xuseralais64',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid65','xusernm65','xuserid65pass',to_date('2017/10/31','YYYY/MM/DD'),'xuseralais65',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid66','xusernm66','xuserid66pass',to_date('2017/10/21','YYYY/MM/DD'),'xuseralais66',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid67','xusernm67','xuserid67pass',to_date('2017/10/11','YYYY/MM/DD'),'xuseralais67',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid68','xusernm68','xuserid68pass',to_date('2017/10/01','YYYY/MM/DD'),'xuseralais68',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid69','xusernm69','xuserid69pass',to_date('2017/09/21','YYYY/MM/DD'),'xuseralais69',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid70','xusernm70','xuserid70pass',to_date('2017/09/11','YYYY/MM/DD'),'xuseralais70',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid71','xusernm71','xuserid71pass',to_date('2017/09/01','YYYY/MM/DD'),'xuseralais71',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid72','xusernm72','xuserid72pass',to_date('2017/08/22','YYYY/MM/DD'),'xuseralais72',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid73','xusernm73','xuserid73pass',to_date('2017/08/12','YYYY/MM/DD'),'xuseralais73',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid74','xusernm74','xuserid74pass',to_date('2017/08/02','YYYY/MM/DD'),'xuseralais74',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid75','xusernm75','xuserid75pass',to_date('2017/07/23','YYYY/MM/DD'),'xuseralais75',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid76','xusernm76','xuserid76pass',to_date('2017/07/13','YYYY/MM/DD'),'xuseralais76',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid77','xusernm77','xuserid77pass',to_date('2017/07/03','YYYY/MM/DD'),'xuseralais77',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid78','xusernm78','xuserid78pass',to_date('2017/06/23','YYYY/MM/DD'),'xuseralais78',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid79','xusernm79','xuserid79pass',to_date('2017/06/13','YYYY/MM/DD'),'xuseralais79',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid80','xusernm80','xuserid80pass',to_date('2017/06/03','YYYY/MM/DD'),'xuseralais80',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid81','xusernm81','xuserid81pass',to_date('2017/05/24','YYYY/MM/DD'),'xuseralais81',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid82','xusernm82','xuserid82pass',to_date('2017/05/14','YYYY/MM/DD'),'xuseralais82',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid83','xusernm83','xuserid83pass',to_date('2017/05/04','YYYY/MM/DD'),'xuseralais83',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid84','xusernm84','xuserid84pass',to_date('2017/04/24','YYYY/MM/DD'),'xuseralais84',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid85','xusernm85','xuserid85pass',to_date('2017/04/14','YYYY/MM/DD'),'xuseralais85',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid86','xusernm86','xuserid86pass',to_date('2017/04/04','YYYY/MM/DD'),'xuseralais86',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid87','xusernm87','xuserid87pass',to_date('2017/03/25','YYYY/MM/DD'),'xuseralais87',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid88','xusernm88','xuserid88pass',to_date('2017/03/15','YYYY/MM/DD'),'xuseralais88',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid89','xusernm89','xuserid89pass',to_date('2017/03/05','YYYY/MM/DD'),'xuseralais89',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid90','xusernm90','xuserid90pass',to_date('2017/02/23','YYYY/MM/DD'),'xuseralais90',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid91','xusernm91','xuserid91pass',to_date('2017/02/13','YYYY/MM/DD'),'xuseralais91',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid92','xusernm92','xuserid92pass',to_date('2017/02/03','YYYY/MM/DD'),'xuseralais92',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid93','xusernm93','xuserid93pass',to_date('2017/01/24','YYYY/MM/DD'),'xuseralais93',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid94','xusernm94','xuserid94pass',to_date('2017/01/14','YYYY/MM/DD'),'xuseralais94',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid95','xusernm95','xuserid95pass',to_date('2017/01/04','YYYY/MM/DD'),'xuseralais95',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid96','xusernm96','xuserid96pass',to_date('2016/12/25','YYYY/MM/DD'),'xuseralais96',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid97','xusernm97','xuserid97pass',to_date('2016/12/15','YYYY/MM/DD'),'xuseralais97',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid98','xusernm98','xuserid98pass',to_date('2016/12/05','YYYY/MM/DD'),'xuseralais98',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid99','xusernm99','xuserid99pass',to_date('2016/11/25','YYYY/MM/DD'),'xuseralais99',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('xuserid100','xusernm100','xuserid100pass',to_date('2016/11/15','YYYY/MM/DD'),'xuseralais100',null,null,null,null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('brownTest','브라운테스트','brownTest1234',to_date('2019/08/08','YYYY/MM/DD'),'곰테스트','대전광역시 중구 중앙로 76','영민빌딩 2층 DDIT','34940',null,null,null);
Insert into USERS (USERID,USERNM,PASS,REG_DT,ALIAS,ADDR1,ADDR2,ZIPCODE,FILENAME,REALFILENAME,REALFILENAME2) values ('brownTest1','브라운테스트1','brownTest1234',to_date('2019/08/08','YYYY/MM/DD'),'곰테스트','대전광역시 중구 중앙로 76','영민빌딩 2층 DDIT','34940',null,null,null);

commit;