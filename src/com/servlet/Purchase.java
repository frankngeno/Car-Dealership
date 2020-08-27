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

@WebServlet("/Purchase")
public class Purchase extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public Purchase() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(true);

		Car carToPurchase = (Car)session.getAttribute("specifics");
		
		double offer = Double.parseDouble(request.getParameter("offer"));
		double minPrice = carToPurchase.getPrice()*.9;	
		
		if(offer >= minPrice) {
			
			ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
			

			for(Car car: cars) {
				if (car == carToPurchase) {
					cars.remove(car);
					session.setAttribute("cars", cars);

					break;
				}
			}	

		}
		else {
			RequestDispatcher rs = request.getRequestDispatcher("buy.jsp");
			rs.forward(request, response);
		}

		String firstName = (request.getParameter("firstName"));
		String lastName = (request.getParameter("lastName"));
		String phoneNumber = (request.getParameter("phoneNumber"));
		String email = (request.getParameter("email"));
		Date dateOfPurchase = new Date();

		Customer newCustomer = new Customer(firstName,lastName, phoneNumber, email, dateOfPurchase, carToPurchase);

		//placeholder
		ArrayList<Customer> salesReport = (ArrayList<Customer>) session.getAttribute("salesReport");
		if(salesReport == null) {
			salesReport = new ArrayList<Customer>();
		}
		salesReport.add(0,newCustomer);

		session.setAttribute("salesReport", salesReport);
		RequestDispatcher rs = request.getRequestDispatcher("customerRecord.jsp");
		rs.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
