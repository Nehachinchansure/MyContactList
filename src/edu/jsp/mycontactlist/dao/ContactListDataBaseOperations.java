package edu.jsp.mycontactlist.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import edu.jsp.mycontactlist.dto.Person;

public class ContactListDataBaseOperations 
{
	private final static String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	private final static String DB_URL = "jdbc:mysql://localhost:3306/hejm33_db?user=root&password=root";
	
	public boolean addContact(Person p)
	{
		Connection con = null;
		PreparedStatement pstmt = null;	
		try 
		{
			//Load the Drivers
			Class.forName(DRIVER_CLASS);
			//Get the Connection
			con = DriverManager.getConnection(DB_URL);
			//Issue Query
			String query="INSERT INTO ContactList VALUES(?,?,?,?)";
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, p.getName());
			pstmt.setLong(2, p.getPhoneNumber());
			pstmt.setString(3, p.getEmailId());
			pstmt.setString(4, p.getDob());
			int rowsAffected=pstmt.executeUpdate();
			if(rowsAffected>0)
			{
				return true;
			}
			else
			{
				return false;
			}
		} 
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			if(con != null)
			{
				try 
				{
					con.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}			
			if(pstmt != null)
			{
				try 
				{
					pstmt.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}			
		}		
		return false;		
	}
	
	public ArrayList<Person> displayAllContacts()
	{
		ArrayList<Person> allContacts = new ArrayList<Person>();
		
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		
		try 
		{
			//Load the drivers
			Class.forName(DRIVER_CLASS);
			//Get the Connection
			con=DriverManager.getConnection(DB_URL);
			
			//Issue the SQL Query
			String query="SELECT * FROM ContactList";
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
			
			//Process the result
			
			while(rs.next())
			{
				Person p=new Person();
				p.setName(rs.getString(1));
				p.setPhoneNumber(rs.getLong(2));
				p.setEmailId(rs.getString(3));
				p.setDob(rs.getString(4));
				allContacts.add(p);
			}
			return allContacts;
		} 
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}
		
		finally 
		{
			if(con != null)
			{
				try 
				{
					con.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			
			if(stmt != null)
			{
				try 
				{
					stmt.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			
			if(rs != null)
			{
				try 
				{
					rs.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}
		return allContacts;
	}
	
	public Person searchContact(String name)
	{
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try 
		{
			//Load the driver
			Class.forName(DRIVER_CLASS);
			//Get the Connection
			con = DriverManager.getConnection(DB_URL);
			//Issue the Query
			String query = "SELECT * FROM ContactList WHERE Name = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				Person p=new Person();
				p.setName(rs.getString(1));
				p.setPhoneNumber(rs.getLong(2));
				p.setEmailId(rs.getString(3));
				p.setDob(rs.getString(4));
				
				return p;
			}
		} 
		catch (ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
		
		return null;		
	}
	
	public boolean updateContact(Person p)
	{
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try 
		{
			//Load the driver
			Class.forName(DRIVER_CLASS);
			//Get the Connection
			con = DriverManager.getConnection(DB_URL);
			//Issue the Query
			
			String query = "UPDATE ContactList set PhoneNumber = ? ,EmailID = ?, Date_OF_Birth = ? WHERE Name = ?";
			pstmt = con.prepareStatement(query);
			
			pstmt.setLong(1, p.getPhoneNumber());
			pstmt.setString(2, p.getEmailId());
			pstmt.setString(3, p.getDob());			
			pstmt.setString(4, p.getName());
			
			int rowsAffected = pstmt.executeUpdate();
			if(rowsAffected>0)
			{
				return true;
			}
			else
			{
				return false;
			}
		} 
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			if(con != null)
			{
				try 
				{
					con.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			if(pstmt != null)
			{
				try
				{
					pstmt.close();
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			}
		}
		return false;
	}
	
	public boolean deleteContact(String name)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try 
		{
			Class.forName(DRIVER_CLASS);
			con = DriverManager.getConnection(DB_URL);

			String query = "DELETE from ContactList WHERE Name = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, name);
			int rowAffected=pstmt.executeUpdate();
			if(rowAffected>0)
			{
				return true;
			}
			else
			{
				return false;
			}
		} 
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			if(con != null)
			{
				try 
				{
					con.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			if(pstmt != null)
			{
				try
				{
					pstmt.close();
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			}
		}
		return false;
		
	}
}
