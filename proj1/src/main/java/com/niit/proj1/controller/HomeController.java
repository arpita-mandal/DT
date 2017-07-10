package com.niit.proj1.controller;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.proj1.dao.CategoryDao;
import com.niit.proj1.dao.ProductDao;
import com.niit.proj1.dao.UserDao;
import com.niit.proj1.model.Product;
import com.niit.proj1.model.User;


@Controller  
public class HomeController {
	 @Autowired 
	 CategoryDao categoryDao;
	 @Autowired
	 ProductDao productDao;
	 @Autowired
	 UserDao userDao;
	 
	  
	  @RequestMapping("/")  
	    public ModelAndView index(HttpSession session){  
		 ModelAndView mv= new ModelAndView("home");

		 session.setAttribute("categoryList", categoryDao.showAllCategory());
		 mv.addObject("categoryList", categoryDao.showAllCategory());
		return mv;  
	    } 
	  @RequestMapping("/home1")  
	    public ModelAndView index1(HttpSession session){  
		 ModelAndView mv= new ModelAndView("home");
		 session.setAttribute("categoryList", categoryDao.showAllCategory());
		 mv.addObject("categoryList", categoryDao.showAllCategory());
		
	        return mv;  
	    } 
	  
	  
	  @RequestMapping("/showProductsByCategory/{categoryId}")  
	    public ModelAndView showProductsByCategory(@PathVariable String categoryId ){  
		 System.out.println("cat id "+categoryId);
		 ModelAndView mv= new ModelAndView("products");
		 mv.addObject("productList", categoryDao.listByCategoryId(categoryId));
	        return mv;  
	    } 
	  @RequestMapping("/ProductDetails/{productId}")
	  public ModelAndView ProductDetails(@PathVariable String productId)
	  {
		 ModelAndView mv=new ModelAndView("product");
		 mv.addObject("product",productDao.showdDetailsByProductId(productId));
		 return mv;
		 
	  }
	  @RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	  public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("login");
	    return mav;
	  }
 	  
	 	@RequestMapping("/manageProduct")  
	     public ModelAndView showformproduct(){  
	         return new ModelAndView("manageproduct","command",new Product());  
	     } 
	 	@RequestMapping("/manageUser")  
	     public ModelAndView showformuser(){  
	         return new ModelAndView("viewusers","command",new User());  
	     } 
	  @RequestMapping(value="/save1",method = RequestMethod.POST)  
	    public ModelAndView saveproduct(@ModelAttribute("product") Product product , HttpServletRequest request, 
				@RequestParam("file") MultipartFile file){  
	    	
	    	
			byte fileBytes[];
			FileOutputStream fos = null;
			
			String fileName = "";
			String productImage = "";
			ServletContext context = request.getServletContext();
			String realContextPath = context.getRealPath("/");
			String un = product.getProductName();
			if (file != null){
				fileName = realContextPath + "/resources/img/" + un + ".jpg";
				productImage = "resources/img/" + un + ".jpg";
				System.out.println("===" + fileName + "===");
				File fileobj = new File(fileName);
				try{
					fos = new FileOutputStream(fileobj);
					fileBytes = file.getBytes();
					fos.write(fileBytes);
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			product.setProductImage(productImage);	
			productDao.addProduct(product);
	        return new ModelAndView("redirect:/home1");
}


	     @RequestMapping("/viewproducts")  
	     public ModelAndView viewproducts(){  
	    	 List<Product> list=productDao.getAllProducts();
	         return new ModelAndView("viewproducts","list",list);  
	     }  
	     @RequestMapping(value="/editproducts/{id}")  
	     public ModelAndView editproduct(@PathVariable String id){  
	         Product product=productDao.getProductById(id);  
	         ModelAndView mv=new ModelAndView("producteditform","command",product);
	         mv.addObject("photo",product.getProductImage());
	         return mv;
	     }  
	     
	     
	     @RequestMapping(value="/editsaveproduct",method = RequestMethod.POST)  
	     public ModelAndView editsaveproduct(@ModelAttribute("product") Product product , HttpServletRequest request, 
					@RequestParam("file") MultipartFile file){  
		    	
		    	if(file.getSize()!=0)
		    	{
				byte fileBytes[];
				FileOutputStream fos = null;
				
				String fileName = "";
				String productImage = "";
				ServletContext context = request.getServletContext();
				String realContextPath = context.getRealPath("/");
				String un = product.getProductName();
				if (file != null)
				{
					fileName = realContextPath + "/resources/img/" + un + ".jpg";
					productImage = "resources/img/" + un + ".jpg";
					System.out.println("===" + fileName + "===");
					File fileobj = new File(fileName);
					try
					{
						fos = new FileOutputStream(fileobj);
						fileBytes = file.getBytes();
						fos.write(fileBytes);
					}
					catch(Exception e) 
					{
						e.printStackTrace();
					}
				}
				
				product.setProductImage(productImage);	
		    	}
				productDao.updateProduct(product);
		        return new ModelAndView("redirect:/viewproducts"); 
	     }  
	      
	     @RequestMapping(value="/deleteproducts/{id}",method = RequestMethod.GET)  
	     public ModelAndView delete(@PathVariable String id){
	        productDao.deleteProduct(id);
	         return new ModelAndView("redirect:/viewproducts");  
	       
	     
	 }

} 
