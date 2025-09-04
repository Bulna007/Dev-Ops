package com.loanagent.run;

import java.util.Scanner;

public class App {
    public static void main(String[] args) {
        System.out.println("Welcome to Loan Agent!");
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter principle amount:");
        double principleAmount = scanner.nextDouble();
        System.out.println("Tenure:");
        int tenure = scanner.nextInt();
        tenure = (tenure/12) + 1;

        double interestAmount = (principleAmount * tenure * 8.65)/100;
        System.out.println("Total interest amount to be paid : " + interestAmount);
        scanner.close();
    }
}