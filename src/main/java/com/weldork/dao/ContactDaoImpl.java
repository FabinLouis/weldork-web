package com.weldork.dao;

import com.weldork.model.ContactMessage;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class ContactDaoImpl implements ContactDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public void save(ContactMessage contact) {
        sessionFactory.getCurrentSession().persist(contact);
    }
}
