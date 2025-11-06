package com.weldork.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.weldork.model.Newsletter;

@Repository
@Transactional
public class NewsletterDaoImpl implements NewsletterDao {

    @Autowired
    private SessionFactory sessionFactory;  

    @Override
    public void save(Newsletter newsletter) {
        sessionFactory.getCurrentSession().save(newsletter);
    }
    @Override
    public List<Newsletter> getAllSubscribersDesc() {
        return sessionFactory.getCurrentSession()
            .createQuery("FROM Newsletter ORDER BY id DESC", Newsletter.class)
            .getResultList();
    }

}