package com.dream.dao;

import java.util.ArrayList;

import com.dream.vo.CommVO;

public class CommDAO extends DBConn {

    /**
     * qna_content.jsp 페이지에서 해당 글의 댓글목록 조회
     */
    public ArrayList<CommVO> getList(int qna_id) {
        ArrayList<CommVO> list = new ArrayList<CommVO>();
        String sql = "select * from comm_table where qna_id=? and comm_status=0 order by comm_id";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, qna_id);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                CommVO vo = new CommVO();
                vo.setComm_id(rs.getInt(1));
                vo.setQna_id(rs.getInt(2));
                vo.setComm_content(rs.getString(3));
                vo.setMem_id1(rs.getString(4));
                vo.setComm_date(rs.getString(5));
                vo.setMem_id2(rs.getString(6));
                vo.setComm_updatedate(rs.getString(7));
                vo.setComm_status(rs.getInt(8));

                list.add(vo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * comm_edit.jsp 페이지에서 해당 글의 해당 댓글정보 조회
     */
    public CommVO getComment(int qna_id, int comm_id) {
        String sql = "select * from comm_table where qna_id=? and comm_id=? and comm_status=0";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, qna_id);
            pstmt.setInt(2, comm_id);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                CommVO vo = new CommVO();
                vo.setComm_id(rs.getInt(1));
                vo.setQna_id(rs.getInt(2));
                vo.setComm_content(rs.getString(3));
                vo.setMem_id1(rs.getString(4));
                vo.setComm_date(rs.getString(5));
                vo.setMem_id2(rs.getString(6));
                vo.setComm_updatedate(rs.getString(7));
                vo.setComm_status(rs.getInt(8));
                return vo;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 입력한 댓글 데이터 db에 등록
     */
    public int writeC(CommVO vo) {
        int result = 0;
        String sql = "insert into comm_table values(sequ_comm_table.nextval, ?, ?, ?, sysdate, ?, sysdate, 0)";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, vo.getQna_id());
            pstmt.setString(2, vo.getComm_content());
            pstmt.setString(3, vo.getMem_id1());
            pstmt.setString(4, vo.getMem_id1());

            result = pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    /**
     * 수정한 댓글 데이터 db에 등록
     */
    public int updateC(CommVO vo) {
        int result = 0;
        String sql = "update comm_table set comm_content=?, mem_id2=?, comm_updatedate=sysdate  where comm_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getComm_content());
            pstmt.setString(2, vo.getMem_id2());
            pstmt.setInt(3, vo.getComm_id());

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    /**
     * 삭제한 댓글 데이터 db에 등록
     */
    public int deleteC(int comm_id) {
        int result = 0;
        String sql = "update comm_table set comm_status=1 where comm_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, comm_id);

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

}
