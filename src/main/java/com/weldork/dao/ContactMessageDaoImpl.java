package com.weldork.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.weldork.model.ContactMessage;

@Repository
@Transactional
public class ContactMessageDaoImpl implements ContactMessageDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<ContactMessage> getAllMessagesDesc() {
        return sessionFactory.getCurrentSession()
            .createQuery("FROM ContactMessage ORDER BY id DESC", ContactMessage.class)
            .getResultList();
    }
}