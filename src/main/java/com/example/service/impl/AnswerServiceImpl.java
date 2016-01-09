package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.dao.GenericDao;
import com.example.model.Answer;
import com.example.service.AnswerService;

@Service
public class AnswerServiceImpl extends GenericServiceImpl<Answer, Integer> implements AnswerService {

    @Override
    @Autowired
    @Qualifier("answerDaoImpl")
    public void setGenericDao(GenericDao<Answer, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}