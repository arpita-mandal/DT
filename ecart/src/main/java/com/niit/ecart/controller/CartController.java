package com.niit.ecart.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ecart.dao.CartDao;
import com.niit.ecart.dao.CartItemDao;
import com.niit.ecart.dao.CategoryDao;
import com.niit.ecart.dao.ProductDao;
import com.niit.ecart.dao.UserDao;
import com.niit.ecart.model.Cart;
import com.niit.ecart.model.CartItem;
import com.niit.ecart.model.Product;
import com.niit.ecart.model.User;

/**
 * @author Jo
 *
 */
@Controller
public class CartController {
	@Autowired 
	  CategoryDao categoryDao;
	 @Autowired 
	 ProductDao productDao;
	 @Autowired 
	 UserDao userDao;
	 @Autowired
	 CartDao cartDao;
	 @Autowired
	 CartItemDao cartItemDao;
	 
	
	 @RequestMapping("/cart/showCart")
	 public ModelAndView showProduct(Principal principal , HttpSession session){
		 String id=principal.getName();
		 ModelAndView mv = new ModelAndView("cart");
		 Cart cart= (Cart) session.getAttribute("cart");
		 List<CartItem> cartItems=cartItemDao.getCartItemByUserId(id);
		 if(cartItems==null||cartItems.size()==0)
		 {
			 mv.addObject("errMsg", "No Items in Cart");
		 }
		 else
		 {
			 mv.addObject("cartContent", cartItems);
			
		 }
		 return mv;
	 }
	 
	 private void updateCart(CartItem cartItem)
	 {
		 Cart c1=cartItem.getCart();
		 c1.setGrandTotal(c1.getGrandTotal()+cartItem.getProduct().getProductPrice());
		 cartDao.saveOrUpdate(c1);
	 }
	 
	 @RequestMapping("/cart/addItem/{productId}")
	 public ModelAndView addItemToCart(@PathVariable String productId, Principal principal, HttpSession session){
		 ModelAndView mv = new ModelAndView("redirect:/cart/showCart");
		 String id = principal.getName();
		 System.out.println("logged in user "+id);
		 Product product = productDao.showdDetailsByProductId(productId);
		 User u=userDao.getUsersById(id);
		 Cart cart=u.getCart();
		 		 
		 System.out.println("Yes cart");
		 
		 List <CartItem> cartItems = cartItemDao.getCartItemByUserId(id);
		 System.out.println("pid = "+product.getProductId());
		 for(CartItem cartItem:cartItems)
		 {
			if(cartItem.getProduct().getProductId().compareTo(productId)==0)
			{
				cartItem.setQuantity(cartItem.getQuantity()+1);
				cartItem.setSubTotal(cartItem.getSubTotal()+product.getProductPrice());
				cartItemDao.saveOrUpdate(cartItem);
				
				session.setAttribute("cart", cartItem.getCart());
				return mv;
				 
			}
		 }
		 
		 
		 CartItem item = new CartItem();
		 item.setStatus("N");
		 item.setCart(cart);
		 item.setProduct(product);
		 item.setQuantity(1);
		 item.setSubTotal(product.getProductPrice());
		 cartItemDao.saveOrUpdate(item);
		
		 session.setAttribute("cart", item.getCart());
		 
		
		 return mv;
		 }
	 @RequestMapping("/cart/deletefromcart/{cartitemId}")  
     public ModelAndView deletefromcart(@PathVariable int cartitemId, Principal principal, HttpSession session){
		cartItemDao.delete(cartitemId);
         return new ModelAndView("redirect:/cart/showCart");
}
}		