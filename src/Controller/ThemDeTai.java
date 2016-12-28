package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAL.Interface_userIpml;

/**
 * Servlet implementation class ThemDeTai
 */
@WebServlet("/ThemDeTai")
public class ThemDeTai extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Interface_userIpml InsertData = new Interface_userIpml();    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemDeTai() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String maDT = request.getParameter("maDT");
		String tenDT = request.getParameter("tenDT");
		String maGV = request.getParameter("maGV");
		String maSV = request.getParameter("maSV");
		String chuyenNganh = request.getParameter("chuyenNganh");
		
	    
	    String err ="";
	    if(InsertData.ThemDT(maDT, tenDT, chuyenNganh, maGV, maSV)){
	    	err += "Insert Congrate!!";
	    }
	    else{
	    	err += "Insert False!!";
	    }
	    request.setAttribute("err", err);
		
		//gửi tất cả dữ liệu sang ataikhoan.jsp
		RequestDispatcher rd=request.getRequestDispatcher("/themdetai.jsp");
		rd.forward(request,response); 
	}

}
