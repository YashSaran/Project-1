package com.shoppingBackend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages = "com.shoppingBackend")
@EnableTransactionManagement
public class DbConfig {
	private static final String DriverClass = "org.h2.Driver";
	private static final String DBURL ="jdbc:h2:tcp://localhost/~/shoppingBackend";
	private static final String UserName = "sa";
	private static final String Password = "";
	private static final String DBDialect="org.hibernate.dialect.H2Dialect";
	
	@Bean("dataSource")
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		System.out.println("driver manager data source");
        dataSource.setDriverClassName(DriverClass);
        System.out.println("set driver class name");
        dataSource.setUrl(DBURL);
        System.out.println("set url");
        dataSource.setUsername(UserName);
        System.out.println("set username");
        dataSource.setPassword(Password);
        System.out.println("set password");
        
		return dataSource;
	}
	@Bean("sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder lsfb=new LocalSessionFactoryBuilder(dataSource);
		System.out.println("local session");
		lsfb.addProperties(getHibernateProp());
		System.out.println("add prop");
		lsfb.scanPackages("com.shoppingBackend");
		System.out.println("scan packages");
		return lsfb.buildSessionFactory();
		
		
	}
	private Properties getHibernateProp() {
		Properties prop=new Properties();
		System.out.println("obj");
		prop.put("hibernate.dialect",DBDialect);
		System.out.println("prop put 1");//optional
		prop.put("hibernate.hbm2ddl.auto", "update");
		System.out.println("prop 2");//create,update,create-drop,validate
		prop.put("hibernate.show_sql", "true");
		System.out.println("prop 3");
		prop.put("hibernate.format_sql", "true");
		System.out.println("prop 4");//optional to tell to create table automatically
		return prop;
	}
@Bean
public HibernateTransactionManager getTM(SessionFactory sessionFactory) {
	return new HibernateTransactionManager(sessionFactory);
	
}
}
