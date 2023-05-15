package serviceImp;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.NativeQuery;

import entity.Categories;
import service.CategoriesService;

public class CategoriesImp implements CategoriesService {

	private SessionFactory sessionFactory;

	@Override
	public void setup() {
		StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();
		sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();
	}

	@Override
	public void insertCategories(Categories categories) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(categories);
		session.getTransaction().commit();
		System.out.println("add successfull");
		session.close();

	}

	@Override
	public List<Categories> listCategories() {
		Session session = sessionFactory.openSession();
		NativeQuery<Categories> query = session.createNativeQuery("select * from categories", Categories.class);
		List<Categories> listCategories = query.getResultList();

		return listCategories;
	}

	@Override
	public void deleteCategory(Categories category) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.delete(session.get(Categories.class, category.getCategories_id()));
		session.getTransaction().commit();
		session.close();

	}

	@Override
	public Categories getCategory(String id) {
		Session session = sessionFactory.openSession();

		Categories categories = session.get(Categories.class, id);

		session.close();

		return categories;

	}

	public void updateCategory(Categories categories) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();

			session.update(categories);

			session.getTransaction().commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void updateCategory(String id, Categories categories) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			categories.setCategories_id(Integer.parseInt(id));
			session.update(categories);
			session.getTransaction().commit();
			session.close();

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
