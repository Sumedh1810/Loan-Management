package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.createAccount;

@WebServlet("/OtpVerificationServlet")
public class OtpVerificationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userOTP = request.getParameter("otp");

        HttpSession session = request.getSession();
        String storedOTP = (String) session.getAttribute("otp");
        String recipientEmail = (String) session.getAttribute("recipientEmail");

        if (userOTP.equals(storedOTP)) {
        	createAccount c=new createAccount(null, 0, null, null, null,null,recipientEmail, 0.0f, null,null);
        	HttpSession session2 =request.getSession();
        	session2.setAttribute("cobj", c);
        	System.out.println(c.getEmail());
            //response.getWriter().println("OTP verification successful for " + recipientEmail);
        	response.sendRedirect("index2.jsp");
        } else {
            response.getWriter().println("Invalid OTP. Please try again.");
        }
    }
}