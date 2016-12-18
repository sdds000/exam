package com.example.dao.impl;

import org.springframework.stereotype.Repository;

import com.example.dao.StudentDao;
import com.example.model.Student;

@Repository
public class StudentDaoImpl extends GenericDaoImpl<Student, Integer> implements StudentDao {}