package com.dream.dao;

import java.util.ArrayList;

import com.dream.vo.CommVO;

public class CommDAO extends DBConn {

    /**
     * qna_content.jsp 페이지에서 해당 글의 댓글목록 조회
     */
    public ArrayList<CommVO> getList(int qna_id) {
        ArrayList<CommVO> list = new ArrayList<CommVO>();
        String sql = "select * from comm_table where qna_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, qna_id);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                CommVO vo = new CommVO();
                vo.setComm_id(rs.getInt(1));
                vo.setQna_id(rs.getInt(2));
                vo.setMem_id1(rs.getString(3));
                vo.setComm_content(rs.getString(4));
                vo.setComm_date(rs.getString(5));

                list.add(vo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 입력한 댓글 데이터 db에 등록
     */
    public int writeC(CommVO vo) {
        int result = 0;
        String sql = "insert into comm_table values(sequ_comm_table.nextval, ?, ?, ?, sysdate)";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, vo.getQna_id());
            pstmt.setString(2, vo.getComm_content());
            pstmt.setString(3, vo.getMem_id1());

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

}
