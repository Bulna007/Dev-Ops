package com.hdfc.netbanking;

import java.util.Scanner;

public class CurrencyConverter {
    public static void main(String[] args) {
        System.out.println("Welcome to Currency Converter!");
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter USD Amount :");
        double usdAmount = scanner.nextDouble();

        double inrAmount = 87.17 * usdAmount;
        System.out.println("USD : $"+usdAmount + " in INR : " + inrAmount);
    }
}