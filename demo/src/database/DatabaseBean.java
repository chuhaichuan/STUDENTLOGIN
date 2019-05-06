package database;
import java.sql.*;

public class DatabaseBean {
	private Connection connection=null;
	private Statement statement=null;
	private ResultSet resultSet=null;
	public  DatabaseBean()
	{	
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/TestDB","root","123");
			statement=connection.createStatement();
		}catch (Exception e) {
			e.printStackTrace();          
			}   
	}
	public boolean logInUser(String userName,String userPassword)
	{
		boolean userExist=false;
		try
		{
			String strSql="select*from user where uID='"+userName+"'and uPS='"+userPassword+"'";
			resultSet=statement.executeQuery(strSql);
		
			if(resultSet.next())
			{
				userExist=true;
				connection.close();
			}
			return userExist;
		}catch(SQLException e)
		{
			e.printStackTrace();
			return false;
		}
	}
}