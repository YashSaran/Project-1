package com.shopee.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingBackend.DAO.CartDAO;
import com.shoppingBackend.DAO.CategoryDAO;
import com.shoppingBackend.DAO.OrderDAO;
import com.shoppingBackend.DAO.ProductDAO;
import com.shoppingBackend.DAO.SupplierDAO;
import com.shoppingBackend.DAO.UserDAO;
import com.shoppingBackend.model.Cart;
import com.shoppingBackend.model.CartLine;
import com.shoppingBackend.model.Order;
import com.shoppingBackend.model.Product;
import com.shoppingBackend.model.Supplier;
import com.shoppingBackend.model.User;

@Controller
public class HomeController {
	@Autowired
	CartDAO cartDAO;
	@Autowired
	OrderDAO orderDAO;
	@Autowired
	Cart cart;
	@Autowired
	UserDAO userDAO;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	CartLine cartLine;

	@RequestMapping(value = "/")
	public String home(Model model) {

		model.addAttribute("product", new Product());
		model.addAttribute("prodlist", productDAO.getAllProduct());
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

	@RequestMapping("/index")
	public String ind() {
		return "index";

	}

	@RequestMapping("/product")
	public String pro(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("prodlist", productDAO.getAllProduct());
		return "product";

	}

	@RequestMapping("/product-detail/{prodid}")
	public String detail(@PathVariable("prodid") int prodid, Model model) {
		Product prod = productDAO.getSingleProduct(prodid);
		model.addAttribute("catname", categoryDAO.getSingleCategory(Integer.parseInt(prod.getCategoryid())));
		model.addAttribute("product", prod);
		return "product-detail";

	}

	@RequestMapping("/shoping-cart")
	public String shop(Model model) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();

		Cart cart = cartDAO.getByEmailid(email);
		List<CartLine> lst = cartDAO.list(cart.getId());
		model.addAttribute("lst", lst);
		model.addAttribute("cartList", cartDAO.listAvailable(cart.getId()));
		double b = 0.0;
		for (CartLine a : lst) {
			b = b + a.getTotal();
		}
		model.addAttribute("total", b);
		double e = b * 1.1;
		model.addAttribute("total1", e);

		cart.setGrandTotal(e);
		cartDAO.updateCart(cart);

		return "shoping-cart";

	}

	@RequestMapping("/register")
	public String reg(Model model) {
		model.addAttribute("user", new User());
		return "register";

	}

	@RequestMapping(value = "/regUser", method = RequestMethod.POST)
	public String regS(@ModelAttribute("user") User user, Model model) {
		System.out.println("Cart id------>" + cart.getId());
		cart.setEmail(user.getEmailid());
		cartDAO.addCart(cart);
		user.setRole("ROLE_USER");
		user.setEnable(true);
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
		model.addAttribute("prodlist", productDAO.getAllProduct());

		return "prodlist";

	}

	@RequestMapping("/home")
	public String l(Model model, HttpSession session) {

		model.addAttribute("product", new Product());
		model.addAttribute("prodlist", productDAO.getAllProduct());

		return "home";

	}

	@RequestMapping(value = "/product/{categoryid}")
	public String pro1(@PathVariable("categoryid") String categoryid, Model model) {
		List<Product> lst = productDAO.getByCategory(categoryid);
		if (lst == null) {
			System.out.println("null");
		} else {
			System.out.println("not null");
		}
		model.addAttribute("prodlist", lst);
		return "product";

	}

	@RequestMapping("/asc")
	public String list2(Model model) {
		List<Product> lst = productDAO.getByPriceAsc();
		if (lst == null) {
			System.out.println("null");
		} else {
			System.out.println("not null");
		}
		model.addAttribute("prodlist", lst);
		return "product";

	}

