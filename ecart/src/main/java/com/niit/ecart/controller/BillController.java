package com.niit.ecart.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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

import com.niit.ecart.dao.BillDao;
import com.niit.ecart.dao.CartDao;
import com.niit.ecart.dao.CartItemDao;
import com.niit.ecart.dao.CategoryDao;
import com.niit.ecart.dao.ProductDao;
import com.niit.ecart.dao.SubcategoryDao;
import com.niit.ecart.dao.UserDao;
import com.niit.ecart.model.Bill;
import com.niit.ecart.model.CartItem;
import com.niit.ecart.model.Product;
import com.niit.ecart.model.User;

@Controller
public class BillController {
	@Autowired 
	  UserDao usersDao;
	  @Autowired 
	  CartDao cartDao;
	 @Autowired
	 BillDao billDao;
	 @Autowired
	 CartItemDao cartItemDao;
	
	@RequestMapping("/billform")
	 public ModelAndView newBill(){
		 return new ModelAndView("billform","command",new Bill());
	}
		 @RequestMapping(value="/savebill",method = RequestMethod.POST)  
		    public ModelAndView savebill(@ModelAttribute("bill") Bill bill , HttpSession session,Principal principal){
			 Double stotal=(Double)session.getAttribute("total");
			 String id=principal.getName();
			 User u=usersDao.getUsersById(id);
			 int cart=u.getCart().getCartId();
				List<CartItem>  items=cartDao.getCartItemsByCartId(cart);
				
				for(CartItem i:items)
				{
	
					i.setStatus("Y");
					cartItemDao.saveOrUpdate(i);
				}
				
			 bill.setUser(u);
			 bill.setTotal(stotal);
			 bill.setBillDate(new Date(System.currentTimeMillis()));
			 billDao.addBill(bill);
			 int billId=bill.getBillId();
			 return new ModelAndView("redirect:/showbill/"+billId);
}
		 @RequestMapping(value="/showbill/{billId}")  
		    public ModelAndView showbill(@PathVariable int billId, Principal principal, Bill bill){
			
			 String uid=principal.getName(); 
			 bill=billDao.returnbill(billId);
			 
			 return new ModelAndView("showbill","bill",bill);
			 
			 
			 
		 }
}