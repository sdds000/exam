package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.dao.GenericDao;
import com.example.model.Student;
import com.example.service.StudentService;

@Service
public class StudentServiceImpl extends GenericServiceImpl<Student, Integer> implements StudentService {

    @Override
    @Autowired
    @Qualifier("studentDaoImpl")
    public void setGenericDao(GenericDao<Student, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}