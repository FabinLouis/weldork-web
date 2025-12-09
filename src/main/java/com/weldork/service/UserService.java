package com.weldork.service;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.weldork.dao.UserDao;
import com.weldork.model.User;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public boolean authenticate(String username, String password) {
        return userDao.findByCredentials(username, password) != null;
    }

    @Transactional
    public boolean register(String username, String password, String email) {
        if (userDao.findByUsername(username) != null) {
            return false; // Username already exists
        }
        User user = new User(username, password, email); // ✅ include email
        userDao.save(user);
        return true;
    }
    @Transactional
    public User findByUsername(String username) {
        return sessionFactory.getCurrentSession()
            .get(User.class, username); // Assumes username is @Id
    }
   

}

