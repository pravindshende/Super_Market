package com;

import java.sql.*;
public class ConnectionDB {
	public Connection getDBConn()
	{
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/supermarketdb","root","Pravin@2698");
			System.out.println("Connected");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	public int insert(Model m)
	{
		int status=0;
		try {
			ConnectionDB db=new ConnectionDB();
			Connection con=db.getDBConn();
			String sql="Insert into supermarketdb.users(name,email,mobile,password) values(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,m.getName());
			ps.setString(2, m.getEmail());
			ps.setString(3, m.getMob());
			ps.setString(4, m.getPass());
			ps.executeUpdate();
			status=1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public int login2(Model m)
	{
		int status=0;
		try {
			ConnectionDB db=new ConnectionDB();
			Connection con=db.getDBConn();
			String sql="select * from supermarketdb.users where name=? and password=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,m.getName());
			ps.setString(2, m.getPass());
			ResultSet rs=ps.executeQuery();
			rs.next();
			status=rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	public int cart(Model m)
	{
		int status=0;
		try {
			ConnectionDB db=new ConnectionDB();
			Connection con=db.getDBConn();
			String sql="Insert into supermarketdb.cart(name,pname,pprice,qnt,pimage) values(?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,m.getName());
			ps.setString(2, m.getPname());
			ps.setInt(3, m.getPprice());
			ps.setInt(4, m.getQnt());
			ps.setString(5, m.getPimage());
			ps.executeUpdate();
			status=1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	public int pay(Model m)
	{
		int status=0;
		try {
			ConnectionDB db=new ConnectionDB();
			Connection con=db.getDBConn();
			String sql="Delete from supermarketdb.cart where name=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,m.getName());
			ps.executeUpdate();
			status=1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public int addProduct(Model m)
	{
		int status=0;
		try {
			ConnectionDB db=new ConnectionDB();
			Connection con=db.getDBConn();
			String sql="Insert into supermarketdb.products(pname,pprice,pimage) values(?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,m.getPname());
			ps.setInt(2,m.getPprice());
			ps.setString(3,m.getPimage());
			ps.executeUpdate();
			status=1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
	public int delete(Model m)
	{
		int status=0;
		try {
			ConnectionDB db=new ConnectionDB();
			Connection con=db.getDBConn();
			String sql="Delete from supermarketdb.products where pid=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,m.getId());
			ps.executeUpdate();
			status=1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
	
}
