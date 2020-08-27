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
 * Servlet implementation class UsedCars
 */
@WebServlet("/UsedCars")
public class UsedCars extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UsedCars() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession(true);
		
		String usedCars = request.getParameter("usedCars");
		
		session.setAttribute("usedCars", usedCars);
		
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
		
		if(cars == null) {
		cars= new ArrayList<Car>();
		}
			
			ArrayList<Car> used = new ArrayList<Car>();
				for(Car car: cars) {					// for loop to find cars to obtain used cars
				
				if (car.getMileage() > 10000){ 
					used.add(car);
				}
			}
				session.setAttribute("used", used);
				
			ArrayList<String> types = new ArrayList<String>();
				for(Car car : used) {
					types.add(car.getModel()); 			
				}
				
			RequestDispatcher rs = request.getRequestDispatcher("usedcars.jsp");
				rs.forward(request, response);	
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
