package thecornerclothshop.service;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import thecornerclothshop.model.Cart;

@Component
public class CartService {
	
		 
		public Cart initFlow(){
			return new Cart();
		}
	 
		public String validateDetails(Cart cart,MessageContext messageContext){
			String status = "success";
			System.out.println("inside validate");
			if(cart.getCartId()==0){
				messageContext.addMessage(new MessageBuilder().error().source(
						"userId").defaultText("Cart ID Empty").build());
				
				status = "failure";
			}
			return status;
		}

}
