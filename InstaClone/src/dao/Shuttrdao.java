package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Shuttrdao{
	
	Connection con;
	
	public Shuttrdao() {
		
		try{  
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");    
			}catch(Exception e){ System.out.println(e);} 
		
	}
	
	public boolean addUser(String first, String last, String dob,String user, String pass) {
		
		try {
			PreparedStatement stmt=con.prepareStatement("insert into USERS(firstname,lastname,username,password) values(?,?,?,?)"); 
			stmt.setString(1,first);
			stmt.setString(2,last);
			//stmt.setString(3,dob);
			stmt.setString(3,user);
			stmt.setString(4,pass);
			int i=stmt.executeUpdate(); 
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	
	public boolean ajaxSearch(String user) {
		
		boolean ajaxResult = false;
		
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement("select * from USERS where username=?");
			stmt.setString(1,user);
			ResultSet rs=stmt.executeQuery(); 
			
			while(rs.next()) {
				
				ajaxResult = true;
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		
		
		return ajaxResult;
	}
	
	

}
