package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.model.Question;
import com.example.service.QuestionService;

@Controller
@RequestMapping("question")
public class QuestionController extends BaseController {

    @Autowired
    private QuestionService questionService;

    @RequestMapping("add")
    private String add(Question question) {
        questionService.add(question);
        return "redirect:/question/list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        questionService.remove(id);
        return "redirect:/question/list";
    }

    @RequestMapping("modify")
    private String modify(Question question) {
        questionService.modify(question);
        return "redirect:/question/list";
    }

    @RequestMapping("list/{page}")
    private String list(@PathVariable int page) {
        getSession().setAttribute("pagination", questionService.list(page));
        return "redirect:/question/list.jsp";
    }

    @RequestMapping("list")
    private String list() {
        return list(1);
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        getSession().setAttribute("question", questionService.search(id));
        return "redirect:/answer/add.jsp";
    }
}