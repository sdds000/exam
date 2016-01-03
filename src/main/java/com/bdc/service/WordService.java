package com.bdc.service;

import com.bdc.model.Word;

import java.util.List;

public interface WordService extends GenericService<Word, Integer> {
    List<Word> queryWord(Word word);
}