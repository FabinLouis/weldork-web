package com.weldork.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.weldork.dao.NewsletterDao;
import com.weldork.model.Newsletter;

@Service
public class NewsletterService {

    @Autowired
    private NewsletterDao newsletterDao;

    public void subscribe(String email) {
        Newsletter newsletter = new Newsletter();
        newsletter.setEmail(email);
        newsletterDao.save(newsletter);
    }
    public List<Newsletter> getAllSubscribersDesc() {
        return newsletterDao.getAllSubscribersDesc();
    }

}
