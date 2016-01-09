package com.example.dao.impl;

import org.springframework.stereotype.Repository;

import com.example.dao.AnswerDao;
import com.example.model.Answer;

@Repository
public class AnswerDaoImpl extends GenericDaoImpl<Answer, Integer> implements AnswerDao {
}