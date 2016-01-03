package com.bdc.service.impl;

import com.bdc.dao.GenericDao;
import com.bdc.dao.WordDao;
import com.bdc.model.Word;
import com.bdc.service.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WordServiceImpl extends GenericServiceImpl<Word, Integer> implements WordService {

    @Override
    @Autowired
    @Qualifier("wordDaoImpl")
    public void setGenericDao(GenericDao<Word, Integer> genericDao) {
        super.genericDao = genericDao;
    }

    @Override
    public List<Word> queryWord(Word word) {
        return ((WordDao)genericDao).queryWord(word);
    }
}