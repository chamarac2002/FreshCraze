package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class feedbackDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String email){
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from feedback where email='"+email+"'";
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
	
	public static List<feedback> getfeedback(String Email){
		
		ArrayList<feedback> feedback = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from feedback where email='"+Email+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int fno = rs.getInt(1);
				String name = rs.getString(2);
    			String email = rs.getString(3);
				String subject = rs.getString(4);
				String message = rs.getString(5);
				String question = rs.getString(6);
				
				feedback fed = new feedback(fno, name, email, subject, message, question);
				feedback.add(fed);	
			}
		}
		catch (Exception e) {
			
		}
		return feedback;
	}
	
	
	public static boolean feedback(String name, String email, String subject,String message, String question) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into feedback values (0,'"+name+"','"+email+"','"+subject+"','"+message+"','"+question+"')";
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
	
	public static boolean updatefeedback(String fno, String name, String email, String subject,String message, String question) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update feedback set name ='"+name+"',email='"+email+"',subject='"+subject+"',message='"+message+"',question='"+question+"'"
					+ "where fno='"+fno+"'";
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
	
	public static List<feedback> getfeedbackDetails(String Fno) {
    	
    	int convertedfno = Integer.parseInt(Fno);
    	
    	ArrayList<feedback> feeds = new ArrayList<>();
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from feedback where fno='"+convertedfno+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int fno = rs.getInt(1);
    			String name = rs.getString(2);
				String email = rs.getString(3);
				String subject = rs.getString(4);
				String message = rs.getString(5);
				String question = rs.getString(6);
    			
    			feedback f = new feedback(fno,name,email,subject,message,question);
    			feeds.add(f);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return feeds;	
    }

	public static boolean deletefeedback(String Fno) {
		
		int convertedfno = Integer.parseInt(Fno);
		
		boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from feedback where fno = '"+convertedfno+"'";
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
