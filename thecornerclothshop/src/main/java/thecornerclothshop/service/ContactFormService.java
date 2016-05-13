package thecornerclothshop.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import thecornerclothshop.dao.ContactFormDAOImpl;
import thecornerclothshop.model.ContactForm;

@Service
@Transactional
public class ContactFormService {
	
	@Autowired
	ContactFormDAOImpl cfi;
	
	public boolean storeInfo(ContactForm cf) {
			return cfi.storeInfo(cf);
	}	

	public List<ContactForm> getAllInfo() {
		return cfi.getAllInfo();
	}

}
