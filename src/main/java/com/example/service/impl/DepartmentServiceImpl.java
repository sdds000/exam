package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.dao.GenericDao;
import com.example.model.Department;
import com.example.service.DepartmentService;

@Service
public class DepartmentServiceImpl extends GenericServiceImpl<Department, Integer> implements DepartmentService {

    @Override
    @Autowired
    @Qualifier("departmentDaoImpl")
    public void setGenericDao(GenericDao<Department, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}