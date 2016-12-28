package DAL;
import java.sql.ResultSet;

import Model.*;

public interface interfaces_User {
	public boolean login(String username,String password);
	public ResultSet kiemtraadmin(String username);
	public ResultSet DsDeTai();
	public ResultSet DsHoiDong();
	public ResultSet DsSinhVien();
	public boolean changepassword(String Username,String PassOld,String PassNew);
}