	@RequestMapping("/desc")
	public String list3(Model model) {
		List<Product> lst = productDAO.getByPriceDesc();
		if (lst == null) {
			System.out.println("null");
		} else {
			System.out.println("not null");
		}
		model.addAttribute("prodlist", lst);
		return "product";

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, HttpSession session) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}

	@RequestMapping("/login_sucess")
	public String lis(Model model, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName();
		User user = userDAO.getSingleUser1(name);
		session.setAttribute("user", user);
		String a = user.getEmailid();
		Cart cart = cartDAO.getByEmailid(a);

		int size = cartDAO.listAvailable(cart.getId()).size();
		session.setAttribute("size", size);

		return "redirect:/home";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		String mess = "logout success";
		session.setAttribute("mess", mess);
		return "login";

	}

	@RequestMapping(value = "/addcart/{prodid}")
	public String pr1(@PathVariable("prodid") int prodid, @RequestParam("qty") int quntity, Model model,
			HttpSession session) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();
		System.out.println("User email"+email);
		if(email.equals("anonymousUser")) {
			return "redirect:/login";
		}
		System.out.println(email);
		Cart cart = cartDAO.getByEmailid(email);
		System.out.println(cart.getId());
		Product obj = productDAO.getSingleProduct(prodid);
		System.out.println(obj.getProdid());
		List<CartLine> lst = cartDAO.listAvailable(cart.getId());
		boolean flag = false;
		int id = 0;
		for (CartLine crtln : lst) {
			if (crtln.getProduct().getProdid() == obj.getProdid()) {
				flag = true;
				id=crtln.getId();
				break;
			}
		}
		if (flag) {
			
			
			
			CartLine crtln = cartDAO.get(id);
			
			crtln.setProductCount(crtln.getProductCount() + 1);
			crtln.setTotal(crtln.getProductCount()*crtln.getBuyingPrice());
			cartDAO.update(crtln);
		} else {
			cartLine.setProduct(obj);
			cartLine.setProductCount(quntity);
			cartLine.setBuyingPrice(obj.getPrice());
			cartLine.setCartId(cart.getId());
			System.out.println(quntity);
			System.out.println(obj.getPrice());
			System.out.println(email);
			System.out.println(cart.getId());
			cartLine.setTotal(quntity * (obj.getPrice()));
			cartDAO.add(cartLine);
		}

		cart.setCartLines(cartDAO.listAvailable(cart.getId()).size());
		cartDAO.updateCart(cart);

		int size = cartDAO.listAvailable(cart.getId()).size();
		session.setAttribute("size", size);

	

		return "redirect:/shoping-cart";

	}

	@RequestMapping("/usershow/{userid}")
	public String gooEdit(@PathVariable("userid") int userid, Model model) {
		User obj = userDAO.getSingleUser(userid);
		model.addAttribute("user", obj);
		return "usershow";
	}

	@RequestMapping(value = "/usershow", method = RequestMethod.POST)
	public String updateSg(@ModelAttribute("user") User user, Model model) {
		userDAO.updateUser(user);
		return "billing";
	}

	@RequestMapping(value = "/billing")
	public String updat(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();

		Cart cart = cartDAO.getByEmailid(email);
		List<CartLine> lst = cartDAO.list(cart.getId());
		model.addAttribute("lst", lst);
		model.addAttribute("cartList", cartDAO.listAvailable(cart.getId()));
		double b = 0.0;
		for (CartLine a : lst) {
			b = b + a.getBuyingPrice();
		}
		model.addAttribute("total", b);
		double e = b * 1.1;
		model.addAttribute("total1", e);

		model.addAttribute("total", cart.getGrandTotal());
		return "bill";
	}
	

	@RequestMapping(value = "/checkout")
	public String upat(Model model, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String email = auth.getName();

		Cart cart = cartDAO.getByEmailid(email);
		List<CartLine> lst = cartDAO.list(cart.getId());
		model.addAttribute("lst", lst);
		double b = 0.0;
		for (CartLine a : lst) {
			b = b + a.getBuyingPrice();
		}
		model.addAttribute("total", b);
		double e = b * 1.1;
		model.addAttribute("total1", e);

		cart.setGrandTotal(e);
		Order order = new Order();
		User user = (User) session.getAttribute("user");
		order.setAddress(user.getAddress());
		order.setGrandtotal((int) e);
		order.setGrandtotal(e);
		order.setName(user.getName());
		order.setQuantity(cart.getCartLines());
		
		
		
		
Product p=lst.get(0).getProduct();
String v=p.getSupplierid();
Supplier c=supplierDAO.getSingleSupplier(Integer.parseInt(v));
order.setSuppliername(c.getSuppliername());
		orderDAO.addOrder(order);
		cartDAO.updateCart(cart);
		for(CartLine cartline:lst) {
				cartDAO.remove(cartline);
				
		}
		
		session.setAttribute("size", 0);
return "redirect:/product";
	}
	/*
	 * @RequestMapping(value = "/regOrder") public String
	 * rego(@ModelAttribute("order") Order order) { orderDAO.addOrder(order);
	 * 
	 * 
	 * 
	 * return "redirect:/product";
	 * 
	 * }
	 */
	@RequestMapping(value = "/del/{id}")
	public String gooDel(@PathVariable("id") int id, Model model) {
		CartLine cartLine =cartDAO.get(id);
		cartDAO.remove(cartLine);
		return "redirect:/shoping-cart";
	}

}
