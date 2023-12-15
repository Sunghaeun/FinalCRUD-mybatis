package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    SqlSession sqlSession;


    public int insertSong(BoardVO vo) {
        int result = sqlSession.insert("Song.insertSong",vo);
        return result;
    }

    public int deleteSong(int seq) {
        int result = sqlSession.delete("Song.deleteSong",seq);
        return result;
    }
    public int updateSong(BoardVO vo) {
        int result = sqlSession.update("Song.updateSong", vo);
        return result;
    }
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

    public BoardVO getSong(int cnt) {
        BoardVO one = sqlSession.selectOne("Song.getSong", cnt);
        return one;
    }

    public List<BoardVO> getSongList(){
        List<BoardVO> list = sqlSession.selectList("Song.getSongList");
        return list;
    }

}
