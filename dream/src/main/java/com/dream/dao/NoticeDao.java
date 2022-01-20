package com.dream.dao;

import java.util.ArrayList;

import com.dream.vo.NoticeVO;

public class NoticeDao extends DBConn {
    /**
     * 공지사항 글쓰기
     */
    public int insert(NoticeVO vo) {
        int result = 0;
        String sql = "insert into notice_table values('n_'||sequ_notice_table.nextval,?,?,1,0,'admin',sysdate,'admin',sysdate)";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getNtitle());
            pstmt.setString(2, vo.getNcontent());

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    /**
     * 공지사항 리스트
     */
    public ArrayList<NoticeVO> select() {
        ArrayList<NoticeVO> list = new ArrayList<NoticeVO>();
        String sql = "select rownum rno, notice_id, ntitle, ncontent, notice_hits, notice_status, mem_id1, to_char(notice_date, 'yyyy-mm-dd'), mem_id2, notice_updatedate from\r\n"
                + "(select rownum rno, notice_id, ntitle, ncontent, notice_hits, notice_status, mem_id1, notice_date, mem_id2, notice_updatedate \r\n"
                + "from (select notice_id, ntitle, ncontent, notice_hits, notice_status, \r\n"
                + "mem_id1, notice_date, mem_id2, notice_updatedate from notice_table order by notice_date)) where notice_status=0 order by rno desc";
        getPreparedStatement(sql);
        try {
            rs = pstmt.executeQuery();
            while (rs.next()) {
                NoticeVO vo = new NoticeVO();
                vo.setRno(rs.getInt(1));
                vo.setNotice_id(rs.getString(2));
                vo.setNtitle(rs.getString(3));
                vo.setNcontent(rs.getString(4));
                vo.setNotice_hits(rs.getInt(5));
                vo.setNotice_status(rs.getInt(6));
                vo.setMem_id1(rs.getString(7));
                vo.setNotice_date(rs.getString(8));
                vo.setMem_id2(rs.getString(9));
                vo.setNotice_updatedate(rs.getString(10));

                list.add(vo);
            }
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 공지사항 상세보기
     */
    public NoticeVO select(String notice_id, String page) {
        NoticeVO vo = new NoticeVO();
        String sql = "select notice_id, ntitle, ncontent, notice_hits, notice_status, "
                + " mem_id1, to_char(notice_date, 'yyyy-mm-dd'), mem_id2, notice_updatedate from notice_table where notice_id=?";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, notice_id);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                vo.setNtitle(rs.getString(2));
                vo.setNotice_date(rs.getString(7));
                vo.setNotice_hits(rs.getInt(4));
                vo.setNcontent(rs.getString(3));
            }
            if (page.equals("content")) {
                updateHits(notice_id);
            } else {
                close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return vo;
    }

    /**
     * 조회수 업데이트
     */
    public void updateHits(String notice_id) {
        String sql = "update notice_table set notice_hits = notice_hits+1 where notice_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, notice_id);
            pstmt.executeUpdate();
            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * 공지사항 수정
     */
    public int update(NoticeVO vo) {
        int result = 0;
        String sql = "update notice_table set ntitle=?, ncontent=? where notice_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getNtitle());
            pstmt.setString(2, vo.getNcontent());
            pstmt.setString(3, vo.getNotice_id());

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    /**
     * 공지사항 삭제
     */
    public int delete(String notice_id) {
        int result = 0;
        String sql = "update notice_table set notice_status=1 where notice_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, notice_id);

            result = pstmt.executeUpdate();
            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;

    }

    /**
     * 공지사항 - 검색
     */
    public ArrayList<NoticeVO> getSearch(String searchField, String searchText) {
        ArrayList<NoticeVO> list = new ArrayList<NoticeVO>();
        String sql = "select rownum rno, notice_id, ntitle, ncontent, notice_hits, notice_status, "
                + " mem_id1, to_char(notice_date,'yyyy-mm-dd') notice_date, mem_id2, notice_updatedate from "
                + " (select notice_id, ntitle, ncontent, notice_hits, notice_status, "
                + " mem_id1, notice_date, mem_id2, notice_updatedate from notice_table where " + searchField.trim();
        try {
            if (searchText != null && !searchText.equals("")) {
                sql += " like '%" + searchText.trim() + "%' order by notice_date desc) where notice_status=0";
            }
            getPreparedStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                NoticeVO vo = new NoticeVO();
                vo.setRno(rs.getInt(1));
                vo.setNotice_id(rs.getString(2));
                vo.setNtitle(rs.getString(3));
                vo.setNcontent(rs.getString(4));
                vo.setNotice_hits(rs.getInt(5));
                vo.setNotice_status(rs.getInt(6));
                vo.setMem_id1(rs.getString(7));
                vo.setNotice_date(rs.getString(8));
                vo.setMem_id2(rs.getString(9));
                vo.setNotice_updatedate(rs.getString(10));

                list.add(vo);

            }
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

}
