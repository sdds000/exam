package com.example.dao.impl;

import org.springframework.stereotype.Repository;

import com.example.dao.MessageDao;
import com.example.model.Message;

@Repository
public class MessageDaoImpl extends GenericDaoImpl<Message, Integer> implements MessageDao {
}