package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.ResultSet;

import DAL.Interface_userIpml;

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Interface_userIpml UpdatePass = new Interface_userIpml();     
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String PassOld = request.getParameter("PassOld");
		String PassNew = request.getParameter("PassNew");
		String username=null;
	    try{
	    	HttpSession session = request.getSession(false);
			username = session.getAttribute("username").toString();
	    }catch (Exception e) {
	    	e.printStackTrace();
	    	response.sendRedirect("dangnhap.jsp");
	    }
	    String err ="";
	    if(UpdatePass.changepassword(username, PassOld, PassNew)){
	    	err += "Mật khẩu Update Congrate!!";
	    }
	    else{
	    	err += "PassWord Old False!!";
	    }
	    request.setAttribute("err", err);
		
		//gửi tất cả dữ liệu sang ataikhoan.jsp
		RequestDispatcher rd=request.getRequestDispatcher("/doimatkhau.jsp");
		rd.forward(request,response); 
	}

}
