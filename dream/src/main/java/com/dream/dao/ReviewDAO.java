package com.dream.dao;

import java.util.ArrayList;

import com.dream.vo.ReviewVO;

public class ReviewDAO extends DBConn {
    /**
     * 후기게시판 글쓰기
     */
    public int insert(ReviewVO vo, String sid) {
        int result = 0;
        String sql = "insert into review_table values('r_'||SEQU_REVIEW_TABLE.nextval,?,?,?,0,0, '" + sid
                + "', sysdate, '" + sid + "', sysdate)";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getReview_title()); // 제목
            pstmt.setString(2, vo.getReview_content()); // 내용
            pstmt.setInt(3, vo.getReview_star()); // 별점
            result = pstmt.executeUpdate();

            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 후기게시판 리스트 전체 출력
     */
    public ArrayList<ReviewVO> select() {
        ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
        String sql = "select rownum rno,review_id, review_title, review_content,review_star,review_hits,review_status, mem_id1, to_char(review_date,'yyyy-mm-dd') review_date , mem_id2, review_updatedate from (select rownum rno,review_id, review_title, review_content,review_star,review_hits,review_status, mem_id1, review_date, mem_id2, review_updatedate from\r\n"
                + "(select review_id, review_title, review_content,review_star,review_hits,review_status, mem_id1, review_date, mem_id2, review_updatedate from review_table order by review_date)) where review_status=0 order by rno desc";
        getPreparedStatement(sql);

        try {
            rs = pstmt.executeQuery();
            while (rs.next()) {
                ReviewVO vo = new ReviewVO();
                vo.setRno(rs.getInt(1));
                vo.setReview_id(rs.getString(2));
                vo.setReview_title(rs.getString(3));
                vo.setReview_content(rs.getString(4));
                vo.setReview_star(rs.getInt(5));
                vo.setReview_hits(rs.getInt(6));
                vo.setReview_status(rs.getInt(7));
                vo.setMem_id1(rs.getString(8));
                vo.setReview_date(rs.getString(9));
                vo.setMem_id2(rs.getString(10));
                vo.setReview_updatedate(rs.getString(11));

                list.add(vo);
            }
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 후기게시판 글 상세보기
     */
    public ReviewVO select(String review_id, String page) {
        ReviewVO vo = new ReviewVO();
        String sql = "select review_id, review_title, review_content,review_star,review_hits,review_status, mem_id1, to_char(review_date,'yyyy-mm-dd') review_date, mem_id2, review_updatedate"
                + " from review_table where review_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, review_id);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                vo.setReview_id(rs.getString(1));
                vo.setReview_title(rs.getString(2));
                vo.setReview_content(rs.getString(3));
                vo.setReview_star(rs.getInt(4));
                vo.setReview_hits(rs.getInt(5));
                vo.setReview_status(rs.getInt(6));
                vo.setMem_id1(rs.getString(7));
                vo.setReview_date(rs.getString(8));
                vo.setMem_id2(rs.getString(9));
                vo.setReview_updatedate(rs.getString(10));
            }

            if (page.equals("content")) {
                updateHits(review_id);
            } else {
                close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return vo;
    }

    /**
     * 후기 게시판-조회수 증가
     */
    public void updateHits(String review_id) {
        String sql = "update review_table set review_hits=review_hits+1 where review_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, review_id);
            pstmt.executeUpdate();
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 후기게시판-글 수정
     */
    public int update(ReviewVO vo, String sid) {
        int result = 0;
        String sql = "update review_table set review_title=?, review_content=?, review_star=?, mem_id2='" + sid
                + "', review_updatedate=sysdate  where review_id=?";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, vo.getReview_title());
            pstmt.setString(2, vo.getReview_content());
            pstmt.setInt(3, vo.getReview_star());
            pstmt.setString(4, vo.getReview_id());

            result = pstmt.executeUpdate();
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 후기게시판-글 삭제
     */
    public int delete(String review_id) {
        int result = 0;
        String sql = "update review_table set review_status=1 where review_id=?";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, review_id);

            result = pstmt.executeUpdate();
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 후기게시판-검색
     */
    public ArrayList<ReviewVO> getSearch(String searchField, String searchText) {
        ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
        String sql = "select rownum rno,review_id, review_title, review_content,review_star,review_hits,review_status, "
                + " mem_id1, to_char(review_date,'yyyy-mm-dd') review_date, mem_id2, review_updatedate from "
                + " (select review_id, review_title, review_content,review_star,review_hits,review_status, "
                + " mem_id1, review_date, mem_id2, review_updatedate from review_table where " + searchField.trim();

        try {
            if (searchText != null && !searchText.equals("")) {
                sql += " like '%" + searchText.trim() + "%' order by review_date desc) where review_status=0";
            }
            getPreparedStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                ReviewVO vo = new ReviewVO();
                vo.setRno(rs.getInt(1));
                vo.setReview_id(rs.getString(2));
                vo.setReview_title(rs.getString(3));
                vo.setReview_content(rs.getString(4));
                vo.setReview_star(rs.getInt(5));
                vo.setReview_hits(rs.getInt(6));
                vo.setReview_status(rs.getInt(7));
                vo.setMem_id1(rs.getString(8));
                vo.setReview_date(rs.getString(9));
                vo.setMem_id2(rs.getString(10));
                vo.setReview_updatedate(rs.getString(11));

                list.add(vo);
            }
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
