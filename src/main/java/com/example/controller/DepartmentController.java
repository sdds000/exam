package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.model.Department;
import com.example.service.DepartmentService;

@Controller
@RequestMapping("department")
public class DepartmentController extends BaseController {

    private final DepartmentService departmentService;

    @Autowired
    public DepartmentController(DepartmentService departmentService) {
        this.departmentService = departmentService;
    }

    @RequestMapping("add")
    private String add(Department department) {
        departmentService.add(department);
        return "redirect:/department/list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        departmentService.remove(id);
        return "redirect:/department/list";
    }

    @RequestMapping("modify")
    private String modify(Department department) {
        departmentService.modify(department);
        return "redirect:/department/list";
    }

    @RequestMapping("list/{page}")
    private String list(@PathVariable int page) {
        getSession().setAttribute("pagination", departmentService.list(page));
        return "redirect:/department/list.jsp";
    }

    @RequestMapping("list")
    private String list() {
        return list(1);
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        getSession().setAttribute("department", departmentService.search(id));
        return "redirect:/department/edit.jsp";
    }
}