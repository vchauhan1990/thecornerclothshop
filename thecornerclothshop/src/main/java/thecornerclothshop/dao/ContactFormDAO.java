package thecornerclothshop.dao;

import java.util.List;

import thecornerclothshop.model.ContactForm;

public interface ContactFormDAO {
	
	public boolean storeInfo(ContactForm cf);
	public List<ContactForm> getAllInfo();

}
