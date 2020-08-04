package com.open.mvc.test;

import java.sql.Connection;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/*.xml")
public class JdbcTest {
	
	@Autowired // 스프링에서 제공해주는 자동주입해주는 어노테이션
	private DataSource dataSource;
	
	@Inject  // 자바에서 제공해주는 것. 주입할 떄 스프링프레임워크가 아니어도 가능. 
	private JdbcTemplate template;
	
	@Test
	public void jdbcTemplateTest() {
		System.out.println("JdbcTemplate =====> " + template);
	}
	
	@Test
	public void connetionTest() throws SQLException {
		
		System.out.println("dataSource =====> "+ dataSource);
		
		Connection conn = null;
		conn = dataSource.getConnection();
		System.out.println("Connection =====> "+ conn);
	
	
	}

}
