package thecornerclothshop.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="ContactForm")
public class ContactForm {
	
	private String name;
	private String email;
	private String comment;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	

}
