package com.cbr.run;

import java.util.Scanner;

import com.cbr.service.CabRentalService;

public class App {

    public static void main(String[] args) {
        CabRentalService rentalService = new CabRentalService();
        System.out.println("Welcome to Cab Rentals!");
        Scanner scanner = new Scanner(System.in);
        System.out.println("Source :");
        String source= scanner.nextLine();
        System.out.println("Destination:");
        String destination = scanner.nextLine();

        double amount = rentalService.tripEstimate(source, destination);
        System.out.println("estimated trip charges : " + amount);
    }
}