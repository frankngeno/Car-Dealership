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


@WebServlet("/ViewDetails")
public class ViewDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public ViewDetails() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session = request.getSession(true);

		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars"); //array of cars 

		if(cars == null) {				//statement to determine availability of the cars. 
			cars= new ArrayList<Car>();
		}
		String vinNum =  request.getParameter("vinNum");
		
		for(Car car: cars) {					// created for loop to pass array to search vin number for every car in the array
			if (car.getVinNum().equalsIgnoreCase(vinNum)){
				session.setAttribute("specifics", car);
				break;									// break statement to break the loop
			}

		}
 
		RequestDispatcher rs = request.getRequestDispatcher("carDetails.jsp"); 
		rs.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
