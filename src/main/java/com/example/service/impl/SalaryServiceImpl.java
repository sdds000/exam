package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.dao.GenericDao;
import com.example.model.Salary;
import com.example.service.SalaryService;

@Service
public class SalaryServiceImpl extends GenericServiceImpl<Salary, Integer> implements SalaryService {

    @Override
    @Autowired
    @Qualifier("salaryDaoImpl")
    public void setGenericDao(GenericDao<Salary, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}