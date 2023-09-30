package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.createAccount;
import entity.homeLoanForm;

public class DbOperations {
	
	public int accNoGenerator() {
		Connection con=DbConnection.getDbConnection();
		int highestaccNo=0;
		try {
			Statement stat=con.createStatement();
			String sqlQuery = "SELECT MAX(accNo) as highestAccountNo FROM createAccount";
			
			ResultSet rs=stat.executeQuery(sqlQuery);
			if(rs.next()) {
				highestaccNo=rs.getInt("highestAccountNo");
			}
			System.out.println(highestaccNo);
			    if(highestaccNo == 0) {
				highestaccNo = 100000;
			    }
			    else {
			    	highestaccNo = highestaccNo + 1;
			    }
		}catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return highestaccNo;	
	}
	
	public int createAccount(List<createAccount> lst) {
		Connection con=DbConnection.getDbConnection();
		int flag=0;
		for(createAccount c: lst) {
			try {
				PreparedStatement pstate=con.prepareStatement("insert into createAccount values(?,?,?,?,?,?,?,?,?,?)");
				pstate.setString(1,c.getAccName());
				pstate.setString(2,c.getMobNo());
				pstate.setString(3,c.getAadharNo());
				pstate.setString(4,c.getPanNo());
				pstate.setString(5,c.getAddress());
				pstate.setString(6,c.getEmail());
				pstate.setInt(7,c.getAccNo());
				pstate.setFloat(8,c.getAccBal());
				pstate.setString(9,c.getDate());
				pstate.setString(10,c.getPassword());
				int i=pstate.executeUpdate();
				if(i>0) {
					flag=1;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return flag;
	}
	
	public createAccount searchAccount(List<createAccount> lst) {
		Connection con=DbConnection.getDbConnection();
		createAccount cobj=lst.get(0);
		createAccount c=null;
		try {
			PreparedStatement pstate=con.prepareStatement("select * from createAccount where accNo=? and accPass=?");
			pstate.setInt(1,cobj.getAccNo());
			pstate.setString(2,cobj.getPassword());
			ResultSet rs=pstate.executeQuery();
			if(rs.next()) {
				c=new createAccount(rs.getString(1), rs.getInt(7), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getFloat(8), rs.getString(9), rs.getString(10));
			}
			else {
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		lst.remove(0);
		return c;
	}
	
	public int create_homeLoanForm(List<homeLoanForm> homelst) {
		int flag=0;
		Connection con=DbConnection.getDbConnection();
		for(homeLoanForm h:homelst) {
			try {
				PreparedStatement pstate=con.prepareStatement("insert into homeLoanForm values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
				pstate.setString(1, h.getCifAccountNo());
				pstate.setString(2, h.getFirstName());
				pstate.setString(3, h.getMiddleName());
				pstate.setString(4, h.getLastName());
				pstate.setString(5, h.getPan());
				pstate.setString(6, h.getSpouseName());
				pstate.setString(7, h.getGender());
				pstate.setString(8, h.getAadhaar());
				pstate.setString(9, h.getDrivingLicense());
				pstate.setString(10, h.getResidentialAddress());
				pstate.setString(11, h.getPoaHolderName());
				pstate.setString(12, h.getPoaHolderContact());
				pstate.setString(13, h.getRequestLoanAmount());
				
				int i=pstate.executeUpdate();
				if(i>0) {
					System.out.println("Data Added Successfully");
					flag=1;
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return flag;
		
	}
}
