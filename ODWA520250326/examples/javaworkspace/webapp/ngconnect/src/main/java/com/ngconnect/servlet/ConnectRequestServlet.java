package com.ngconnect.servlet;

import java.io.IOException;
import java.sql.SQLException;

import com.ngconnect.bean.EnquiryBean;
import com.ngconnect.service.EnquiryService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/enquiry")
public class ConnectRequestServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final EnquiryBean bean = new EnquiryBean();
        bean.setFullname(req.getParameter("fullname"));
        bean.setMobileNo(req.getParameter("mobileNo"));
        bean.setEmailAddress(req.getParameter("emailAddress"));
        bean.setSubject(req.getParameter("subject"));
        bean.setMessage(req.getParameter("message"));

        EnquiryService service = new EnquiryService();
        try {
            service.saveEnquiry(bean);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
        req.getRequestDispatcher("/connect-enquiry-info.jsp").forward(req, resp);
    }
}