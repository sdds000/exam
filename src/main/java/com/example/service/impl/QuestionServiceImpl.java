package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.dao.GenericDao;
import com.example.model.Question;
import com.example.service.QuestionService;

@Service
public class QuestionServiceImpl extends GenericServiceImpl<Question, Integer> implements QuestionService {

    @Override
    @Autowired
    @Qualifier("questionDaoImpl")
    public void setGenericDao(GenericDao<Question, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}