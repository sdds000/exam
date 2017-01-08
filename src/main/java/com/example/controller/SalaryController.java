package com.example.controller;

import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.model.Salary;
import com.example.service.SalaryService;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("salary")
public class SalaryController extends BaseController {

    private final SalaryService salaryService;
    private final UserService userService;

    @Autowired
    public SalaryController(SalaryService salaryService, UserService userService) {
        this.salaryService = salaryService;
        this.userService = userService;
    }

    @RequestMapping("add")
    private String add(Salary salary) {
        salaryService.add(salary);
        return "redirect:/salary/list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        salaryService.remove(id);
        return "redirect:/salary/list";
    }

    @RequestMapping("modify")
    private String modify(Salary salary) {
        salaryService.modify(salary);
        return "redirect:/salary/list";
    }

    @RequestMapping("list/{page}")
    private String list(@PathVariable int page) {
        getSession().setAttribute("pagination", salaryService.query(page, "queryUserSalaries", null));
        getSession().setAttribute("users", userService.queryAll("queryAllUser", null));
        return "redirect:/salary/list.jsp";
    }

    @RequestMapping("list")
    private String list() {
        return list(1);
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        getSession().setAttribute("salary", salaryService.search(id));
        return "redirect:/salary/edit.jsp";
    }

    @RequestMapping("queryUserSalariesByUsernameOrTime")
    private String queryUserSalariesByUsernameOrTime(String username, String time) {
        if (username.trim().isEmpty()) {
            username = null;
        }
        if (time.trim().isEmpty()) {
            time = null;
        }
        System.out.println(username + ", " + time);
        Map<String, String> map = new HashMap<>();
        map.put("username", username);
        map.put("time", time);
        getSession().setAttribute("pagination", salaryService.query(1, "queryUserSalariesByUsernameOrTime", map));
        return "redirect:/salary/list.jsp";
    }
}