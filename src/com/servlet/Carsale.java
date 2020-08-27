package com.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Car;
import com.user.Customer;



@WebServlet("/Carsale")
public class Carsale extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Carsale() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);

	
		Car carToPurchase = (Car) session.getAttribute("carToPurchase");
		double price = carToPurchase.getPrice();
		
		//Parsing the date
		
		String dateBeforeString = request.getParameter("dateBeforeString");
		String dateAfterString =request.getParameter("dateAfterString");
		
		LocalDate dateBefore = LocalDate.parse(dateBeforeString);
		LocalDate dateAfter = LocalDate.parse(dateAfterString);
		
			
		//calculating number of days in between
		long noOfDaysBetween = ChronoUnit.DAYS.between(dateBefore, dateAfter);
		
		if(noOfDaysBetween > 120 ) {
		double newPrice =  price * 0.9;
		
		
		double offer = Float.parseFloat(request.getParameter("offer"));
		
		if(offer >= newPrice) {
						
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
		
		Car carPurchased = (Car) session.getAttribute(" carToPurchase");
		
		//Car array to be created on the inventory
		for(Car car: cars) {
		if (car == carPurchased) {
				cars.remove(car);
					session.setAttribute("cars", cars);
					
					break;
				}
			}
		
		Customer customer = new Customer();
				
		String firstName = (request.getParameter("firstName"));
		String lastName = (request.getParameter("lastName"));
		String phoneNumber = (request.getParameter("phoneNumber"));
		String email = (request.getParameter("email"));
		Date dateOfPurchase = new Date();
	
		Customer newCustomer = new Customer(firstName,lastName, email, phoneNumber,dateOfPurchase, carPurchased);
	
		ArrayList<Customer> SalesReport = (ArrayList<Customer>) session.getAttribute("salesReport");
		SalesReport.add(0,newCustomer);
		
		
					
		}
		}
	
		
	}
	
}

