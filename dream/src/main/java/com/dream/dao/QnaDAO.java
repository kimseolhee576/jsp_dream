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
                + " to_char(qna_date,'yyyy-mm-dd') qna_date, mem_id2, qna_updatedate, comm_count "
                + " from (select * from qna_table where qna_status=0 order by qna_date desc)";
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
                vo.setComm_count(rs.getInt(10));

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
        String sql = "select qna_id, qna_title, qna_content, qna_hits, qna_status, "
                + " mem_id1, to_char(qna_date,'yyyy-mm-dd') qna_date, mem_id2, "
                + " qna_updatedate, comm_count from qna_table where qna_id=? and qna_status=0";
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
                vo.setMem_id2(rs.getString(8));
                vo.setQna_updatedate(rs.getString(9));
                vo.setComm_count(rs.getInt(10));
                addHits(qna_id);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return vo;
    }

    /**
     * 글 상세보기로 들어갔을 때 조회수 1 올라가기
     */
    public void addHits(int qna_id) {
        String sql = "update qna_table set qna_hits=qna_hits+1 where qna_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, qna_id);
            pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 글 수정 혹은 댓글 작성,수정,삭제했을 때 조회수 1 빼기
     */
    public void subtractHits(int qna_id) {
        String sql = "update qna_table set qna_hits=qna_hits-1 where qna_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, qna_id);
            pstmt.executeUpdate();

//            close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 댓글 작성시 댓글수 1 올라가기
     */
    public void addCommCount(int qna_id) {
        String sql = "update qna_table set comm_count=comm_count+1 where qna_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, qna_id);
            pstmt.executeUpdate();

//            close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 댓글 삭제시 댓글수 1 빼기
     */
    public void subtractCommCount(int qna_id) {
        String sql = "update qna_table set comm_count=comm_count-1 where qna_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, qna_id);
            pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * QnA 목록에서 전체 게시글 리스트 조회(+ 페이지 처리)
     */
    public ArrayList<QnaVO> getList(int pageNo) {

        int start = ((pageNo - 1) * 10) + 1;
        int end = pageNo * 10;

        ArrayList<QnaVO> list = new ArrayList<QnaVO>();
        String sql = "select * from qna_view where num between ? and ?";
//        String sql = "select * from (select rownum num, q.* from "
//                + " (select * from qna_table where qna_status=0 order by qna_date desc) q) "
//                + " where num between ? and ?"; //혹시 몰라 남겨두고 주석. 이렇게 해도 되는데 view가 더 편리

        System.out.println(sql);
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, start);
            pstmt.setInt(2, end);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                QnaVO vo = new QnaVO();
                System.out.println(rs.getInt(2));
                System.out.println(rs.getInt(1));

                vo.setQna_id(rs.getInt(2));
                vo.setQna_title(rs.getString(3));
                vo.setQna_content(rs.getString(4));
                vo.setQna_hits(rs.getInt(5));
                vo.setQna_status(rs.getInt(6));
                vo.setMem_id1(rs.getString(7));
                vo.setQna_date(rs.getString(8));
                vo.setMem_id2(rs.getString(9));
                vo.setQna_updatedate(rs.getString(10));
                vo.setComm_count(rs.getInt(11));

                list.add(vo);
            }
//         close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * QnA 목록: 다음 페이지 존재 여부 확인
     */
    public boolean nextPage(int pageNo) {
        String sql = "select * from qna_table where qna_id<? and qna_status=0";
        getPreparedStatement(sql);

        try {
            pstmt.setInt(1, getNext() - (pageNo - 1) * 10);

            rs = pstmt.executeQuery();

            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * 다음 글 번호 가져오기
     */
    public int getNext() {
        String sql = "select qna_id from qna_table order by qna_date desc";
        try {
            getPreparedStatement(sql);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                return rs.getInt(1) + 1; // 다음 글 번호
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 1;
    }
//
//    /**
//     * QnA 목록에서 전체 게시글 리스트 조회(+ 페이지 처리)
//     */
//    public ArrayList<QnaVO> getList(int pageNo) {
//        ArrayList<QnaVO> list = new ArrayList<QnaVO>();
//        String sql = "select qna_id, qna_title, qna_content, qna_hits, qna_status, mem_id1, "
//                + "to_char(qna_date,'yyyy-mm-dd') qna_date, mem_id2, qna_updatedate, comm_count from "
//                + "(select * from qna_table where qna_id<? and qna_status=0 and rownum<=10 order by qna_id desc)";
//        getPreparedStatement(sql);
//
//        try {
//            pstmt.setInt(1, getNext() - (pageNo - 1) * 10); // (pageNo-1)*10 = 출력페이지 시작행. 10은 한페이지 출력 개수
//            rs = pstmt.executeQuery();
//
//            while (rs.next()) {
//                QnaVO vo = new QnaVO();
//
//                vo.setQna_id(rs.getInt(1));
//                vo.setQna_title(rs.getString(2));
//                vo.setQna_content(rs.getString(3));
//                vo.setQna_hits(rs.getInt(4));
//                vo.setQna_status(rs.getInt(5));
//                vo.setMem_id1(rs.getString(6));
//                vo.setQna_date(rs.getString(7));
//                vo.setMem_id2(rs.getString(8));
//                vo.setQna_updatedate(rs.getString(9));
//                vo.setComm_count(rs.getInt(10));
//
//                list.add(vo);
//            }
////            close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
//
//    /**
//     * QnA 목록: 다음 페이지 존재 여부 확인
//     */
//    public boolean nextPage(int pageNo) {
//        String sql = "select * from qna_table where qna_id<? and qna_status=0";
//        getPreparedStatement(sql);
//
//        try {
//            pstmt.setInt(1, getNext() - (pageNo - 1) * 10);
//
//            rs = pstmt.executeQuery();
//
//            while (rs.next()) {
//                return true;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return false;
//    }

//    /**
//     * QnA 목록에서 전체 게시글 리스트 조회(+ 페이지 처리)
//     */
//    public ArrayList<QnaVO> getList2(int pageNumber) {
//        String sql = "select * from qna_table where rownum <= 10 and qna_status = 0 order by qna_id desc";
//        ArrayList<QnaVO> list = new ArrayList<QnaVO>();
//
//        try {
//            getPreparedStatement(sql);
//            pstmt.setInt(1, -(pageNumber - 1) * 10); // getNext() 대신 (vo.getQna_id()+1) 이렇게 넣었음
//            rs = pstmt.executeQuery();
//            while (rs.next()) {
//                QnaVO vo = new QnaVO();
//                vo.setQna_id(1);
//                vo.setQna_title(rs.getString(2));
//                vo.setQna_content(rs.getString(3));
//                vo.setQna_hits(rs.getInt(4));
//                vo.setQna_status(rs.getInt(5));
//                vo.setMem_id1(rs.getString(6));
//                vo.setQna_date(rs.getString(7));
//                vo.setMem_id2(rs.getString(8));
//                vo.setQna_updatedate(rs.getString(9));
//
//                list.add(vo);
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
//
//    /**
//     * QnA 목록: 다음 페이지 존재 여부 확인
//     */
//    public boolean nextPage(int pageNumber) {
//        QnaVO vo = new QnaVO();
//        String sql = "select * from qna_table where qna_id < ? and qna_status = 0 order by qna_id desc";
//        getPreparedStatement(sql);
//
//        try {
//            pstmt.setInt(1, (vo.getQna_id() + 1) - (pageNumber - 1) * 10); // getNext() 대신 (vo.getQna_id()+1) 이렇게 넣었음
//            rs = pstmt.executeQuery();
//
//            if (rs.next()) {
//                return true;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return false;
//    }

    /**
     * 문의글 작성한 내용 db에 등록
     */
    public int writeQ(QnaVO vo) {
        int result = 0;
        String sql = "insert into qna_table values(sequ_qna_table.nextval, ?, ?, 0, 0, ?, sysdate, ?, sysdate, 0)";
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

    /**
     * 수정한 문의글 데이터 db에 등록
     */
    public int updateQ(QnaVO vo) {
        int result = 0;
        String sql = "update qna_table set qna_title=?, qna_content=?, mem_id2=?, qna_updatedate=sysdate  where qna_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getQna_title());
            pstmt.setString(2, vo.getQna_content());
            pstmt.setString(3, vo.getMem_id2());
            pstmt.setInt(4, vo.getQna_id());

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 삭제한 문의글 데이터 db에 등록
     */
    public int deleteQ(String qna_id) {
        int result = 0;
        String sql = "update qna_table set qna_status=1 where qna_id=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, qna_id);

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 문의게시판 리스트 검색
     */
    public ArrayList<QnaVO> getSearch(String searchField, String searchText) {
        ArrayList<QnaVO> list = new ArrayList<QnaVO>();
        String sql = "select qna_id, qna_title, qna_content, qna_hits, qna_status, "
                + " mem_id1, to_char(qna_date,'yyyy-mm-dd') qna_date, mem_id2, qna_updatedate, comm_count from "
                + " (select qna_id, qna_title, qna_content, qna_hits, qna_status, "
                + " mem_id1, qna_date, mem_id2, qna_updatedate, comm_count from qna_table where " + searchField.trim();

        try {
            if (searchText != null && !searchText.equals("")) {
                sql += " like '%" + searchText.trim() + "%' order by qna_date desc) where qna_status=0";
            }
            getPreparedStatement(sql);
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
                vo.setComm_count(rs.getInt(10));

                System.out.println(vo.getQna_id());
                list.add(vo);
            }
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

}
