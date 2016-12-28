package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.ResultSet;

import DAL.Interface_userIpml;

/**
 * Servlet implementation class DSHoiDong
 */
@WebServlet("/DSHoiDong")
public class DSHoiDong extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Interface_userIpml DSHoiDong = new Interface_userIpml();       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DSHoiDong() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		ResultSet rs =null;
		rs = DSHoiDong.DsHoiDong();
		request.setAttribute("danhsac", rs);
		//gửi tất cả dữ liệu sang ataikhoan.jsp
		RequestDispatcher rd=request.getRequestDispatcher("/gv_ttHoiDong.jsp");
		rd.forward(request,response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
