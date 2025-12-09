package com.weldork.dao;

import java.util.List;

import com.weldork.model.ContactMessage;

public interface ContactMessageDao {
	List<ContactMessage> getAllMessagesDesc();

}
