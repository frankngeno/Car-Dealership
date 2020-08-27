package com.servlet;


import java.io.IOException;
import java.time.LocalDate;
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


@WebServlet("/SalesReport")
public class SalesReport extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SalesReport() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(true);
				
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
		if(cars == null) {
			cars= new ArrayList<Car>();

			Car car = new Car();
			 
			if (LocalDate.now() != null) {
			    System.out.println("dateInInventory");
			   
			}
    
			Car newCar = new Car("make","model",Integer.parseInt(request.getParameter("year")),Integer.parseInt(request.getParameter("mileage")),"vinNum", Integer.parseInt(request.getParameter("price")), "dateInInventory","description","pictures");
			cars.add(newCar);

			session.setAttribute("cars", cars);
			RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
			rs.forward(request, response);

		}

	}
}
