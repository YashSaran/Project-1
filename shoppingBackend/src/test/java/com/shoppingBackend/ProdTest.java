package com.shoppingBackend;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.shoppingBackend.DAO.ProductDAO;
import com.shoppingBackend.model.Product;

public class ProdTest {
	private static AnnotationConfigApplicationContext context=null;
	private static ProductDAO productDAO=null;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.shoppingBackend");
		context.refresh();
		productDAO=(ProductDAO)context.getBean("productDAO");
		
	}
    
	@Test
	public void testAddUser() {
		Product stud=new Product();
		stud.setCategoryid("sapru marg");
		stud.setName("885463534");
		stud.setPrice(544);
		stud.setStock("yash");
		stud.setSupplierid("yash");
		stud.setDescription("yash");

		assertTrue("cannot save the value please check the code",productDAO.addProduct(stud));
		
	}
    

}

