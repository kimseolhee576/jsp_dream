package com.dream.dao;

import java.util.ArrayList;

import com.dream.vo.QnaVO;

public class QnaDAO extends DBConn {

    /**
     * QnA 목록에서 전체 게시글 리스트 조회
     */
    public ArrayList<QnaVO> getList() {
        ArrayList<QnaVO> list = new ArrayList<QnaVO>();
        String sql = "select qna_id, qna_title, qna_content, qna_hits, qna_status, mem_id1, "
                + " to_char(qna_date,'yyyy-mm-dd') qna_date, mem_id2, qna_updatedate "
                + " from (select * from qna_table order by qna_date desc)";
        getPreparedStatement(sql);

        try {
            rs = pstmt.executeQuery();
            while (rs.next()) {
                QnaVO vo = new QnaVO();
                vo.setQna_id(rs.getInt(1));
                vo.setQna_title(rs.getString(2));
                vo.setQna_content(rs.getString(3));
                vo.setQna_hits(rs.getInt(4));
                vo.setQna_status(rs.getInt(5));
                vo.setMem_id1(rs.getString(6));
                vo.setQna_date(rs.getString(7));
                vo.setMem_id2(rs.getString(8));
                vo.setQna_updatedate(rs.getString(9));

                list.add(vo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 목록 화면에서 글제목을 눌렀을 때 상세 페이지
     */
    public QnaVO getQnaVO(int qna_id) {
        QnaVO vo = new QnaVO();
        String sql = "select * from qna_table where qna_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, qna_id);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                vo.setQna_id(rs.getInt(1));
                vo.setQna_title(rs.getString(2));
                vo.setQna_content(rs.getString(3));
                vo.setQna_hits(rs.getInt(4));
                vo.setQna_status(rs.getInt(5));
                vo.setMem_id1(rs.getString(6));
                vo.setQna_date(rs.getString(7));
                return vo;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    /**
     * QnA 목록에서 전체 게시글 리스트 조회(+ 페이지 처리)
     */
    public ArrayList<QnaVO> getList(int pageNumber) {
        String sql = "select * from qna_table where rownum <= 10 and qna_status = 0 order by qna_id desc";
        ArrayList<QnaVO> list = new ArrayList<QnaVO>();

        try {
            getPreparedStatement(sql);
            pstmt.setInt(1, -(pageNumber - 1) * 10); // getNext() 대신 (vo.getQna_id()+1) 이렇게 넣었음
            rs = pstmt.executeQuery();
            while (rs.next()) {
                QnaVO vo = new QnaVO();
                vo.setQna_id(1);
                vo.setQna_title(rs.getString(2));
                vo.setQna_content(rs.getString(3));
                vo.setQna_hits(rs.getInt(4));
                vo.setQna_status(rs.getInt(5));
                vo.setMem_id1(rs.getString(6));
                vo.setQna_date(rs.getString(7));
                vo.setMem_id2(rs.getString(8));
                vo.setQna_updatedate(rs.getString(9));

                list.add(vo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * QnA 목록: 다음 페이지 존재 여부 확인
     */
    public boolean nextPage(int pageNumber) {
        QnaVO vo = new QnaVO();
        String sql = "select * from qna_table where qna_id < ? and qna_status = 0 order by qna_id desc";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, (vo.getQna_id() + 1) - (pageNumber - 1) * 10); // getNext() 대신 (vo.getQna_id()+1) 이렇게 넣었음
            rs = pstmt.executeQuery();

            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * 문의글 작성한 내용 db에 등록
     */
    public int writeQ(QnaVO vo) {
        int result = 0;
        String sql = "insert into qna_table values(sequ_qna_table.nextval, ?, ?, 0, 0, ?, sysdate, ?, sysdate)";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getQna_title());
            pstmt.setString(2, vo.getQna_content());
            pstmt.setString(3, vo.getMem_id1());
            pstmt.setString(4, vo.getMem_id1());

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

}
