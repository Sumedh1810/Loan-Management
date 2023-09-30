package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DbOperations;
import entity.createAccount;

/**
 * Servlet implementation class accountNumberVerify
 */
@WebServlet("/accountLogin")
public class accountLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public accountLogin() {
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
		DbOperations dbo=new DbOperations();
		String accNo=request.getParameter("accNo");
		String accPassword=request.getParameter("accPassword");
		List<createAccount> lst=new ArrayList<>();
		createAccount cobj=new createAccount(null, Integer.parseInt(accNo), null, null, null, null, null, 0.0f, null, accPassword);
		lst.add(cobj);
		createAccount c=dbo.searchAccount(lst);
		if(c!=null) {
			System.out.println(c.getAccName());
			HttpSession session=request.getSession();
			session.setAttribute("cobj", c);
			response.sendRedirect("homeLoanForm.jsp");
		}
		else {
			PrintWriter out=response.getWriter();
			out.println("Failed to login");
		}
	}
}
