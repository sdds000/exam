package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.dao.GenericDao;
import com.example.model.Message;
import com.example.service.MessageService;

@Service
public class MessageServiceImpl extends GenericServiceImpl<Message, Integer> implements MessageService {

    @Override
    @Autowired
    @Qualifier("messageDaoImpl")
    public void setGenericDao(GenericDao<Message, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}