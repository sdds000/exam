package com.bdc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.bdc.model.Word;
import com.bdc.service.WordService;

@Controller
@RequestMapping("word")
public class WordController extends BaseController {

    @Autowired
    private WordService wordService;

    @RequestMapping("add")
    private String add(Word word) {
        wordService.add(word);
        return "redirect:/word/list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        wordService.remove(id);
        return "redirect:/word/list";
    }

    @RequestMapping("modify")
    private String modify(Word word) {
        wordService.modify(word);
        return "redirect:/word/list";
    }

    @RequestMapping("list")
    private String list() {
        getSession().setAttribute("list", wordService.list());
        return "redirect:/word/list.jsp";
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        getSession().setAttribute("word", wordService.search(id));
        return "redirect:/word/edit.jsp";
    }

    @RequestMapping("query")
    private String query(@RequestParam String string) {
        getSession().setAttribute("words", wordService.queryWord(new Word(null, string, string, null)));
        return "redirect:/default.jsp";
    }
}