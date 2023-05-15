package serviceImp;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.NativeQuery;

import entity.Order;
import entity.User;

public class OrderImp {
	private SessionFactory sessionFactory;

	public void setup() {
		final StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();

		try {

			sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Order> getOrders() throws Exception {
		Session session = sessionFactory.openSession();
		NativeQuery<Order> query = session.createNativeQuery("select * from orders", Order.class);
		
		
		List<Order> ListUser = query.getResultList();
	
		return ListUser;

	}
	
	
	public List<Order> getOrdersByUserID( String userid) throws Exception {
		Session session = sessionFactory.openSession();
		NativeQuery<Order> query = session.createNativeQuery("select * from orders where user_id =  '" + userid+"'", Order.class);
		
		
		List<Order> ListUser = query.getResultList();
	
		return ListUser;

	}

	
	
	
	public Order getOrderID(String UserID) throws Exception {
		Session session = sessionFactory.openSession();
		Order tempUser = session.get(Order.class, UserID);
		
		session.close();
		
		return tempUser;
			

		
	}

	public void insertOrder(Order order){
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		session.save(order);
		session.getTransaction().commit();
		
		System.out.println("add successfull");
		
		session.close();
		
		
		

	}




}