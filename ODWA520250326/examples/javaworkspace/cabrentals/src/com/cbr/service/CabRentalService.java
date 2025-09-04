package com.cbr.service;

import com.gr.bean.GeoService;

public class CabRentalService {

    public double tripEstimate(String source, String destination) {
        GeoService geoService = new GeoService();
        double distance = geoService.distance(source, destination);
        double estimatedTripAmount = distance * 8.25;
        return estimatedTripAmount;
    }
}