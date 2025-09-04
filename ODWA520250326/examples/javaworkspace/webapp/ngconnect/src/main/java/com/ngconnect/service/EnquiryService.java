package com.ngconnect.service;

import java.sql.SQLException;

import com.ngconnect.bean.EnquiryBean;
import com.ngconnect.dao.EnquiryDao;

public class EnquiryService {

    public void saveEnquiry(EnquiryBean bean) throws SQLException {
        EnquiryDao dao = new EnquiryDao();
        dao.saveEnquiry(bean);
    }
}
