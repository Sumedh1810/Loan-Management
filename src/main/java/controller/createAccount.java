package controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import appFunctions.accNumberGenerator;
import db.DbOperations;

/**
 * Servlet implementation class createAccount
 */
@WebServlet("/createAccount")
@MultipartConfig
public class createAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createAccount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("fullName");
		String dob=request.getParameter("dob");
		String email=request.getParameter("email");
		String mobileNo=request.getParameter("phoneNumber");
		String panNo=request.getParameter("panNumber");
		String aadharNo=request.getParameter("aadharNumber");
		String address=request.getParameter("address");
		float initialDeposit=Float.parseFloat(request.getParameter("initialDeposit"));
		String password=request.getParameter("accountPassword");
		System.out.println("Values recieved.");
		
		accNumberGenerator a=new accNumberGenerator();
		int accNo=a.accNoGenerator();
		System.out.println(accNo);
		
		//String folderName = "accNo";
		String folderName = String.valueOf(accNo);

		Part aadharPart = request.getPart("aadharPdf");
		String aadharFileName = "aadhar.pdf"; // Append the file extension
		Part panPart = request.getPart("panPdf");
		String panFileName = "pan.pdf"; // Append the file extension
		System.out.println("PDF Files received.");

		String savePath = "C:\\Users\\sumed\\OneDrive\\Desktop\\Loan_Management\\" + folderName + "\\";
		File folder = new File(savePath);
		if (!folder.exists()) {
		    folder.mkdirs(); // Create the folder if it doesn't exist
		}
		System.out.println("Path created");

		String aadharFilePath = savePath + aadharFileName;
		try (InputStream inputStream = aadharPart.getInputStream()) {
		    Files.copy(inputStream, Paths.get(aadharFilePath));
		}

		String panFilePath = savePath + panFileName;
		try (InputStream inputStream = panPart.getInputStream()) {
		    Files.copy(inputStream, Paths.get(panFilePath));
		}
		System.out.println("Files saved to the folder.");
        
        List<entity.createAccount> lst=new ArrayList<>();
        entity.createAccount c=new entity.createAccount(name, accNo, mobileNo, aadharNo, panNo, address, email, initialDeposit, dob, password);
        lst.add(c);
        DbOperations dbo=new DbOperations();
        int flag=dbo.createAccount(lst);
        lst.remove(0);
        if(flag == 1) {
        	HttpSession session=request.getSession();
        	session.setAttribute("cobj", c);
        	response.sendRedirect("homeloan.jsp");
        }
	}

}
