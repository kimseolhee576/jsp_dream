package com.dream.dao;

import java.util.ArrayList;

import com.dream.vo.reservVO;

public class reservDao extends DBConn {
    /**
     * insert(reserVO vo) : 예매정보 저장
     */
    public int insert(reservVO vo) {
        int result = 0;
        String sql = "insert into reserve_check "
                + " values('r_'||sequ_reserve_check_rid.nextval,'aaa',?,?,?,?,sysdate,?,?)";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getNum1());
            pstmt.setString(2, vo.getNum2());
            pstmt.setString(3, vo.getNum3());
            pstmt.setString(4, vo.getNum4());
            pstmt.setString(5, vo.getRdate());
            pstmt.setString(6, vo.getTotal());

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    /**
     * select(reserVO vo) : 예매정보 출력
     */
    /*
     * public checkVO c_select() { checkVO voo = new checkVO(); String sql =
     * "select iid, rdate, rss, rsb, rfs, rfb, total from(select * from reserve_check order by cdate desc) where rownum=1 "
     * ; getPreparedStatement(sql);
     * 
     * try { rs = pstmt.executeQuery(); while (rs.next()) {
     * voo.setRdate(rs.getString(2)); voo.setRss(rs.getString(3));
     * voo.setRsb(rs.getString(4)); voo.setRfs(rs.getString(5));
     * voo.setRfb(rs.getString(6)); voo.setTotal(rs.getString(7)); }
     * 
     * close();
     * 
     * } catch (Exception e) { e.printStackTrace(); }
     * 
     * return voo;
     * 
     * }
     */

    /**
     * mypage-예매내역확인(전체출력)
     * 
     * @return
     */
    public ArrayList<reservVO> select() {
        ArrayList<reservVO> list = new ArrayList<reservVO>();
        String sql = "select iid, rss, rsb, rfs, rfb, total, to_char(cdate,'\"\"YYYY\"년-\"MM\"월-\"DD\"일\"'), rdate from reserve_check order by cdate desc";
        getPreparedStatement(sql);

        try {
            rs = pstmt.executeQuery();
            while (rs.next()) {
                reservVO vo = new reservVO();
                vo.setIid(rs.getString(1));
                vo.setRss(rs.getString(2));
                vo.setRsb(rs.getString(3));
                vo.setRfs(rs.getString(4));
                vo.setRfb(rs.getString(5));
                vo.setTotal(rs.getString(6));
                vo.setCdate(rs.getString(7));
                vo.setRdate(rs.getString(8));

                list.add(vo);
            }

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    /**
     * delete(reserVO vo) : 예매정보 삭제
     */
    /*
     * public int delete() { int result = 0; String sql =
     * "delete reserve_check where cdate in" + " (select cdate from " +
     * " (select cdate from reserve_check order by cdate desc)where rownum=1)";
     * getPreparedStatement(sql);
     * 
     * try { result = pstmt.executeUpdate();
     * 
     * close(); } catch (Exception e) { e.printStackTrace(); }
     * 
     * return result; }
     */
}
