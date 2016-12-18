package com.example.dao.impl;

import org.springframework.stereotype.Repository;

import com.example.dao.DepartmentDao;
import com.example.model.Department;

@Repository
public class DepartmentDaoImpl extends GenericDaoImpl<Department, Integer> implements DepartmentDao {}