package com.example.demo1.controller;

import com.example.demo1.dto.BoardDTO;
import com.example.demo1.service.BoardService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

    @GetMapping("/register")
    public void registerGet() {
        log.info("registerGet");
    }

    @PostMapping("/register")
//    폼에 데이터 전달, boardDTO가 데이터 받음 => register로 전달 => mapper로 전달
    public String registerPost(BoardDTO boardDTO) {
        log.info("registerPost");
        boardService.register(boardDTO);
//        redirect : 논리뷰를 리턴하지 않고 다시 controller를 선택
        return "redirect:/board/list";
    }

//    read로 데이터 전달
    @GetMapping({"/read", "/modify"})
    public void read(@RequestParam("bno") int bno, Model model) {
        log.info("read");
        BoardDTO dto = boardService.getOne(bno);
        model.addAttribute("dto", dto);
    }

    @PostMapping("/modify")
    public String modifyPost(BoardDTO boardDTO) {
        log.info("modifyPost");
        boardService.modify(boardDTO);
        return "redirect:/board/read?bno=" + boardDTO.getBno();
    }

    @GetMapping("/remove")
    public String remove(int bno) {
        log.info("remove");
        boardService.remove(bno);
        return "redirect:/board/list";
    }
}
