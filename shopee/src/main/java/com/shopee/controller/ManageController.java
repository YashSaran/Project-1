package com.shopee.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.shoppingBackend.DAO.CategoryDAO;
import com.shoppingBackend.DAO.ProductDAO;
import com.shoppingBackend.DAO.SupplierDAO;
import com.shoppingBackend.model.Category;
import com.shoppingBackend.model.Product;
import com.shoppingBackend.model.Supplier;

import util.FileUtil;

@Controller
@RequestMapping("/manage")
public class ManageController {
	
	@Autowired
	ProductDAO productDAO;
	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	CategoryDAO categoryDAO;
	
	
	@RequestMapping("/prodReg")
	public String reg1(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("catlist",categoryDAO.getAllCategory());
		model.addAttribute("prodlist",productDAO.getAllProduct());
		model.addAttribute("supplierlist",supplierDAO.getAllSupplier());
		return "prodReg";

	}

	@RequestMapping(value = "/regProd", method = RequestMethod.POST)
	public String regP(@ModelAttribute("product") Product product, Model model) {
		
		try {
			if(product.getFile().isEmpty()){
				return "redirect:/manage/prodReg";
			}else
			{byte bytes[]=product.getFile().getBytes();
			String folder="C:\\Users\\hp\\eclipse-workspace\\shopee\\src\\main\\webapp\\resources\\images\\";
			Path path=Paths.get(folder+product.getCode()+".jpg");
			Files.write(path, bytes);
			}		}
		catch(IOException e) {
			e.printStackTrace();
		}
		productDAO.addProduct(product);
		return "home";

	}

	@RequestMapping("/updateProduct/{prodid}")
	public String goToEdit(@PathVariable("prodid") int prodid, Model model) {
		Product obj = productDAO.getSingleProduct(prodid);
		model.addAttribute("product", obj);
		model.addAttribute("catlist",categoryDAO.getAllCategory());
		return "updateProd";
	}

	@RequestMapping(value = "/updateProd", method = RequestMethod.POST)
public String updates(@ModelAttribute("product")Product product, Model model,
			
			@RequestParam("image1")MultipartFile image1,
			
			@RequestParam("image2")MultipartFile image2,
			
			@RequestParam("image3")MultipartFile image3) {
try {
			
			String b="C:\\Users\\hp\\eclipse-workspace\\shopee\\src\\main\\webapp\\resources\\images\\"+product.getCode()+"\\";
			
			new File(b).mkdirs();
			
			byte bytes1[]=image1.getBytes();
			Path path1=Paths.get(b+"1.jpg");
			
			byte bytes2[]=image2.getBytes();
			Path path2=Paths.get(b+"2.jpg");
			
			byte bytes3[]=image3.getBytes();
			Path path3=Paths.get(b+"3.jpg");
			
			
			
			
			Files.write(path1, bytes1);
			Files.write(path2, bytes2);
			Files.write(path3, bytes3);
		}
		catch(IOException e) {
			e.printStackTrace();
		}
		productDAO.updateProduct(product);
		return "redirect:/manage/prodReg";
	}

	@RequestMapping(value = "/deleteProd/{prodid}")
	public String goToDel(@PathVariable("prodid") int prodid, Model model) {
		productDAO.DeleteProduct(prodid);
		return "redirect:/manage/prodReg";
	}

	@RequestMapping("/SupplierReg")
	public String reg2(Model model) {
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("suplist",supplierDAO.getAllSupplier());
		return "SupplierReg";

	}

	@RequestMapping(value = "/regSupp", method = RequestMethod.POST)
	public String regS(@ModelAttribute("supplier") Supplier supplier, Model model) {
		supplierDAO.addSupplier(supplier);
		return "home";
	}

	@RequestMapping("/CatReg")
	public String reg3(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("catlist", categoryDAO.getAllCategory());
		return "CatReg";

	}

	@RequestMapping(value = "/catReg", method = RequestMethod.POST)
	public String regC(@ModelAttribute("category")Category category, Model model) {
		categoryDAO.addCategory(category);
		return "home";
	}
	@RequestMapping("/catEdit/{categoryid}")
	public String goToEdit1(@PathVariable("categoryid") int categoryid, Model model) {
		Category obj = categoryDAO.getSingleCategory(categoryid);
		model.addAttribute("category", obj);
		return "updateCat";
	}

	@RequestMapping(value = "/updateCat", method = RequestMethod.POST)
	public String updateC(@ModelAttribute("category")Category category, Model model) {
		categoryDAO.updateCategory(category);
		return "redirect:/manage/CatReg";
	}

	@RequestMapping(value = "/deleteCat/{categoryid}")
	public String goToDel1(@PathVariable("categoryid") int categoryid, Model model) {
		categoryDAO.DeleteCategory(categoryid);
		return "redirect:/manage/CatReg";
	}
	@RequestMapping("/supEdit/{supplierid}")
	public String goToEdit2(@PathVariable("supplierid") int supplierid, Model model) {
		Supplier obj = supplierDAO.getSingleSupplier(supplierid);
		model.addAttribute("supplier", obj);
		return "updateSup";
	}

	@RequestMapping(value = "/updateSup", method = RequestMethod.POST)
	public String updateS(@ModelAttribute("supplier")Supplier supplier, Model model) {
		supplierDAO.updateSupplier(supplier);
		return "redirect:/manage/SupplierReg";
	}

	@RequestMapping(value = "/deleteSup/{supplierid}")
	public String goToDel2(@PathVariable("supplierid") int supplierid, Model model) {
		supplierDAO.DeleteSupplier(supplierid);
		return "redirect:/manage/SupplierReg";
	}
	@RequestMapping(value = "/regProd1", method = RequestMethod.POST)
	public String updateM(@ModelAttribute("product")Product product, Model model,
			
			@RequestParam("image1")MultipartFile image1,
			
			@RequestParam("image2")MultipartFile image2,
			
			@RequestParam("image3")MultipartFile image3,
			HttpServletRequest request) {
		
		
		/*if(image1.isEmpty() && image2.isEmpty() && image3.isEmpty()){
			return "redirect:/manage/prodReg";
		}*/
		
		if(image1.isEmpty() && image2.isEmpty() && image3.isEmpty()){
			FileUtil.uploadNoImage(request, product.getCode());
		}
		else {
			MultipartFile file[]=new MultipartFile[3];
			file[0]=image1;
			file[1]=image2;
			file[2]=image3;
			
			FileUtil.uploadFile(request, file, product.getCode());
		}
		
		
		
		
		/*
		try {
			
			String b="C:\\Users\\hp\\eclipse-workspace\\shopee\\src\\main\\webapp\\resources\\images\\"+product.getCode()+"\\";
			
			new File(b).mkdirs();
			
			byte bytes1[]=image1.getBytes();
			Path path1=Paths.get(b+"1.jpg");
			
			byte bytes2[]=image2.getBytes();
			Path path2=Paths.get(b+"2.jpg");
			
			byte bytes3[]=image3.getBytes();
			Path path3=Paths.get(b+"3.jpg");
			
			
			
			
			Files.write(path1, bytes1);
			Files.write(path2, bytes2);
			Files.write(path3, bytes3);
		}
		catch(IOException e) {
			e.printStackTrace();
		}*/
		productDAO.addProduct(product);
		return "redirect:/manage/prodReg";
	}
}
