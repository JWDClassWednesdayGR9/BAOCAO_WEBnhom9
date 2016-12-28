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
 * Servlet implementation class ThemGV
 */
@WebServlet("/ThemGV")
public class ThemGV extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Interface_userIpml InsertData = new Interface_userIpml();    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemGV() {
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
		String maGV = request.getParameter("maGV");
		String tenGV = request.getParameter("tenGV");
		String hocVi = request.getParameter("hocVi");
		String email = request.getParameter("email");
		String soDT = request.getParameter("SDT");
		String vaiTro = request.getParameter("vaiTro");
		String donviCT = request.getParameter("donviCT");
		String boMon = request.getParameter("boMon");
		
	    
	    String err ="";
	    if(maGV.equals("")|| tenGV.equals("")|| hocVi.equals("") || email.equals("") || soDT.equals("")||vaiTro.equals("")||donviCT.equals("")||boMon.equals("")){
	    	err+="Input Full Information";
	    }
	    else{
	    	if(InsertData.ThemGV(maGV, tenGV, hocVi, email, soDT, vaiTro, donviCT, boMon)>0){
		    	err += "Insert Congrate!!";
		    }
		    else{
		    	err += "Insert False!!";
		    }
	    }
	    
	    request.setAttribute("err", err);
		
		//gửi tất cả dữ liệu sang ataikhoan.jsp
		RequestDispatcher rd=request.getRequestDispatcher("/trk_themgiangvien.jsp");
		rd.include(request,response); 
	}

}
