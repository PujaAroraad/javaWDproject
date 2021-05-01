/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.yourcompany.struts.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import p1.Myconnection;
import p2.atmdao;

import com.yourcompany.struts.form.FundtransferForm;

/** 
 * MyEclipse Struts
 * Creation date: 07-25-2019
 * 
 * XDoclet definition:
 * @struts.action path="/fundtransfer" name="fundtransferForm" input="/form/fundtransfer.jsp" scope="request" validate="true"
 */
public class FundtransferAction extends Action {
	PreparedStatement ps1=null;
	ResultSet rs1=null;
	Myconnection cn=null;
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		FundtransferForm ft = (FundtransferForm) form;// TODO Auto-generated method stub
		Connection cn=Myconnection.mycon();
		atmdao obj1=new atmdao();
		HttpSession session1=request.getSession();
		String st5=(String)session1.getAttribute("cardno");
		try
		{
			
			
			ps1=cn.prepareStatement("select amount from atmcard where cardno='"+st5+"'");
		
		rs1=ps1.executeQuery();	
		
		if(rs1.next())
		{
			String st1=rs1.getString(1);
			System.out.println(st1);
			int amount=Integer.parseInt(st1);
			System.out.println(amount);
			String st2=ft.getTxtamount();
			int amount1=Integer.parseInt(st2);
			System.out.println(amount1);
			if(amount1<=amount)
			{
				int a=amount-amount1;
				String st3=String.valueOf(a);
				System.out.println(st3);
				int st4=obj1.updateatmdtl(cn,st3,st5);
				if(st4>0)
				{
					String str=obj1.tid(cn);
					int str1=obj1.insertfunddtl(cn,str,st5,"fund transfer");
					if(str1>0)
					{
						System.out.println("inserted");	
					}
					request.setAttribute("ms2", "Fund Transfered to Account No......."+ft.getTxtaccount());
					
					
					
				}
				
				}else
				{
					request.setAttribute("ms2", "Fund not available in Account No......."+ft.getTxtaccount());	
				}
			}		
				
		}catch(Exception e)
		{
			
		}			
	
		
		return mapping.getInputForward();
	}

	}