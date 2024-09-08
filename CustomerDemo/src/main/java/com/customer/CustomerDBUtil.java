package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String email, String password){
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where email='"+email+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	public static List<Customer> getCustomer(String email){
		
		ArrayList<Customer> customer = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where email='"+email+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String address = rs.getString(3);
				String phone = rs.getString(4);
				String nic = rs.getString(5);
				String emailU = rs.getString(6);
				String gender = rs.getString(7);
				String password = rs.getString(8);
				
				Customer cus = new Customer(id, name, address, phone, nic, emailU, gender, password);
				customer.add(cus);	
			}
		}
		catch (Exception e) {
			
		}
		return customer;
	}


	public static boolean insertcustomer(String name, String address, String phone,String nic,String email,String gender,String pass) {
	
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into customer values (0,'"+name+"','"+address+"','"+phone+"','"+nic+"','"+email+"','"+gender+"','"+pass+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return isSuccess;
	}
	
	public static boolean updatecustomer(String id, String name, String address, String phone,String nic,String email,String gender,String pass) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update customer set name ='"+name+"',address='"+address+"',phone='"+phone+"',nic='"+nic+"',email='"+email+"',gender='"+gender+"',password='"+pass+"'"
					+ "where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	} 	
	
	public static List<Customer> getCustomerDetails(String Id) {
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	ArrayList<Customer> cus = new ArrayList<>();
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from customer where id='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
				String address = rs.getString(3);
				String phone = rs.getString(4);
				String nic = rs.getString(5);
				String email = rs.getString(6);
				String gender = rs.getString(7);
				String password = rs.getString(8);
    			
    			Customer c = new Customer(id,name,address,phone,nic,email,gender,password);
    			cus.add(c);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return cus;	
    }
	
	public static boolean deleteCustomer(String Id) {
		
		boolean isSuccess = false;
    	
    	int convertedID = Integer.parseInt(Id);
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from customer where id = '"+convertedID+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    	}	
    	
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return isSuccess;	
    }
}
 