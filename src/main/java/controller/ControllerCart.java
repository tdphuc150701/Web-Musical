package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Order;
import entity.Orderdetail;
import entity.Product;
import entity.User;
import jakarta.persistence.criteria.CriteriaBuilder.In;
import service.ProductService;
import serviceImp.OrderImp;
import serviceImp.OrderdetailImp;
import serviceImp.ProductImp;
import serviceImp.UserImp;

@WebServlet("/ControllerCart")
public class ControllerCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductService productService = new ProductImp();
	OrderImp orderService = new OrderImp();
	OrderdetailImp orderdetailService = new OrderdetailImp();

	UserImp userSevice = new UserImp();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			productService.setup();
			orderService.setup();
			orderdetailService.setup();
			userSevice.setup();

			String theCommand = request.getParameter("command");

			switch (theCommand) {
			case "ADDTOCART":
				add2Cart(request, response);
				break;

			case "DELETEITEM":
				deleteItem(request, response);
				break;

			case "CHECKOUT":
				checkout(request, response);
				break;
				
			case "CHECKOUTSUCCESS":
				checkoutSuccess(request, response);
				break;


			}

		} catch (Exception e) {

		}

	}

	private void checkoutSuccess(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		
		// getd user id form sesion
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		Order order = new Order();

		order.setOrder_date(new Date(Calendar.getInstance().getTime().getTime()));
		order.setOrder_user(user);
		order.setOrder_sdt(request.getParameter("phone"));
		order.setDelivery_address(request.getParameter("address"));
		
		String total = (String) session.getAttribute("total2");
		System.out.println(total);
		order.setBillTotal(total);
		orderService.insertOrder(order);
		
		
		String[] quatity = (String[]) session.getAttribute("quatity");
		String[] productid = (String[]) session.getAttribute("productId2");
	
		
		
		for (int i = 0; i < productid.length; i++) {
			
			orderdetailService.insertOrderDetail(new Orderdetail(order, productService.findProduct(Integer.parseInt(productid[i])), Integer.parseInt(quatity[i])));
			
			
			
		}
		
		session.removeAttribute("cartItems");
		
		
	
		
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("checkoutSuccess.jsp");

		dispatcher.forward(request, response);
		
		
		
		
	}

	private void deleteItem(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("productId");
		Product product = productService.findProduct(Integer.parseInt(id));
		HttpSession session = request.getSession();
		Map<Product, Integer> mapProductCart = (Map<Product, Integer>) session.getAttribute("cartItems");
		mapProductCart.remove(product);
		session.setAttribute("cartItems", mapProductCart);

		RequestDispatcher dispatcher = request.getRequestDispatcher("mycart.jsp");

		dispatcher.forward(request, response);

	}

	private void checkout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String[] quatity = request.getParameterValues("quatity");

		String[] id = request.getParameterValues("productId2");
		
		
		HttpSession session = request.getSession();
		session.setAttribute("quatity", quatity);

		session.setAttribute("productId2", id);
		session.setAttribute("total2", request.getParameter("total2"));
		
		System.out.println(request.getParameter("total2"));
		
		

		RequestDispatcher dispatcher = request.getRequestDispatcher("checkout.jsp");
		dispatcher.forward(request, response);



	}

	private void add2Cart(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int id = Integer.parseInt(request.getParameter("productId"));

		Product producTemp = productService.findProduct(id);

		String quali = request.getParameter("quatity");
		System.out.println(quali);

		int quatity = 1;
		if (quali != null) {
			quatity = Integer.parseInt(quali);

		}

		Map<Product, Integer> mapProductCart = new HashMap<Product, Integer>();
		HttpSession session = request.getSession();
		if (session.getAttribute("cartItems") != null) {
			mapProductCart = (Map<Product, Integer>) session.getAttribute("cartItems");
		}

		if (mapProductCart.containsKey(producTemp)) {
			// key exists in the map
			mapProductCart.put(producTemp, mapProductCart.get(producTemp) + quatity);
			// do something with the value
		} else {
			mapProductCart.put(producTemp, quatity);
		}

		session.setAttribute("cartItems", mapProductCart);

		RequestDispatcher dispatcher = request.getRequestDispatcher("Controller");

		dispatcher.forward(request, response);

	}

}
