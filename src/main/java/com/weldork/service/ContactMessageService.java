package com.weldork.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.weldork.dao.ContactMessageDao;
import com.weldork.model.ContactMessage;

@Service
public class ContactMessageService {

    @Autowired
    private ContactMessageDao contactMessageDao;

    public List<ContactMessage> getAllMessagesDesc() {
        return contactMessageDao.getAllMessagesDesc();
    }
}
