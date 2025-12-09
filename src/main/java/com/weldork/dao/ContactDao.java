package com.weldork.dao;

import com.weldork.model.ContactMessage;

public interface ContactDao {
    void save(ContactMessage contact);
}