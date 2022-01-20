package com.dream.dao;

import com.dream.vo.MemberVO;

public class MemberDao extends DBConn {
    public int insert(MemberVO vo) {
        int result = 0;
        String sql = "insert into member_table values(?,?,?,?,?,?,?,sysdate,0)";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, vo.getMem_id());
            pstmt.setString(2, vo.getMem_pass());
            pstmt.setString(3, vo.getMem_name());
            pstmt.setInt(4, vo.getMem_birth());
            pstmt.setString(5, vo.getMem_email1());
            pstmt.setString(6, vo.getMem_email2());
            pstmt.setString(7, vo.getMem_hp());

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /*
     * 아이디 중복 체크
     */
    public int checkId(String id) {
        int idCheck = 0;
        String sql = "select * from member_table where mem_id=?";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, id);

            rs = pstmt.executeQuery();
            if (rs.next() || id.equals("")) {// 중복이있음 또는 빈문자열이 넘어왔을때
                idCheck = 0;
            } else {
                idCheck = 1; // 이 아이디 쓸수있음
            }
            // System.out.println("넘기는idCheck값 : " + idCheck);
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return idCheck;
    }

    /**
     * 엘리언니꺼 시작!!!!!!!!!!
     */
    /**
     * 로그인--입력받은 아이디, 비밀번호를 db와 비교
     */
    public int getLoginResult(MemberVO vo) {
        int result = 0;
        String sql = "select count(*) from member_table where mem_id=? and mem_pass=? and mem_status=0";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getMem_id());
            pstmt.setString(2, vo.getMem_pass());

            rs = pstmt.executeQuery();

            while (rs.next()) {
                result = rs.getInt(1);
            }

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 아이디 찾기--입력받은 이름, 핸드폰 번호를 db와 비교
     */
    public String getFindIdResult(MemberVO vo) {
        String result = null;
        String sql = "select rpad(substr(mem_id, 1, length(mem_id)-2), length(mem_id), '*') from member_table where mem_name=? and mem_hp=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getMem_name());
            pstmt.setString(2, vo.getMem_hp());

            rs = pstmt.executeQuery();

            while (rs.next()) {
                result = rs.getString(1);
            }

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    /**
     * 비번 찾기--입력받은 아이디, 이름, 생년월일, 핸드폰 번호를 db와 비교
     */
    public int getFindPwResult(MemberVO vo) {
        int result = 0;
        String sql = "select count(*) from member_table where mem_id=? and mem_name=? and mem_birth=? and mem_hp=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getMem_id());
            pstmt.setString(2, vo.getMem_name());
            pstmt.setInt(3, vo.getMem_birth());
            pstmt.setString(4, vo.getMem_hp());

            rs = pstmt.executeQuery();

            while (rs.next()) {
                result = rs.getInt(1);
            }

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    /**
     * 비번 새로 설정--입력받은 비밀번호를 db에 업데이트
     */
    public int setNewPassword(MemberVO vo, String mem_id) {
        int result = 0;
        String sql = "update member_table set mem_pass=? where mem_id='" + mem_id + "'";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getMem_pass());

            result = pstmt.executeUpdate();
            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

//    public int login(String ) {
//        int result = 0;
//        String sql = "select count(*) from member_table where mem_id=? and mem_pass=?";
//        getPreparedStatement(sql);
//
//        try {
//            pstmt.setString(1, vo.getMem_id());
//            pstmt.setString(2, vo.getMem_pass());
//
//            rs = pstmt.executeQuery();
//
//            while (rs.next()) {
//                result = rs.getInt(1);
//            }
//
//            close();
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        System.out.println(result);
//        return result;
//    }
    /**
     * infoUpdate - 내 정보 가져오기 / 작성자: 김설희
     */
    public MemberVO getInfo(String sid) {
        MemberVO vo = new MemberVO();
        String sql = "select mem_id, mem_pass, mem_name, mem_birth, mem_email1, mem_email2, mem_hp , mem_date, mem_status "
                + " from member_table where mem_id='" + sid + "'";
        // System.out.println(sql);
        getPreparedStatement(sql);
        try {
            rs = pstmt.executeQuery();
            if (rs.next()) {
                vo.setMem_id(rs.getString(1));
                vo.setMem_pass(rs.getString(2));
                vo.setMem_name(rs.getString(3));
                vo.setMem_birth(rs.getInt(4));
                vo.setMem_email1(rs.getString(5));
                vo.setMem_email2(rs.getString(6));
                vo.setMem_hp(rs.getString(7));
                vo.setMem_date(rs.getString(8));
                vo.setMem_status(rs.getInt(9));
            }
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return vo;
    }

    /**
     * 내정보수정 - 수정하기 / 작성자:김설희
     */
    public int infoUpdate(MemberVO vo) {
        int result = 0;
        String sql = " update member_table SET mem_pass=?, mem_email1=?, mem_email2=?, mem_hp=? where mem_id=?";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, vo.getMem_pass());
            pstmt.setString(2, vo.getMem_email1());
            pstmt.setString(3, vo.getMem_email2());
            pstmt.setString(4, vo.getMem_hp());
            pstmt.setString(5, vo.getMem_id());

            result = pstmt.executeUpdate();
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 회원탈퇴하기 / 작성자:김설희
     */
    public int status(String sid) {
        int result = 0;
        String sql = "update member_table set mem_status=1 where mem_id=?";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, sid);

            result = pstmt.executeUpdate();
            close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
