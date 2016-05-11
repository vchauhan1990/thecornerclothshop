package thecornerclothshop.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import thecornerclothshop.model.Product;
import thecornerclothshop.service.ProductService;

@Controller
public class HomeController {
	
	ProductService service;
	@Autowired
	public HomeController(ProductService service) 
	{
		this.service=service;
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
		return "index";
	}

	@RequestMapping("/logfail")
	public String getFail(HttpServletResponse response)
	{
		return "fail";
	}

	
	@RequestMapping("/productpage")
	public String getProductsPage(Model model)
	{
		model.addAttribute("product", new Product());
		 ArrayList<Product> p= (ArrayList<Product>) service.getAllProduct();
			Gson gson=new Gson();
			String json=gson.toJson(p);
			System.out.println("cjson: "+json);
			model.addAttribute("list",json);
			return "products";
	}

}
