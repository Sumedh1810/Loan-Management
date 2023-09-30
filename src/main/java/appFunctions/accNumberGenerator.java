package appFunctions;

import java.util.ArrayList;
import java.util.List;

import db.DbOperations;
import entity.createAccount;

public class accNumberGenerator {
	DbOperations dbo=new DbOperations();
	
	public int accNoGenerator() {
		int accNo=dbo.accNoGenerator();
		
		return accNo;
		
	}

}
