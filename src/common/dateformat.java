package common;
import java.util.*;
public class dateformat {
	public static String getdateformat(String dt)
{
	//String formatdate=null;
	
	String vl=null;
	if(!dt.equals(""))
	{
	 String dd = dt.substring(0,dt.indexOf("/"));
     String mm = dt.substring(dt.indexOf("/") + 1, dt.lastIndexOf("/"));
     String yy = dt.substring(dt.lastIndexOf("/")+1,dt.length());
     vl = yy + "/"+ mm + "/" + dd;
	}
    return vl;
}

}
