package com.example.dao.impl;

import org.springframework.stereotype.Repository;

import com.example.dao.QuestionDao;
import com.example.model.Question;

@Repository
public class QuestionDaoImpl extends GenericDaoImpl<Question, Integer> implements QuestionDao {
}