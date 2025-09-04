package com.ngconnect.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ngconnect.bean.EnquiryBean;
import com.ngconnect.helper.DBConnectionManager;

public class EnquiryDao {
    private final String SQL_INSERT_ENQUIRY = "insert into connect_request(customer_nm, mobile_nbr, email_address, subject, message) values(?,?,?,?,?)";

    public void saveEnquiry(EnquiryBean bean) throws SQLException {
        boolean flag = false;
        try (Connection con = DBConnectionManager.newConnection();
                PreparedStatement pStatement = con.prepareStatement(SQL_INSERT_ENQUIRY);) {
            try {

                pStatement.setString(1, bean.getFullname());
                pStatement.setString(2, bean.getMobileNo());
                pStatement.setString(3, bean.getEmailAddress());
                pStatement.setString(4, bean.getSubject());
                pStatement.setString(5, bean.getMessage());
                pStatement.executeUpdate();
                flag = true;
            } catch (SQLException e) {
                flag = false;
                throw new RuntimeException("error while inserting the data", e);
            } finally {
                if (flag) {
                    con.commit();
                } else {
                    con.rollback();
                }
            }
        }
    }
}
