package com.bdc.dao;

import com.bdc.model.Word;

import java.util.List;

public interface WordDao extends GenericDao<Word, Integer> {
    List<Word> queryWord(Word word);
}