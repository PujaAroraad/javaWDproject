package p1;

import java.sql.Connection;
import java.sql.DriverManager;

public class Myconnection {
	Connection con=null;
	public static Connection mycon()
	{Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/atmnewdb","root","anu");
			con.setAutoCommit(false);
			System.out.println("db connected");
			
		}
		catch(Exception e)
		{
			System.out.println("driver loaded , but cannot connect to db");
			e.printStackTrace();
		}
		return con;
	}

}
