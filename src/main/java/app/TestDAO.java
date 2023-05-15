package app;

import java.sql.Date;

import entity.Order;
import entity.Orderdetail;
import entity.User;
import serviceImp.OrderImp;
import serviceImp.OrderdetailImp;
import serviceImp.UserImp;

public class TestDAO {
	public static void main(String[] args) throws Exception {
//		CategoriesService categoriesService = new CategoriesImp();
//		categoriesService.setup();
//
//		ProductService productService = new ProductImp();
//		productService.setup();



//		UserImp imp = new UserImp();
//		imp.setup();
//
//		User user =  imp.getUserByEmail("admin@gmail.com");
//		System.out.println(user);
		
		
		
		
//		imp.addUser(new User());

//		OrderImp imp = new OrderImp();
//		imp.getOrdersByUserID("3");
//		System.out.println(	imp.getOrdersByUserID("3"));
//		
//		User user = new User();
//		user.setUser_id(1);
//		
//		Order order = new Order();
//		order.setOrder_user(user);
//		order.setOrder_purchaseDate(new Date(10, 10, 10));
//		
//		
//		
//		imp.insertOrder(order);
//		
		OrderdetailImp imp = new OrderdetailImp();
		imp.setup();
	   
		System.out.println(imp.getOrderdetailByOrderID("14"));
		
		
//		Categories categories = new Categories();
//		categories.setCategories_name("VU QUANG HUY");
//		
//		categoriesService.updateCategory("7", categories);

//		service.insertUser(new User());

		// categoriesService.deleteCategory(categories);

		// System.out.println(productService.findProduct(4).getProduct_name());





	}

}
