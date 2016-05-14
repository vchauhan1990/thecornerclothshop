package thecornerclothshop.service;

import java.util.List;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import thecornerclothshop.dao.CartDAOImpl;
import thecornerclothshop.model.Cart;
import thecornerclothshop.model.Items;

@Component
public class CartService {
	
	CartDAOImpl daoImpl;
		 
		public void initFlow(){	
	
		}
		
		public List<Items> getCartData()
		{
			daoImpl=new CartDAOImpl();
			
			List<Items> items=null;
			
			
			
			return items;
		}

}
