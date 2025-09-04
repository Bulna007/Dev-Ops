package com.railenquiry.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/enquiry"})
public class PNREnquiryServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pnrNumber = request.getParameter("pnr");

        request.setAttribute("pnrNumber", pnrNumber);
        request.setAttribute("trainName", "Telangana Express");
        request.setAttribute("source", "Hyderabad");
        request.setAttribute("destination", "New Delhi");
        request.setAttribute("status", "Confirmed");
        request.setAttribute("seatInfo", "S10, 12");
        request.setAttribute("travelDate", "03/25/2025");

        request.getRequestDispatcher("/pnrstatus.jsp").forward(request, response);
    }
}