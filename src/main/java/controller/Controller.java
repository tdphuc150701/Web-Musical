package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Categories;
import entity.Order;
import entity.Orderdetail;
import entity.Product;
import service.CategoriesService;
import service.ProductService;
import serviceImp.CategoriesImp;
import serviceImp.OrderImp;
import serviceImp.OrderdetailImp;
import serviceImp.ProductImp;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CategoriesService categoriesService = new CategoriesImp();
	ProductService productService = new ProductImp();
	OrderImp orderService = new OrderImp();
	OrderdetailImp orderDetailService = new OrderdetailImp();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)

			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		try {
			categoriesService.setup();
			productService.setup();
			orderService.setup();
			orderDetailService.setup();

			String theCommand = request.getParameter("command");

			if (theCommand == null) {
				theCommand = "LIST";
			}

			switch (theCommand) {
			case "LIST":
				listProduct(request, response);
				break;
			case "LOAD_CATEGORY":
				loadCategory(request, response);
				break;
			case "DELETE_CATEROGY":
				deleteCategory(request, response);
				break;

			case "GET":
				getProduct(request, response);
				break;
			case "GET_CATEGORY":
				getCategories(request, response);
				break;

			case "GET_PRODUCT":
				getProducts(request, response);
				break;
				
			case "GET_ORDER":
				getOrders(request, response);
				break;
				
				
			case "ORDERDETAIL":
				orderDetail(request, response);
				break;
				
			case "VIEWORDERUSER":
				orderUser(request, response);
				break;
				
				
				
				
				
				
				
				
				
				
				

			default:
				listProduct(request, response);

			}

		} catch (Exception e) {
			// TODO: handle exception
		}

	}



	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		try {
			categoriesService.setup();
			productService.setup();

			String theCommand = request.getParameter("command");
			System.out.println(theCommand);

			switch (theCommand) {
			case "LIST":
				listProduct(request, response);
				break;

			case "UPDATE":
				updateProduct(request, response);
				break;

			case "ADDCATEGORY":
				addCategories(request, response);
				break;

			case "ADDPRODUCT":
				insertProduct(request, response);
				break;
			case "UPDATE_CATEGORY":
				updateCategory(request, response);
				break;

			default:
				listProduct(request, response);

			}

		} catch (Exception e) {

		}

	}

	private void getProducts(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<Product> products = productService.getProducts();
		request.setAttribute("PRODUCTS", products);
		RequestDispatcher dispatcher = request.getRequestDispatcher("ProductManager.jsp");

		dispatcher.forward(request, response);

	}

	private void updateCategory(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		Categories categories = new Categories();
		categories.setCategories_name(name);
		categoriesService.updateCategory(request.getParameter("id"), categories);
		System.out.println(name);
		System.out.println("update categoty done");
		getCategories(request, response);

	}

	private void loadCategory(HttpServletRequest request, HttpServletResponse response) throws Exception {

		Categories categories = categoriesService.getCategory(request.getParameter("caId"));

		request.setAttribute("CATEGORY", categories);
		RequestDispatcher dispatcher = request.getRequestDispatcher("UpdateCategoriForm.jsp");
		dispatcher.forward(request, response);

	}

	private void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("caId");
		Categories categories = new Categories();
		categories.setCategories_id(Integer.parseInt(id));
		categoriesService.deleteCategory(categories);

		List<Categories> categories1 = categoriesService.listCategories();
		HttpSession session = request.getSession();
		session.setAttribute("category", categories1);
		getCategories(request, response);

	}

	private void addCategories(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		Categories categories = new Categories();
		categories.setCategories_name(name);
		categoriesService.insertCategories(categories);

		List<Categories> categories1 = categoriesService.listCategories();
		HttpSession session = request.getSession();
		session.setAttribute("category", categories1);
		getCategories(request, response);
	}

	private void getCategories(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Categories> categories = categoriesService.listCategories();
		request.setAttribute("CATEGORIES", categories);
		RequestDispatcher dispatcher = request.getRequestDispatcher("CategoryManage.jsp");
		dispatcher.forward(request, response);

	}

	private void getProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int a = Integer.parseInt(request.getParameter("productId"));

		Product product = productService.findProduct(a);
		List<Categories> categories = categoriesService.listCategories();
		request.setAttribute("CATEGORIES", categories);

		// add student to the request
		request.setAttribute("PRODUCT", product);

		// send to JSP page (view)

		RequestDispatcher dispatcher = request.getRequestDispatcher("product-detail.jsp");
		System.out.println("laod detail");
		dispatcher.forward(request, response);

	}

	private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {

	}

	private void updateProduct(HttpServletRequest request, HttpServletResponse response) {

	}

	private void insertProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// retrive data
		String name = request.getParameter("name");
		String brand = request.getParameter("brand");

		int price = Integer.parseInt(request.getParameter("price"));
		int quatity = Integer.parseInt(request.getParameter("quatity"));

		Categories category = categoriesService.getCategory((request.getParameter("category")));

		String shortdesciption = request.getParameter("shortdesciption");
		String description = request.getParameter("description");

		String img1 = request.getParameter("productImage1");
		String img2 = request.getParameter("productImage3");
		String img3 = request.getParameter("productImage3");

		// set obj
		Product product = new Product();
		product.setProduct_name(name);
		product.setProduct_brand(brand);
		product.setProduct_price(price);
		product.setProduct_quatity(quatity);
		product.setCategories(category);
		product.setProduct_description_short(shortdesciption);
		product.setProduct_description_full(description);
		product.setProduct_image1(img1);
		product.setProduct_image2(img2);
		product.setProduct_image3(img3);

		productService.insertProduct(product);

		System.out.println("name:  ");
		System.out.println(request.getParameter("name") + "huy");

		System.out.println("image:  ");
		System.out.println(request.getParameter("productImage3"));
		getProducts(request, response);

	}

	private void listProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		List<Product> products = productService.getProducts();
		List<Categories> categories = categoriesService.listCategories();

		// add student to the request
		request.setAttribute("PRODUCTS", products);
		request.setAttribute("CATEGORIES", categories);

		HttpSession session = request.getSession();
		session.setAttribute("category", categories);

		// send to JSP page (view)

		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		System.out.println("load list product done");
		dispatcher.forward(request, response);

	}
	
	
