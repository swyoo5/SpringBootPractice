package com.example.demo1.controller;

import com.example.demo1.service.BoardService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/board")
public class BoardController {
    @Autowired
    private BoardService boardService;

//    논리뷰 이름, db 테이블을 board/list로 보낸다(+ application.properties view setting)
    @GetMapping("/list")
    private void list(Model model) {
        model.addAttribute("boardList", boardService.getList());
    }
}
