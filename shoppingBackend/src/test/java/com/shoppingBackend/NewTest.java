package com.shoppingBackend;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.shoppingBackend.DAO.UserDAO;
import com.shoppingBackend.model.User;

public class NewTest {
	private static AnnotationConfigApplicationContext context=null;
	private static UserDAO userDAO=null;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.shoppingBackend");
		context.refresh();
		userDAO=(UserDAO)context.getBean("userDAO");
		
	}
    
	@Test
	public void testAddUser() {
		User stud=new User();
		stud.setEmailid("sapru marg");
		stud.setMobile("885463534");
		stud.setName("yash");
		stud.setPassword("yash");
		assertTrue("cannot save the value please check the code",userDAO.addUser(stud));
		
	}
    @Ignore
	@Test
	public void testUpdateUser() {
	 User stud=userDAO.getSingleUser(1);
		stud.setEmailid("new");
		assertTrue("cannot save the value please check the code",userDAO.updateUser(stud));

	}
@Ignore
	@Test
	public void testDeleteUser() {
		User stud=userDAO.getSingleUser(2);
			
			assertTrue("cannot save the value please check the code",userDAO.DeleteUser(2));

		
	}
@Ignore
	@Test
	public void testGetSingleUser() {
		fail("Not yet implemented");
	}
@Ignore
	@Test
	public void testGetAllUser() {
		List<User> lst=userDAO.getAllUser();
		
	}

}

