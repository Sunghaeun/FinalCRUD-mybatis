package com.example.board;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

class BoardRowMapper implements RowMapper<BoardVO> {
    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        BoardVO vo = new BoardVO();
        vo.setCnt(rs.getInt("cnt"));
        vo.setTitle(rs.getString("title"));
        vo.setArtist(rs.getString("artist"));
        vo.setComposer(rs.getString("composer"));
        vo.setLyric(rs.getString("lyric"));
        vo.setGenre(rs.getString("genre"));
        vo.setReleaseDate(rs.getString("releaseDate"));
        vo.setReview(rs.getString("review"));
        vo.setRegdate(rs.getDate("regdate"));
        return vo;
    }

}