package DAL;
import Model.user;

import java.io.Console;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

import DAL.*;

public class Interface_userIpml implements interfaces_User {
	public boolean login(String username, String password){
		Connection con =DBConnect.getConnect();
	//	System.out.println(username);
		String sql ="select * from tableuser where username='"+username+"' and password='"+password+"'";
		java.sql.PreparedStatement ps;
		try{
			ps = con.prepareStatement(sql);
			
			java.sql.ResultSet rs= ps.executeQuery(sql);
			if (rs.next()){
				System.out.println("Kiem Tra Dang Nhap:");
				System.out.println(rs.next());
				con.close();
				return true;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return false;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	
	
	
	@Override
	public ResultSet kiemtraadmin(String username) {
		Connection con =DBConnect.getConnect();
		
		String sql ="select quyen from tableuser where username='"+username+"'";
		Statement ps;
		ResultSet rs=null;
		try{
			ps =  con.prepareStatement(sql);
			rs= (ResultSet) ps.executeQuery(sql);
			return rs;
		}catch(SQLException e){
			e.printStackTrace();
		}
	
	return rs;
	}

	@Override
	public ResultSet DsDeTai() {
		Connection con = DBConnect.getConnect();
		String sql ="SELECT * FROM databaseweb.detai,databaseweb.kltn,databaseweb.giangvien,databaseweb.sinhvien where databaseweb.detai.maGV = databaseweb.kltn.tenGVHD and databaseweb.kltn.tenGVHD = databaseweb.giangvien.maGV and databaseweb.kltn.tenSVTH =databaseweb.sinhvien.maSV";
		Statement ps=null;
		ResultSet rs= null;
		try{
			ps =con.prepareStatement(sql);
			rs = (ResultSet) ps.executeQuery(sql);
			return rs;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;

	}
	public ResultSet LoadSapXep() {
		Connection con = DBConnect.getConnect();
		String sql ="SELECT * FROM databaseweb.dshoidong,databaseweb.giangvien where databaseweb.dshoidong.thanhvien = databaseweb.giangvien.maGV";
		Statement ps=null;
		ResultSet rs= null;
		try{
			ps =con.prepareStatement(sql);
			rs = (ResultSet) ps.executeQuery(sql);
			return rs;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;

	}
	public ResultSet ThongTinKhoaLuan() {
		Connection con = DBConnect.getConnect();
		String sql ="SELECT * FROM databaseweb.detai,databaseweb.kltn,databaseweb.giangvien,databaseweb.sinhvien where databaseweb.detai.maGV = databaseweb.kltn.tenGVHD and databaseweb.kltn.tenGVHD = databaseweb.giangvien.maGV and databaseweb.kltn.tenSVTH =databaseweb.sinhvien.maSV";
		Statement ps=null;
		ResultSet rs= null;
		try{
			ps =con.prepareStatement(sql);
			rs = (ResultSet) ps.executeQuery(sql);
			return rs;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;

	}
	public ResultSet ThongTinGiangVien() {
		Connection con = DBConnect.getConnect();
		String sql ="SELECT * FROM databaseweb.giangvien;";
		Statement ps=null;
		ResultSet rs= null;
		try{
			ps =con.prepareStatement(sql);
			rs = (ResultSet) ps.executeQuery(sql);
			return rs;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;

	}
	public ResultSet ThongTinHoiDong() {
		Connection con = DBConnect.getConnect();
		String sql ="SELECT * FROM databaseweb.dshoidong,databaseweb.detai where databaseweb.dshoidong.maDeTai =databaseweb.detai.maDT";
		Statement ps=null;
		ResultSet rs= null;
		try{
			ps =con.prepareStatement(sql);
			rs = (ResultSet) ps.executeQuery(sql);
			return rs;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;

	}
	@Override
	public ResultSet DsHoiDong() {
		
		Connection con= null;
		con = DBConnect.getConnect();
		String sql ="SELECT * FROM databaseweb.dshoidong,databaseweb.detai where databaseweb.dshoidong.maDeTai= databaseweb.detai.maDT";
		Statement ps=null;
		ResultSet rs= null;
		try{
			ps =con.prepareStatement(sql);
			rs = (ResultSet) ps.executeQuery(sql);
			return rs;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public ResultSet DsSinhVien() {
		Connection con= null;
		con = DBConnect.getConnect();
		String sql ="SELECT * FROM databaseweb.sinhvien;";
		Statement ps=null;
		ResultSet rs= null;
		try{
			ps =con.prepareStatement(sql);
			rs = (ResultSet) ps.executeQuery(sql);
			return rs;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;
	}

	@Override
	public boolean changepassword(String Username,String PassOld, String PassNew) {
		Connection con =DBConnect.getConnect();
		//	System.out.println(username);
			String sql ="select * from tableuser where username='"+Username+"' and password='"+PassOld+"'";
			java.sql.PreparedStatement ps;
			try{
				ps = con.prepareStatement(sql);
				
				java.sql.ResultSet rs= ps.executeQuery(sql);
				if (rs.next()){
					sql="";
					sql ="update tableuser set password='"+PassNew+"' where username='"+Username+"'";
					ps = con.prepareStatement(sql);
					int kq;
					kq= ps.executeUpdate(sql);
					con.close();
					return true;
				}
			}catch(SQLException e){
				e.printStackTrace();
			}
			return false;
	}

	public boolean ThemDT(String maDT,String tenDT,String chuyenNganh, String maGV,String maSV) {
		Connection con =DBConnect.getConnect();
		//	System.out.println(username);
			String sql ="INSERT INTO databaseweb.detai(tenDT,chuyenNganh,maGV) VALUES ('"+tenDT+"','"+chuyenNganh+"','"+maGV+"')";
			String sql1 ="INSERT INTO databaseweb.kltn(maKLTN,maDeTai,tenGVHD,tenSVTH) VALUES ('"+maDT+"','"+maDT+"','"+maGV+"','"+maSV+"')";
			java.sql.PreparedStatement ps;
			try{
				ps = con.prepareStatement(sql);
				int rs= ps.executeUpdate(sql);
				ps = con.prepareStatement(sql1);
				rs= ps.executeUpdate(sql1);
				return true;
				
			}catch(SQLException e){
				e.printStackTrace();
			}
			return false;
	}
	public int ThemGV(String maGV,String tenGV,String hocVi, String email,String soDT,String vaiTro,String donviCT,String boMon) {
		Connection con =DBConnect.getConnect();
		//	System.out.println(username);
			String sql ="INSERT INTO databaseweb.giangvien(maGV,tenGV,hocVi,email,soDT,vaiTro,donviCT,boMon) VALUES ('"+maGV+"','"+tenGV+"','"+hocVi+"','"+email+"','"+soDT+"','"+vaiTro+"','"+donviCT+"','"+boMon+"');";
			int rs=0;
			java.sql.PreparedStatement ps;
			try{
				ps = con.prepareStatement(sql);
				rs= ps.executeUpdate(sql);
				
				
				
			}catch(SQLException e){
				e.printStackTrace();
			}
			return rs;
	}
	public ResultSet DSTaiKhoan() {
		Connection con =DBConnect.getConnect();
		
		String sql ="SELECT * FROM databaseweb.tableuser";
		Statement ps;
		ResultSet rs=null;
		try{
			ps =  con.prepareStatement(sql);
			rs= (ResultSet) ps.executeQuery(sql);
			return rs;
		}catch(SQLException e){
			e.printStackTrace();
		}
	
	return rs;
	}
	public int ThemTaiKhoan(String username,String password,String quyen) {
		Connection con =DBConnect.getConnect();
		//	System.out.println(username);
			String sql ="INSERT INTO databaseweb.tableuser(username,password,quyen) VALUES ('"+username+"','"+password+"','"+quyen+"');";
			int rs=0;
			java.sql.PreparedStatement ps;
			try{
				ps = con.prepareStatement(sql);
				rs= ps.executeUpdate(sql);
				
				
				
			}catch(SQLException e){
				e.printStackTrace();
			}
			return rs;
	}
public ResultSet DsPhongTrong() {
		
		Connection con= null;
		con = DBConnect.getConnect();
		String sql ="SELECT * FROM databaseweb.dsphongtrong";
		Statement ps=null;
		ResultSet rs= null;
		try{
			ps =con.prepareStatement(sql);
			rs = (ResultSet) ps.executeQuery(sql);
			return rs;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;
	}
public int ThemPhongTrong(String tenPhong,String Ngay,String Gio) {
	Connection con =DBConnect.getConnect();
	//	System.out.println(username);
		String sql ="INSERT INTO databaseweb.dsphongtrong(tenPhong,Ngay,Gio) VALUES ('"+tenPhong+"','"+Ngay+"','"+Gio+"');";
		int rs=0;
		java.sql.PreparedStatement ps;
		try{
			ps = con.prepareStatement(sql);
			rs= ps.executeUpdate(sql);
			
			
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return rs;
}

}
