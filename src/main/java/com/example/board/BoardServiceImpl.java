package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {
    @Autowired
    BoardDAO boardDAO;
    @Override
    public int insertSong(BoardVO vo) {
        return boardDAO.insertSong(vo);
    }
    @Override
    public int deleteSong(int cnt) {
        return boardDAO.deleteSong(cnt);
    }
    @Override
    public int updateSong(BoardVO vo) {
        return boardDAO.updateSong(vo);
    }
    @Override
    public BoardVO getSong(int cnt) {
        return boardDAO.getSong(cnt);
    }
    @Override
    public List <BoardVO> getSongList() {
        return boardDAO.getSongList();
    }
}
