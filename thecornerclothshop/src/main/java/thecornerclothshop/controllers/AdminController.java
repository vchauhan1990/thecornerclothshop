package thecornerclothshop.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.multipart.MultipartFile;


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
	
	@RequestMapping("/adminhome")
	public String getAdminHomePage(Model model)
	{
		model.addAttribute("product", new Product());
		 ArrayList<Product> p= (ArrayList<Product>) service.getAllProduct();
			Gson gson=new Gson();
			String json=gson.toJson(p);
			System.out.println("ajson: "+json);
			model.addAttribute("list",json);
		return "adminhomepage";
	}
	
	
	
   @RequestMapping(value = "/addnewproduct", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("product")Product product, 
      BindingResult result, ModelMap model) {
    	
    	if(product.getPid() == 0){
	          
    		model.addAttribute("mprod", product);
    	      boolean x=service.addProduct(product);
    	      ArrayList<Product> p= (ArrayList<Product>) service.getAllProduct();
    			Gson gson=new Gson();
    			String json=gson.toJson(p);
    			System.out.println("ajson: "+json);
    			model.addAttribute("list",json);
    	   
    	        return "adminhomepage";
    	   
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
    
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////   
	@RequestMapping(value="/uploadImage",method=RequestMethod.POST)
	public String insertProduct(@Valid @ModelAttribute("product") Product p, HttpServletRequest request, BindingResult result,ModelMap model) throws IOException
	{
		boolean res=false;
		if(p.getPid() == 0){
	
			res=service.addProduct(p);
		
		ServletContext context=request.getServletContext();
		String rootPath=context.getRealPath("./resources/images/"+service.getMaxId()+".jpg");		
		System.out.println("Path = "+rootPath);
		MultipartFile m=p.getImg();
		System.out.println(m);
		 File dir = new File(rootPath);
		if(!m.isEmpty())
		{
			try
			{
				
				 byte[] bytes = p.getImg().getBytes();
		         BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(dir));
		         stream.write(bytes);
		         stream.close();
				System.out.println("Image uploaded");
				System.out.println("Data Inserted");
			}
			catch(Exception ex)
			{
				System.out.println(ex.getMessage());
			}
		}
		else
		{
			res=false;
		}
		}
		else
		{
			res=service.updateProduct(p);
		}
		if(res)
		{
			 ArrayList<Product> pr= (ArrayList<Product>) service.getAllProduct();
 			Gson gson=new Gson();
 			String json=gson.toJson(pr);
 			System.out.println("ajson: "+json);
 			model.addAttribute("list",json);
			return "adminhomepage";
			
		}
		else
		{
			return "adminhomepage";
		}
		
	}
    
    
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////   
    
    

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