private void orderUser(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String userid = request.getParameter("UserId");
		
		List<Order> products = orderService.getOrdersByUserID(userid);
		request.setAttribute("ORDERS", products);
		RequestDispatcher dispatcher = request.getRequestDispatcher("OrderManager.jsp");

		dispatcher.forward(request, response);
		
		
	}

private void getOrders(HttpServletRequest request, HttpServletResponse response) throws Exception {
	List<Order> products = orderService.getOrders();
	request.setAttribute("ORDERS", products);
	RequestDispatcher dispatcher = request.getRequestDispatcher("OrderManager.jsp");

	dispatcher.forward(request, response);

}



	private void orderDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String order_id = request.getParameter("orderID");
		
		
		System.out.println(order_id);
		
		List<Orderdetail> orderdetails =orderDetailService.getOrderdetailByOrderID(order_id);
		
		
		Order order = orderService.getOrderID(order_id);
		
		 request.setAttribute("totaltal", order.getBillTotal());
		
		Map<Product, Integer> mapProduc = new HashMap<Product, Integer>();
		
		
		for (Orderdetail orderdetail : orderdetails) {
			mapProduc.put(productService.findProduct(orderdetail.getId()),orderdetail.getQuatity());
			
		}
	
	    request.setAttribute("PRODUCTORDER", mapProduc);

		RequestDispatcher dispatcher = request.getRequestDispatcher("orderDetail.jsp");

		dispatcher.forward(request, response);
	
	}
	
	
	




}
