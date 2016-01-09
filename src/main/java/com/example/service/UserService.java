package com.example.service;

import com.example.model.Question;
import com.example.model.User;

import java.util.List;

/**
 * Created by Administrator on 2015/12/27.
 */
public interface UserService extends GenericService<User, Integer> {
    User login(User user);
    List<Question> queryQuestionAnswer();
}
