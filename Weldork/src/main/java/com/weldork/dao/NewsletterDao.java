package com.weldork.dao;

import java.util.List;

import com.weldork.model.Newsletter;

public interface NewsletterDao {
	 void save(Newsletter newsletter);
	 
	 List<Newsletter> getAllSubscribersDesc();



}
