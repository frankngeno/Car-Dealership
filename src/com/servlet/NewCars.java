package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Car;

/**
 * Servlet implementation class NewCars
 */
@WebServlet("/NewCars")
public class NewCars extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public NewCars() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session = request.getSession(true);
		
		
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars"); //array of cars 

		if(cars == null) {				//statement to determine availability of the cars. 
			cars= new ArrayList<Car>();
		}
		ArrayList<Car> newCars = new ArrayList<Car>();
		String mileage =  request.getParameter("mileage");

		for(Car car: cars) {					// created for loop to pass array to search cars by mileage for every car in the array and add to its array
			if (car.getMileage() <= 20000){
				newCars.add(car);
				break;									// break statement to break the loop
			}

		}
		session.setAttribute("brandnew", newCars);
		RequestDispatcher rs = request.getRequestDispatcher("newcars.jsp");
		rs.forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		doGet(request, response);
	}

}
