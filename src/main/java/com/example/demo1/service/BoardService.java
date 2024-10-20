package com.example.demo1.service;

import com.example.demo1.dto.BoardDTO;
import org.springframework.stereotype.Service;

import java.util.List;

public interface BoardService {
//    게시물 리스트 가져옴
    List<BoardDTO> getList(int page, String keyword, String searchType);
    int getTotalPages(String keyword, String searchType);
    BoardDTO getOne(int bno);
    void register(BoardDTO boardDTO);
    void modify(BoardDTO boardDTO);
    void remove(int bno);
}
