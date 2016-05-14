package thecornerclothshop.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Cart")
public class Cart implements Serializable{

	private static final long serialVersionUID = -5607361532359029845L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int cartId;
	public List<Items> items;
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	
	@OneToMany(mappedBy = "cart", cascade = CascadeType.ALL)
	public List<Items> getItems() {
		return items;
	}
	public void setItems(List<Items> items) {
		this.items = items;
	}


}
