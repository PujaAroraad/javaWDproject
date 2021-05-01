package p2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;




public class fillddd {
	PreparedStatement ps=null;
	ResultSet rs=null;
	Connection  con=null;
	 public ArrayList fillddvalid(Connection con){
		 ArrayList ar=new ArrayList();
		 try{
			 ps=con.prepareStatement("select * from ddvalid");
			 rs=ps.executeQuery();
			 while(rs.next())
				{
					 filldd obj=new filldd();
					 obj.setVal(rs.getString(3));
					 obj.setDisplay(rs.getString(2));
					 
					 ar.add(obj);
				}
				}catch(Exception e)
				{
				System.out.println(e.getMessage());	
				}
				return ar;
		 }
		 
	 }
	 
	 
	


