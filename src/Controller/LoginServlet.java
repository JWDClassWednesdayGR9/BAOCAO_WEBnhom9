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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Interface_userIpml DBlogin = new Interface_userIpml(); 
    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		String err="";
		if (username.equals("") || password.equals("")) {
			err += "Nhập thông tin đầy đủ";
		} 
		else
		{
			if (DBlogin.login(username, password) == false) 
			{
				err += "Tên đăng nhập hoặc mật khẩu không đúng";
			}

		}
		if (err.length() > 0) 
		{
			request.setAttribute("err", err);
		}
		String url = "/dangnhap.jsp";
		try {
			if (err.length() == 0) {
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				session.setAttribute("password", password);
			//	DBlogin.login(username, password);
				ResultSet rs =null;
				rs = DBlogin.kiemtraadmin(username);
				rs.next();
				int temp = Integer.parseInt(rs.getString(1)) ;
				System.out.println(temp);
				if (temp==1)
				{
					url = "/frmAdmin.jsp";
				}
					
				if(temp==2)
				{
					url = "/frmTruongkhoa.jsp";
				}
				if(temp==3)
				{
					url = "/frmGiangVien.jsp";
				}
				if(temp==4){
					url = "/frmSinhVien.jsp";
				}
					
			} else {

				url = "/dangnhap.jsp";
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);

			rd.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("/dangnhap.jsp");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
