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

@WebServlet("/Inventory")
public class Inventory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Inventory() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
HttpSession session = request.getSession(true);
		
		
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
		if(cars == null) {
			cars= new ArrayList<Car>();
		}
		Car car = new Car();
		
		car.setModel(request.getParameter("model"));
		car.setYear(Integer.parseInt(request.getParameter("year")));
		car.setMileage(Integer.parseInt(request.getParameter("mileage")));
		car.setVinNum(request.getParameter("vinNum"));
		car.setPrice(Integer.parseInt(request.getParameter("price")));
	
		car.setPictures(request.getParameter("pictures"));
		cars.add(car);
		
		session.setAttribute("cars", cars);
		RequestDispatcher rs = request.getRequestDispatcher("addinventory.jsp");
		rs.forward(request, response);
		
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);	
	
		}
}
