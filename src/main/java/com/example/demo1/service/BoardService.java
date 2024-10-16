package com.example.demo1.service;

import com.example.demo1.dto.BoardDTO;
import org.springframework.stereotype.Service;

import java.util.List;

public interface BoardService {
//    게시물 리스트 가져옴
    List<BoardDTO> getList();
}
