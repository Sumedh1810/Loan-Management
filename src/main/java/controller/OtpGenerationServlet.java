package controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/OtpGenerationServlet")
public class OtpGenerationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String recipientEmail = request.getParameter("email");
        String otp = generateOTP();
        
        // Replace these with your actual email credentials
        String senderEmail = "email";
        String senderPassword = "set your password to enable otp generation";

        sendOTPEmail(recipientEmail, senderEmail, senderPassword, otp);

        HttpSession session = request.getSession();
        session.setAttribute("otp", otp);
        session.setAttribute("recipientEmail", recipientEmail);

        response.sendRedirect("otpVerification.jsp");
    }

    private String generateOTP() {
        return String.format("%06d", new Random().nextInt(999999));
    }

    private void sendOTPEmail(String recipientEmail, String senderEmail, String senderPassword, String otp) {
    	Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        props.setProperty("mail.smtp.starttls.enable", "true");
        props.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
        

        // Create a session with authentication
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, senderPassword);
            }
        });

        try {
            // Create a message
            javax.mail.Message message = new MimeMessage(session); // Use fully qualified class name
            message.setFrom(new InternetAddress(senderEmail));
            message.setRecipients(javax.mail.Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
            message.setSubject("OTP Verification");
            message.setText("Your OTP is: " + otp);

            // Send the message
            Transport.send(message);

            System.out.println("OTP sent successfully to " + recipientEmail);
        } catch (MessagingException e) {
            e.printStackTrace();
            System.out.println("Failed to send OTP to " + recipientEmail);
        }
    }
}