package p2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

import common.dateformat;

import p1.Myconnection;

public class atmdao {

	PreparedStatement ps,ps1,ps2=null;
	ResultSet rs2,rs=null;
	Myconnection cn=null;
	public  ArrayList getuserdtl(Connection cn,String cardno,String pinno,String validtill){
		ArrayList ar=new ArrayList();
		try
		{
			ps=cn.prepareStatement("select cardno,pinno,valid_tillyear from atmcard where cardno='"+cardno+"'and pinno='"+pinno+"' and valid_tillyear='"+validtill+"'");
			rs=ps.executeQuery();
			if(rs.next())
			{
				ar.add(rs.getString(1));
				ar.add(rs.getString(2));
				ar.add(rs.getString(3));
				
			}
			else{
				cn.rollback();
			}
		}
		catch(SQLException e){
			System.out.println(e.getMessage());
			
		}return ar;
	}
	public ArrayList getaccd(Connection con,String card)
	{
		ArrayList ar=new ArrayList();
		try
		{
		ps=con.prepareStatement("select acc_type from atmcard where cardno='"+card+"'");
		rs=ps.executeQuery();
		if(rs.next()){
			ar.add(rs.getString(1));
		}
		}
		catch(SQLException e)
		{}
		return ar;
	}public int updatedtl(Connection con,String amount,String id){
		int st=0;
		try{
			ps=con.prepareStatement("update atmcard set amount='"+amount+"'where cardno='"+id+"'");
			st=ps.executeUpdate();
			if(st>0){
				con.commit();
				
			}else{
				con.rollback();
			}
				
		}catch(SQLException e){
			
		}return st;
	}
	public int updateatmdtl(Connection cn,String amount,String id)


	{
		int st=0;
		
		try
		{
			ps=cn.prepareStatement("update atmcard set amount='"+amount+"' where cardno='"+id+"'");
			st=ps.executeUpdate();
			if(st>0)
			{
				cn.commit();
			}else
			{
				cn.rollback();
			}
			
		}
		catch (SQLException e) {
			// TODO: handle exception
		}
		
		return st;
		
	}
	public String tid(Connection cn)
	{
		String st=null;
	int i=1;
	try{
		ps2=cn.prepareStatement("select * from transaction_id");
		rs2=ps2.executeQuery();
		while(rs2.next()){
			i++;
		}
		st="T_00"+String.valueOf(i);
		System.out.println(st);
	}catch(SQLException e)
	{
		System.out.println(e.getMessage());
	}return st;
		
	}
	public int insertdtl(Connection cn,String trans,String id,String type)


	{
		String date=null;
	Calendar dt = Calendar.getInstance();
	int yr=(dt.get(Calendar.DATE));
	int yr1=(dt.get(Calendar.MONTH));
	int yr2=(dt.get(Calendar.YEAR));
	String strd=String.valueOf(yr);
	String strd1=String.valueOf(yr1);
	String strd2=String.valueOf(yr2);
	String strd3=strd+"/"+strd1+"/"+strd2;
	 date=dateformat.getdateformat(strd3);
	 int st=0;
	 try{
		 ps1=cn.prepareStatement("insert into transaction_id(trans_id,accountno,trans_date,trans_type)values('"+trans+"','"+id+"','"+date+"','"+type+"')");
		 st=ps1.executeUpdate();
			if(st>0)
			{
				cn.commit();
			}else
			{
				cn.rollback();
			}
		 
	 }catch(SQLException e){
		 
	 }
			
	
	return st;
	}
	public int insertfunddtl(Connection cn,String trans,String id,String type)


	{
		int st1=0;
		String date=null;
	Calendar dt = Calendar.getInstance();
	int yr=(dt.get(Calendar.DATE));
	int yr1=(dt.get(Calendar.MONTH));
	int yr2=(dt.get(Calendar.YEAR));
	String strd=String.valueOf(yr);
	String strd1=String.valueOf(yr1);
	String strd2=String.valueOf(yr2);
	String strd3=strd+"/"+strd1+"/"+strd2;
	 date=dateformat.getdateformat(strd3);
			
		try
		{
			ps2=cn.prepareStatement("insert into transaction_id(trans_id,accountno,trans_date,trans_type) values('"+trans+"','"+id+"','"+date+"','"+type+"')");
			st1=ps2.executeUpdate();
			if(st1>0)
			{
				cn.commit();
			}else
			{
				cn.rollback();
			}
			
		}
		catch (SQLException e) {
			// TODO: handle exception
		}
		
		return st1;
		
	}
	public ArrayList gettrandtl(Connection cn,String cardno)
	{
		ArrayList ar=new ArrayList();
		try
		{
			
			ps=cn.prepareStatement("select cust_id,cardno,accountno,amount,acc_type from atmcard where cardno='"+cardno+"' ");
		rs=ps.executeQuery();
		if(rs.next())
		{
			 atmaccount obj=new atmaccount();
			 obj.setCustid(rs.getString(1));
			 obj.setCardno(rs.getString(2));
			 obj.setAccno(rs.getString(3));
			 obj.setAcctype(rs.getString(4));
			 obj.setAmount(rs.getString(5));
			 ar.add(obj);
		}
		}catch(Exception e)
		{
			
		}
		return ar;
	}



	
	}
	

