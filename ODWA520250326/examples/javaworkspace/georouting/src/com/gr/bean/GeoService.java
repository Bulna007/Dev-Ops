package com.gr.bean;

import java.security.SecureRandom;

public class GeoService {
    public double distance(String source, String destination) {
        SecureRandom random = new SecureRandom();
        return random.nextDouble(100);
    }
}