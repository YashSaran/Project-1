package com.shopee.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoppingBackend.DAO.CategoryDAO;
import com.shoppingBackend.DAO.ProductDAO;
import com.shoppingBackend.DAO.SupplierDAO;
import com.shoppingBackend.DAO.UserDAO;
import com.shoppingBackend.model.Category;
import com.shoppingBackend.model.Product;
import com.shoppingBackend.model.Supplier;
import com.shoppingBackend.model.User;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	UserDAO userDAO;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	CategoryDAO categoryDAO;
	
	
	@RequestMapping(value = "/")
	public String home(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("prodlist",productDAO.getAllProduct());
		return "home";
	}

	@RequestMapping("/about")
	public String about() {
		return "about";

	}

	@RequestMapping("/blog")
	public String blog() {
		return "blog";

	}

	@RequestMapping("/blog-detail")
	public String blogcon() {
		return "blog-detail";

	}

	@RequestMapping("/contact")
	public String cont() {
		return "contact";

	}

	@RequestMapping("/home-03")
	public String hom() {
		return "home-03";

	}

	@RequestMapping("/index")
	public String ind() {
		return "index";

	}

	@RequestMapping("/product")
	public String pro(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("prodlist",productDAO.getAllProduct());
		return "product";

	}

	@RequestMapping("/product-detail/{prodid}")
	public String detail(@PathVariable("prodid") int prodid, Model model) {
		Product prod=productDAO.getSingleProduct(prodid);
		model.addAttribute("catname",categoryDAO.getSingleCategory(Integer.parseInt(prod.getCategoryid())));
		model.addAttribute("product", prod);
		return "product-detail";

	}

	@RequestMapping("/shoping-cart")
	public String shop() {
		return "shoping-cart";

	}

	@RequestMapping("/register")
	public String reg(Model model) {
		model.addAttribute("user", new User());
		return "register";

	}

	@RequestMapping(value = "/regUser", method = RequestMethod.POST)
	public String regS(@ModelAttribute("user") User user, Model model) {
		userDAO.addUser(user);
		return "home";

	}

	@RequestMapping("/showAll")
	public String show(Model model) {
		List<User> lst = userDAO.getAllUser();
		if (lst == null) {
			System.out.println("null");
		} else {
			System.out.println("not null");
		}
		model.addAttribute("listUser", lst);
		return "showAll";

	}

	@RequestMapping("/userEdit/{userid}")
	public String goToEdit(@PathVariable("userid") int userid, Model model) {
		User obj = userDAO.getSingleUser(userid);
		model.addAttribute("user", obj);
		return "editStudent";
	}

	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateS(@ModelAttribute("user") User user, Model model) {
		userDAO.updateUser(user);
		return "redirect:/showAll";
	}

	@RequestMapping(value = "/deleteUser/{userid}")
	public String goToDel(@PathVariable("userid") int userid, Model model) {
		userDAO.DeleteUser(userid);
		return "redirect:/showAll";
	}

	@RequestMapping("/prodlist")
	public String list1(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("prodlist",productDAO.getAllProduct());
		
		return "prodlist";

	}@RequestMapping("/home")
	public String l(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("prodlist",productDAO.getAllProduct());
		return "home";

	}
	@RequestMapping(value="/product/{categoryid}")
	public String pro1(@PathVariable("categoryid") String categoryid,Model model) {
		List<Product> lst = productDAO.getByCategory(categoryid);
		if (lst == null) {
			System.out.println("null");
		} else {
			System.out.println("not null");
		}
		model.addAttribute("prodlist", lst);
		return "product";

	}
}
