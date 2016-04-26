package edu.cc.web;
import edu.cc.bean.jobBean;
import java.sql.*;

/*
 * 
 * Connected to mysql and load data
 * author:cc
*/
public class userRegist {
	private jobBean jobbean;
	private Connection con;
	private Statement stmt;
	
	public userRegist(){
	     String classname="com.mysql.jdbc.Driver";
	     String url="jdbc:mysql://localhost:3306/cc";
	     String username="root";
	     String password="123456";
	     try{
	    	 Class.forName(classname);
	    	 con=DriverManager.getConnection(url, username, password);
	    	 stmt=con.createStatement();
	     }
	     catch(Exception ex){
	    	 ex.printStackTrace();
	     }
	}
	
	public void setjobBean(jobBean jobbean){
		this.jobbean=jobbean;
	}
	
	public boolean hasExisted(){
		boolean result=false;
		String sql;
		if(jobbean.getJob().equals("student"))
			sql="select * from sinfo where username='" + jobbean.getUsername() + "';";
		else
			sql="select * from tinfo where username='" + jobbean.getUsername() + "';";
		try{
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next())
				result=true;
			else
				result=false;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			
		}
		return result;
	}
	
	public String regist(){
		String result=null;
		if(hasExisted()){
			result="no";
			return result;
		}
		String sql;
		if(jobbean.getJob().equals("student"))
			sql="insert into sinfo values('" + jobbean.getUsername() + "','" + jobbean.getPassword() + "');";
		else
			sql="insert into tinfo values('" + jobbean.getUsername() + "','" + jobbean.getPassword() + "');";
        try {
            stmt.execute(sql);
            result="ok";
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        finally{
        	
        }
        return result;
	}
}
