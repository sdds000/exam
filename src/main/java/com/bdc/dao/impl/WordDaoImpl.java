package com.bdc.dao.impl;

import com.bdc.dao.WordDao;
import com.bdc.model.Word;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class WordDaoImpl extends GenericDaoImpl<Word, Integer> implements WordDao {
    @Override
    public List<Word> queryWord(Word word) {
        SqlSession sqlSession = sqlSessionFactory.openSession(false);
        List<Word> words = sqlSession.selectList("word.queryWord", word);
        sqlSession.close();
        return words;
    }
}