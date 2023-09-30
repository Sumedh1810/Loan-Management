package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Replace "example.jpg" with the actual path to your image
        String imagePath = "C:/Users/sumed/OneDrive/Documents/JEE/Loan_Management_Final/src/main/webapp/Images/images.jpeg";

        File imageFile = new File(imagePath);

        if (imageFile.exists() && imageFile.isFile()) {
            response.setContentType("image/jpeg"); // Set the content type to JPEG
            response.setContentLength((int) imageFile.length());

            try (FileInputStream fis = new FileInputStream(imageFile);
                 OutputStream os = response.getOutputStream()) {

                // Write the image data to the response output stream
                byte[] buffer = new byte[4096];
                int bytesRead;
                while ((bytesRead = fis.read(buffer)) != -1) {
                    os.write(buffer, 0, bytesRead);
                }
            } catch (IOException e) {
                // Handle any errors that might occur while reading the image file or writing to the response
                e.printStackTrace();
            }
        } else {
            // Return an error image or handle the case when the requested image is not found
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}