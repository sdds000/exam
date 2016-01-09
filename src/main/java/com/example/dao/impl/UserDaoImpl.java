package com.example.dao.impl;

import com.example.dao.UserDao;
import com.example.model.Question;
import com.example.model.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2015/12/27.
 */
@Repository
public class UserDaoImpl extends GenericDaoImpl<User, Integer> implements UserDao {
    @Override
    public List<Question> queryQuestionAnswer() {
        SqlSession sqlSession = sqlSessionFactory.openSession(false);
        List<Question> questions = sqlSession.selectList("user.query_question_answer");
        sqlSession.close();
        return questions;
    }
}