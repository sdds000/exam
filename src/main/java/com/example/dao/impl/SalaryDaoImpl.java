package com.example.dao.impl;

import org.springframework.stereotype.Repository;

import com.example.dao.SalaryDao;
import com.example.model.Salary;

@Repository
public class SalaryDaoImpl extends GenericDaoImpl<Salary, Integer> implements SalaryDao {}