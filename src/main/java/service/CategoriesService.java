package service;

import java.util.List;

import entity.Categories;

public interface CategoriesService {
	void insertCategories(Categories categories);
	void deleteCategory(Categories category );
	List<Categories> listCategories();
	Categories getCategory( String id);
	void updateCategory(String id, Categories categories);

	void setup();

	

}
