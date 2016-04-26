package edu.cc.web;
import java.sql.*;
import java.util.*;
public class databaseTest {
	private Connection con;
	private Statement stmt;
	public databaseTest(){
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
     
	public void regist() throws Exception{
		/*String sql="insert into tb_2 values(?,?)";
		try{
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1,"ccccc");
			pstmt.setString(2,"ccccc");
			pstmt.executeUpdate();
			System.out.println("ok");
		}
		catch(Exception ex){
			ex.printStackTrace();
		}*/
	}
    public void add(String name, String password) {
        String sql = "insert into tb_2 values('" + name + "','" + password + "');";
        try {
            stmt.execute(sql);
            System.out.println(" " + name + " " + password + "创建完毕");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void search(String name, String password) {
        String sql = "select * from tb_2 where username='" + name + "'and password='" + password + "';";
        String str = null;
        try {
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                str = "yes";
            } else {
                str = "no";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(" "+name+" "+password+"是否存在?"+str);
    }
    
    public void search1(String name, String password) {
        String sql = "select * from tb_2 where username='" + name + "';";
        String str = null;
        try {
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                str = "yes";
            } else {
                str = "no";
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(" "+name+" "+password+"是否存在?"+str);
    }

    public void modify(String name, String password) {
        String sql = "update login set password='" + password + "'where name='" + name + "';";
        try {
            stmt.executeUpdate(sql);
            System.out.println(" " + name + " " + password + "修改完毕");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete(String name) {
        String sql = "delete from login where name='" + name + "';";
        try {
            stmt.executeUpdate(sql);
            System.out.println(" " + name + "删除完毕");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
	public static void main(String[] args) throws Exception{
		new databaseTest().add("csc","ccxc");
	}
}
