package com.niit.proj100.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.proj100.dao.UserDao;
import com.niit.proj100.model.User;

@Controller  
public class UserController {
	  @Autowired 
	  UserDao usersDao;
	  @RequestMapping("/index")  
	    public ModelAndView index(){  
	        return new ModelAndView("index");  
	    } 
	  
	@RequestMapping("/usersform")  
    public ModelAndView showform(){  
        return new ModelAndView("usersform","command",new User());  
    } 
	
	 /*It saves object into database. The @ModelAttribute puts request data 
     *  into model object. You need to mention RequestMethod.POST method  
     *  because default request is GET*/  
    @RequestMapping(value="/save",method = RequestMethod.POST)  
    public ModelAndView save(@ModelAttribute("users") User users){  
    	usersDao.addUsers(users);
        return new ModelAndView("redirect:/viewusers");//will redirect to viewusers request mapping  
        
    }  
    @RequestMapping("/viewusers")  
    public ModelAndView viewusers(){  
        List<User> list=usersDao.getAllUsers();
        return new ModelAndView("viewusers","list",list);  
    }  
    @RequestMapping(value="/editusers/{id}")  
    public ModelAndView edit(@PathVariable int id){  
        User users=usersDao.getUsersById(id);  
        return new ModelAndView("userseditform","command",users);  
    }  
    
    
    /* It updates model object. */  
    @RequestMapping(value="/editsave",method = RequestMethod.POST)  
    public ModelAndView editsave(@ModelAttribute("users") User users){  
    	usersDao.updateUsers(users);
        return new ModelAndView("redirect:/viewusers");  
    }  
    
    /* It deletes record for the given id in URL and redirects to /viewusers */  
    @RequestMapping(value="/deleteusers/{id}",method = RequestMethod.GET)  
    public ModelAndView delete(@PathVariable int id){ 
    	System.out.println("delete is called");
       usersDao.deleteUsers(id);
        return new ModelAndView("redirect:/viewusers");  
    }  
    
}