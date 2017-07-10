package com.niit.proj1.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.proj1.dao.CartDao;
import com.niit.proj1.dao.UserDao;
import com.niit.proj1.model.Cart;
import com.niit.proj1.model.User;
@Controller  
public class UserController {
	  @Autowired 
	  UserDao usersDao;
	  @Autowired
	  CartDao cartDao;
	  
	  @RequestMapping("/index")  
	    public ModelAndView index(){  
	        return new ModelAndView("index");  
	    } 
	 @RequestMapping(value="/save",method = RequestMethod.POST)  
	 public ModelAndView save(@ModelAttribute("users") User users){ 
		 Cart c=new Cart();
		 cartDao.saveOrUpdate(c);
		 users.setCart(c);
		 
	    usersDao.addUsers(users);
	    
	    
	    c.setUser(users);
	    cartDao.saveOrUpdate(c);
	        return new ModelAndView("redirect:/home1");

			
	 }
		 	  
	 	@RequestMapping("/usersform")  
	     public ModelAndView showform(){  
	         return new ModelAndView("usersform","command",new User());  
	     } 
	 	
	 
	     @RequestMapping("/viewusers")  
	     public ModelAndView viewusers(){  
	    	 List<User> list=usersDao.getAllUsers();
	         return new ModelAndView("viewusers","list",list);  
	     }  
  
	     @RequestMapping(value="/editusers/{id}")  
	     public ModelAndView edit(@PathVariable String id){  
	         User users=usersDao.getUsersById(id);  
	         System.out.println("users is "+users);
	         ModelAndView mv=new ModelAndView("userseditform","command",users);  
	         System.out.println(users.getUserName()+" mmmmmmm "+users.getUserImage());
	         mv.addObject("photo",users.getUserImage());
	         return mv;  
	     }  
	     
	     @RequestMapping(value="/editsave",method = RequestMethod.POST)  
	     public ModelAndView editsave(@ModelAttribute("users") User users , HttpServletRequest request, 
	 			@RequestParam("file") MultipartFile file){  
	     	if (file.getSize()!=0)
	     		
	     	{
	     		
	     		System.out.println("uiuiuiuiuiuiu"+ file.getSize());
	 byte fileBytes[];
	 FileOutputStream fos = null;

	 String fileName = "";
	 String userImage = "";
	 ServletContext context = request.getServletContext();
	 String realContextPath = context.getRealPath("/");
	 String un = users.getUserName();
	 if (file != null){
	 	System.out.println(" file not null");
	 fileName = realContextPath + "/resources/img/" + un + ".jpg";
	 userImage = "resources/img/" + un + ".jpg";
	 System.out.println("===" + fileName + "===");
	 File fileobj = new File(fileName);
	 try{
	 fos = new FileOutputStream(fileobj);
	 fileBytes = file.getBytes();
	 fos.write(fileBytes);
	 fos.close();
	 } catch(Exception e) {
	 e.printStackTrace();
	 }
	 }

	 users.setUserImage(userImage);	
	 
	     	}
	     	usersDao.updateUsers(users);
	        return new ModelAndView("redirect:/viewusers");  
	     	}
	      
	     @RequestMapping(value="/deleteusers/{id}",method = RequestMethod.GET)  
	     public ModelAndView delete(@PathVariable String id){ 
	     	System.out.println("delete is called");
	        usersDao.deleteUsers(id);
	         return new ModelAndView("redirect:/viewusers");  
	       
	     
	 }
}
