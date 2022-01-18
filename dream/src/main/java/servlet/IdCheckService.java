package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dream.dao.MemberDao;

/**
 * Servlet implementation class IdCheckService
 */
@WebServlet("/IdCheckService")
public class IdCheckService extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdCheckService() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        // ajax로 값을 받기 때문에 UTF-8로 인코딩해준다
        response.setCharacterEncoding("UTF-8");
        // System.out.println("Servlet의 doPost실행");

        String userId = request.getParameter("userId");
        // join.jsp에서 받아온 key값이 userId이고
        // value값은 유저가 실제로 적은 값, String userId에는 value값이 들어간다.
        // System.out.println("Servlet에서 찍은 userId : " + userId);
        PrintWriter out = response.getWriter();

        MemberDao dao = new MemberDao();

        int idChcek = dao.checkId(userId);

        // 성공여부 확인 : 개발자용
        // if (idChcek == 0) {
        // System.out.println("이미 존재하는 아이디입니다.");
        // } else if (idChcek == 1) {
        // System.out.println("사용 가능한 아이디입니다.");
        // }

        out.write(idChcek + ""); // --> ajax 결과값인 result가 됨
        // --> String으로 값을 내보낼 수 있도록 + "" 를 해준다
    }

}
