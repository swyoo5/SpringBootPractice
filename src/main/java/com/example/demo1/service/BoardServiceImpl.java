package com.example.demo1.service;

import com.example.demo1.dto.BoardDTO;
import com.example.demo1.mapper.BoardMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Log4j2
//필드 자동주입
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {
    private final BoardMapper boardMapper;
    @Override
    public List<BoardDTO> getList() {
//        boardMapper의 select 결과
        return boardMapper.selectAll();
    }
}
