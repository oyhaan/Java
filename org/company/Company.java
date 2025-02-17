package org.company;

import org.client.Client;

public class Company extends Client {


    public void companyName() {
        System.out.println("Company-Name");
    }
    public static void main(String[] args) {
        Company company = new Company(); // Creating object of Company class
        
        company.companyName();  // Calling method from Company class
        company.clientName();   // Calling inherited method from Client class
    }

}
