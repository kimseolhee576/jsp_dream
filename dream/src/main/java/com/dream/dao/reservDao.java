package com.dream.dao;

import java.util.ArrayList;

import com.dream.vo.reservVO;

public class reservDao extends DBConn {
    /**
     * insert(reservVO vo) : 예매정보 저장
     */
    public int insert(String sid, reservVO vo) {
        int result = 0;
        String sql = "insert into reserv_check values('r_'||sequ_reserv_check.nextval,'" + sid
                + "',?,?,?,?,sysdate,?,?)";
        getPreparedStatement(sql);

        try {

            pstmt.setString(1, vo.getReserv_ss());
            pstmt.setString(2, vo.getReserv_sb());
            pstmt.setString(3, vo.getReserv_fs());
            pstmt.setString(4, vo.getReserv_fb());
            pstmt.setString(5, vo.getReserv_dday());
            pstmt.setString(6, vo.getReserv_total());

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
    public ArrayList<reservVO> select(String sid) {
        ArrayList<reservVO> list = new ArrayList<reservVO>();
        String sql = "select mem_id, reserv_ss, reserv_sb, reserv_fs, reserv_fb, reserv_total,"
                + " to_char(reserv_date,'YYYY\"년\"\"-\"MM\"월\"-\"\"DD\"일\"'), reserv_dday"
                + " from reserv_check where Mem_id='" + sid + "' order by reserv_date desc";
        getPreparedStatement(sql);

        try {

            rs = pstmt.executeQuery();
            while (rs.next()) {
                reservVO vo = new reservVO();
                vo.setMem_id(rs.getString(1));
                vo.setReserv_ss(rs.getString(2));
                vo.setReserv_sb(rs.getString(3));
                vo.setReserv_fs(rs.getString(4));
                vo.setReserv_fb(rs.getString(5));
                vo.setReserv_total(rs.getString(6));
                vo.setReserv_date(rs.getString(7));
                vo.setReserv_dday(rs.getString(8));

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
