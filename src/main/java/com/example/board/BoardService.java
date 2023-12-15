package com.example.board;

import java.util.List;

public interface BoardService {
    public int insertSong(BoardVO vo);
    public int deleteSong(int seq);
    public int updateSong(BoardVO vo);
    public BoardVO getSong(int seq);
    public List<BoardVO> getSongList() ;
}
