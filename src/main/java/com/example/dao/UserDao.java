package com.example.dao;

import com.example.model.Question;
import com.example.model.User;

import java.util.List;

/**
 * Created by Administrator on 2015/12/27.
 */
public interface UserDao extends GenericDao<User, Integer> {
    List<Question> queryQuestionAnswer();
}
