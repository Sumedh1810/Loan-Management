package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DbOperations;

/**
 * Servlet implementation class homeLoanForm
 */
@WebServlet("/homeLoanForm")
public class homeLoanForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public homeLoanForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String cifAccountNo=request.getParameter("cifAccountNo");
		String firstName=request.getParameter("firstName");
		String middleName=request.getParameter("middleName");
		String lastName=request.getParameter("lastName");
		String pan=request.getParameter("pan");
		String spouseName=request.getParameter("spouseName");
		String gender=request.getParameter("gender");
		String aadhaar=request.getParameter("aadhaar");
		String drivingLicense=request.getParameter("drivingLicense");
		String residentialAddress=request.getParameter("residentialAddress");
		String poaHolderName=request.getParameter("poaHolderName");
		String poaHolderContact=request.getParameter("poaHolderContact");
		String requestLoanAmount=request.getParameter("requestLoanAmount");
		
		List<entity.homeLoanForm> lsthome=new ArrayList<>();
		entity.homeLoanForm hobj=new entity.homeLoanForm(cifAccountNo, firstName, middleName, lastName, pan, spouseName, gender, aadhaar, drivingLicense, residentialAddress, poaHolderName, poaHolderContact, requestLoanAmount);
		lsthome.add(hobj);
		DbOperations dobj=new DbOperations();
		int flag=dobj.create_homeLoanForm(lsthome);
		if(flag==1) {
			response.setContentType("text/html");  
			//PrintWriter pw=response.getWriter(); 
			response.sendRedirect("homeLoanForm.html");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
