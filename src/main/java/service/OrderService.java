package service;

import java.util.List;

import entity.Order;
import entity.Product;

public interface OrderService {
	List<Order> getOrder();

	Order findOrder(int id);

	void insertOrder(Order order);

	void deleteOrder(Order order);

	void updateOrder(String id, Order order);

	void setup();

}
