package thecornerclothshop.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import thecornerclothshop.model.ContactForm;
import thecornerclothshop.model.Product;
import thecornerclothshop.service.ContactFormService;
import thecornerclothshop.service.ProductService;

@Controller
public class HomeController {
	
	ProductService service;
	ContactFormService cfService;
	@Autowired
	public HomeController(ProductService service, ContactFormService cfService) 
	{
		this.service=service;
		this.cfService=cfService;
	}
	
	@RequestMapping("/")
	public String getLandingPage(HttpServletResponse response)
	{
		return "index";
	}
	
	@RequestMapping("/index")
	public String getHomePageAnother(HttpServletResponse response)
	{
		return "index";
	}
	
	@RequestMapping("/usersignin")
	public String getUserSignIn(HttpServletResponse response)
	{
		return "signin";
	}
	
	@RequestMapping("/register")
	public String getRegisterPage(HttpServletResponse response)
	{
		return "register";
	}

	@RequestMapping("/logfail")
	public String getFail(HttpServletResponse response)
	{
		return "fail";
	}
	
	@RequestMapping("/aboutus")
	public String getAboutUs(HttpServletResponse response)
	{
		return "aboutus";
	}
	
	@RequestMapping("/showproduct")
	public ModelAndView displayProductPage(@ModelAttribute("product") Product product,Model model)
	{
		ModelAndView mv=new ModelAndView("showproduct");
		mv.addObject("product", product);
			return mv;
	}

	
//	@RequestMapping("/addproduct")
//	public String getProductsPage(Model model)
//	{
//			return "redirect:/shoppingcart";
//	}
	
	@RequestMapping("/showProduct/{gtype}")
	public String getProductsPage(@PathVariable("gtype") String gtype, Model model)
	{
		List<Product> newProduct=new ArrayList<Product>();
		model.addAttribute("product", new Product());
		 ArrayList<Product> p= (ArrayList<Product>) service.getAllProduct();
		 for(Product x:p)
		 {
			 if(x.getGtype().equals(gtype))
			 {
				 newProduct.add(x);
			 }
		 }
			Gson gson=new Gson();
			String json=gson.toJson(newProduct);
			System.out.println("cjson: "+json);
			model.addAttribute("list",json);
			return "products";
	}
	
	@RequestMapping("/savecontactus")
	public String saveContactInfo(@ModelAttribute("contactForm") ContactForm contactForm, Model model)
	{
	
		model.addAttribute("contactForm", new ContactForm());
		cfService.storeInfo(contactForm);
			return "index?msg=ok";
	}

}
