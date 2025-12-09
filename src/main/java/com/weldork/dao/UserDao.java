package com.weldork.dao;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.weldork.model.User;

@Repository
public class UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public void save(User user) {
        sessionFactory.getCurrentSession().save(user);
    }

    @Transactional
    public User findByUsername(String username) {
        return sessionFactory.getCurrentSession()
            .get(User.class, username); // Assumes username is @Id
    }

    @Transactional
    public User findByCredentials(String username, String password) {
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<User> query = session.createQuery(
            "FROM User WHERE username = :username AND password = :password", User.class);
        query.setParameter("username", username);
        query.setParameter("password", password);
        return query.getSingleResult();
    }
    
}
