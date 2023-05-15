package service;

import java.util.List;

import entity.Categories;
import entity.Product;

public interface ProductService {

	List<Product> getProducts();

	Product findProduct(int id);

	void insertProduct(Product product);

	void deleteProduct(Product product);

	void updateProduct(String id, Product product);

	void setup();

}
