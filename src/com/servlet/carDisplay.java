package com.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Car;


@WebServlet("/carDisplay")
public class carDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public carDisplay() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);

		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars"); 
		
		if(cars == null) {
			cars= new ArrayList<Car>();
		}
		//total number of cars  in the inventory

		Car newCar1 = new Car("Tesla", "Model 3", 2012, 42000,"30TM3301", 25000, "https://images.cars.com/cldstatic/wp-content/uploads/img-1347228933-1469580963768.jpg");
		LocalDate currentdate = LocalDate.now();
		newCar1.setDateInInventory(currentdate);
		cars.add(newCar1);
		Car newCar2 = new Car("Tesla", "Model S", 2020, 3000,"30TMS302", 65000, "https://www.tesla.com/sites/default/files/modelsx-new/social/model-s-hero-social.jpg");
		newCar2.setDateInInventory(currentdate);
		cars.add(newCar2);
		Car newCar3 = new Car("Tesla", "Model S", 2013, 42000,"30TMS303", 35426,"https://www.hybridcars.com/wp-content/uploads/2016/02/unplugged-performance-tesla-model-s-02-668x409-668x409.jpg");
		newCar3.setDateInInventory(currentdate);
		cars.add(newCar3);
		Car newCar4 = new Car("Tesla", "Model X", 2021, 4200,"40STMX202", 70000, "https://cdn.static-carindigo.com/images/content/6d89bb0258c2114675a489f8cef130e3.jpeg");
		newCar4.setDateInInventory(currentdate);
		cars.add(newCar4);
		Car newCar5 = new Car("Tesla", "Model X", 2020, 10000,"40TMY201", 65000, "https://www.autotrader.com/wp-content/uploads/2020/02/2020-Tesla-Model-X-.12..jpg?h=235&crop=1&strip=all");
		newCar5.setDateInInventory(currentdate);
		cars.add(newCar5);
		Car newCar6 = new Car("Tesla", "Cybertruck", 2020, 1000,"50TCT601", 75000, "https://www.tesla.com/xNVh4yUEc3B9/04_Desktop.jpg");
		newCar6.setDateInInventory(currentdate);
		cars.add(newCar6);
		Car newCar7 = new Car("Tesla", "Model S", 2015, 26000,"30TMS304", 699000, "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/20180630_Tesla_Model_S_70D_midnight_blue_Tesla_Model_S_70D_2015_rear_right-2.jpg/1280px-20180630_Tesla_Model_S_70D_midnight_blue_Tesla_Model_S_70D_2015_rear_right-2.jpg");
		newCar7.setDateInInventory(currentdate);
		cars.add(newCar7);
		
		Car newCar8 = new Car("Tesla", "Model X", 2015, 14000,"40STMX203", 75000, "https://videos.usatoday.net/Brightcove2/29906170001/2015/09/29906170001_4521412099001_TESLA-X-1.jpg?pubId=29906170001");
		LocalDate saleDate = currentdate.minus(Period.ofDays(120));
		newCar8.setDateInInventory(saleDate);
		cars.add(newCar8);
		Car newCar9 = new Car("Tesla", "model 3", 2020, 3300,"30TM303", 37990, "https://www.tesla.com/xNVh4yUEc3B9/08_Desktop.jpg");
		newCar9.setDateInInventory(saleDate);
		cars.add(newCar9);
		Car newCar10 = new Car("Tesla", "Cybertruck", 2021, 3500,"50TCT602", 85000, "https://www.tesla.com/xNVh4yUEc3B9/06_Desktop.jpg");
		newCar10.setDateInInventory(saleDate);
		cars.add(newCar10);

		session.setAttribute("cars", cars);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
