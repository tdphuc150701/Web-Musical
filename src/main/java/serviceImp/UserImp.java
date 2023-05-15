package serviceImp;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.NativeQuery;

import entity.User;
import entity.User;

public class UserImp {
	private SessionFactory sessionFactory;

	public void setup() {
		final StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();

		try {

			sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<User> getUsers() throws Exception {
		Session session = sessionFactory.openSession();
		NativeQuery<User> query = session.createNativeQuery("select * from Users", User.class);

		List<User> ListUser = query.getResultList();

		return ListUser;

	}

	public void deleteUser(String UserID) throws Exception {

		User tempUser = new User();
		tempUser.setUser_id(Integer.parseInt(UserID));
		// open transaction
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.delete(tempUser);

		session.getTransaction().commit();
		session.close();

	}

	public User getUser(String UserID) throws Exception {
		Session session = sessionFactory.openSession();
		User tempUser = session.get(User.class, UserID);

		session.close();

		return tempUser;
	}

	public User getUserByUserName(String userName) throws Exception {
		Session session = sessionFactory.openSession();

		NativeQuery<User> query = session
				.createNativeQuery("select * from Users where  user_name  = '" + userName + "'", User.class);

		User tempUser = query.getSingleResult();
		// List<User> ListUser = query.getResultList();

		session.close();

		return tempUser;

	}

	public User getUserByEmail(String email) throws Exception {
		Session session = sessionFactory.openSession();

		NativeQuery<User> query = session.createNativeQuery("select * from Users where  user_email  =  '" + email + "'",User.class);

		User user = query.getSingleResult();

		session.close();

		return user;

	}

	public void addUser(User user) {

		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.save(user);
		session.getTransaction().commit();

		System.out.println("add successfull");

		session.close();

	}

	public void updateUser(User User) {

		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.update(User);

		session.getTransaction().commit();
		session.close();

	}

}
