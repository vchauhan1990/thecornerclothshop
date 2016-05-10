package thecornerclothshop.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import thecornerclothshop.model.Product;
import thecornerclothshop.service.ProductService;

@Controller
public class AdminController {

	ProductService service;
	@Autowired
	public AdminController(ProductService service) 
	{
		this.service=service;
	}
	
	@RequestMapping("/adminpage")
	public String getAdminLandingPage(HttpServletResponse response)
	{
		return "adminlandingpage";
	}
	
	@RequestMapping(value="/loginForm",method=RequestMethod.POST)
	public String getFormData(@RequestParam("username") String user, @RequestParam("password") String pass, Model model)
	{
		if(user.equals("admin")&&pass.equals("admin"))
		{
		model.addAttribute("product", new Product());
		 ArrayList<Product> p= (ArrayList<Product>) service.getAllProduct();
			Gson gson=new Gson();
			String json=gson.toJson(p);
			System.out.println("ajson: "+json);
			model.addAttribute("list",json);
		return "adminhomepage";
		}else
		{
			return "adminlandingpage";
		}
	}
	
    @RequestMapping(value = "/addnewproduct", method = RequestMethod.POST)
    public String submit(@ModelAttribute("product")Product product, 
      BindingResult result, ModelMap model) {
    	
    	if(product.getPid() == 0){
	          
    		model.addAttribute("mprod", product);
    	      boolean x=service.addProduct(product);
    	      ArrayList<Product> p= (ArrayList<Product>) service.getAllProduct();
    			Gson gson=new Gson();
    			String json=gson.toJson(p);
    			System.out.println("ajson: "+json);
    			model.addAttribute("list",json);
    	      if(x)
    	        return "adminhomepage";
    	      else
    	    	  return "index";
        }else{
           
        	model.addAttribute("mprod", product);
            boolean x=service.updateProduct(product);
            ArrayList<Product> p= (ArrayList<Product>) service.getAllProduct();
      		Gson gson=new Gson();
      		String json=gson.toJson(p);
      		System.out.println("ajson: "+json);
      		model.addAttribute("list",json);
            if(x)
              return "adminhomepage";
            else
          	  return "index";
        }
    }

    @RequestMapping(value = "/deleteproduct", method = RequestMethod.POST)
    public String delete(@ModelAttribute("product")Product product, 
      BindingResult result, ModelMap model) {
      model.addAttribute("mprod", product);
      boolean x=service.deleteProduct(product);
      ArrayList<Product> p= (ArrayList<Product>) service.getAllProduct();
		Gson gson=new Gson();
		String json=gson.toJson(p);
		System.out.println("ajson: "+json);
		model.addAttribute("list",json);
      if(x)
        return "adminhomepage";
      else
    	  return null;
    } 
	    
    @RequestMapping(value = "/editproduct", method = RequestMethod.POST)
    public String edit(@ModelAttribute("product")Product product, 
      BindingResult result, ModelMap model) {
      model.addAttribute("mprod", product);
      ArrayList<Product> p= (ArrayList<Product>) service.getAllProduct();
		Gson gson=new Gson();
		String json=gson.toJson(p);
		System.out.println("ajson: "+json);
		model.addAttribute("list",json);
		Gson g=new Gson();
		String j=g.toJson(product);
		model.addAttribute("alist",json);
        return "adminhomepage";
    }
	     

}
