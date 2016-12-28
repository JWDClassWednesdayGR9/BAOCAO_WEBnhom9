package DAL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnect {
	public static Connection conn;
	public static Connection getConnect()
	{
		Connection cons =null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			cons= DriverManager.getConnection("jdbc:mysql://localhost:3306/databaseweb","root","");
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return cons;
	}
	// Use for Get data from database.//Select,view...
	public ResultSet GetData(String sql) throws SQLException {
		ResultSet rs = null;
		openconnect();
		Statement st= conn.createStatement();;
		try {
			rs = st.executeQuery(sql);
			
			return rs;
		} catch (Exception e) {
			System.out.println(e);}
		return rs;	
		// TODO Auto-generated method stub
		
	}
	//Execute Update,insert,delete.
	public int Update(String sql) throws Exception {		
		int kq=0;
		openconnect();
		Statement st=conn.createStatement();
		try {
			kq=st.executeUpdate(sql);
		} catch (Exception e) {
			System.out.println(e);}
		finally
		{
			closeconnection();
		}
		return kq;		
	}
	
	private void openconnect() throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection( "jdbc:mysql://localhost:3306/databaseweb","root","");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		
		// TODO Auto-generated method stub
		
	}
	
	private void closeconnection() throws SQLException {
		
			if(conn!=null && !conn.isClosed()) conn.close();
		
		// TODO Auto-generated method stub
		
	}
}
