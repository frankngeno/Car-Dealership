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

@WebServlet("/search")
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public search() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
				
		String carSearch = request.getParameter("carSearch");
		
		//session.setAttribute("carSearch", carSearch);
		
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
		
		if(cars == null) {
		cars= new ArrayList<Car>();
		}
			
			ArrayList<Car> find = new ArrayList<Car>();
				for(Car car: cars) {					// for loop to find cars to obtain the model of the car
				
				if (car.getModel().toLowerCase().equals(carSearch.toLowerCase())){ // find model in upper and lower case letters
					find.add(car);
				}
			}
				session.setAttribute("find", find);
				
			ArrayList<String> types = new ArrayList<String>();
				for(Car car : find) {
					types.add(car.getModel()); 			
				}
				
			RequestDispatcher rs = request.getRequestDispatcher("newsearch.jsp");
				rs.forward(request, response);	
		
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
