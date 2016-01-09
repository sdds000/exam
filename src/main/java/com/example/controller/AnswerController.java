package com.example.controller;

import com.example.model.Question;
import com.example.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.model.Answer;
import com.example.service.AnswerService;

@Controller
@RequestMapping("answer")
public class AnswerController extends BaseController {

    @Autowired
    private AnswerService answerService;

    @RequestMapping("add")
    private String add(Answer answer) {
        User user = (User) getSession().getAttribute("user");
        Question question = (Question) getSession().getAttribute("question");
        answer.setUserId(user.getId());
        answer.setQuestionId(question.getId());
        answerService.add(answer);
        return "redirect:/default.jsp";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        answerService.remove(id);
        return "redirect:/answer/list";
    }

    @RequestMapping("modify")
    private String modify(Answer answer) {
        answerService.modify(answer);
        return "redirect:/answer/list";
    }

    @RequestMapping("list/{page}")
    private String list(@PathVariable int page) {
        getSession().setAttribute("pagination", answerService.list(page));
        return "redirect:/answer/list.jsp";
    }

    @RequestMapping("list")
    private String list() {
        return list(1);
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        getSession().setAttribute("answer", answerService.search(id));
        return "redirect:/answer/edit.jsp";
    }
}