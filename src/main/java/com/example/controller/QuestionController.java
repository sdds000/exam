package com.example.controller;

import com.example.model.Answer;
import com.example.model.User;
import com.example.service.AnswerService;
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
    @Autowired
    private AnswerService answerService;

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
        Answer answer = new Answer();
        answer.setQuestionId(id);
        answer.setUserId(((User)getSession().getAttribute("user")).getId());
        getSession().setAttribute("answer", answerService.query(answer));
        return "redirect:/answer/add.jsp";
    }
}