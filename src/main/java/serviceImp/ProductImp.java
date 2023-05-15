package serviceImp;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.NativeQuery;

import entity.Product;
import service.ProductService;

public class ProductImp implements ProductService {

	private SessionFactory sessionFactory;

	// xíu thử dùng khối static xem sao nhé

	public void setup() {
		StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();
		sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();
	}

	@Override
	public List<Product> getProducts() {
		Session session = sessionFactory.openSession();
		NativeQuery<Product> query = session.createNativeQuery("select * from product", Product.class);
		List<Product> lisProducts = query.getResultList();

		return lisProducts;
	}

	@Override
	public Product findProduct(int id) {
		Session session = sessionFactory.openSession();
		Product product = session.get(Product.class, id);
		return product;
	}

	@Override
	public void insertProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(product);
		session.getTransaction().commit();

		session.close();
		
	}

	@Override
	public void deleteProduct(Product product) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateProduct(String id, Product product) {
		// TODO Auto-generated method stub
		
	}

}
