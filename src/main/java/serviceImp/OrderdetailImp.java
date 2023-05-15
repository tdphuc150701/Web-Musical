package serviceImp;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.NativeQuery;

import entity.Order;
import entity.Orderdetail;
import entity.User;

public class OrderdetailImp {
	private SessionFactory sessionFactory;

	public void setup() {
		final StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();

		try {

			sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<Orderdetail> getOrderdetailByOrderID(String order_id) throws Exception {
		Session session = sessionFactory.openSession();
		NativeQuery<Orderdetail> query = session
				.createNativeQuery("select * from orderdetail where order_id = '" + order_id + "'", Orderdetail.class);

		List<Orderdetail> ListUser = query.getResultList();

		return ListUser;

	}

	

	public void insertOrderDetail(Orderdetail orderdetail) {

		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.save(orderdetail);
		session.getTransaction().commit();

		System.out.println("add successfull");

		session.close();

	}

}