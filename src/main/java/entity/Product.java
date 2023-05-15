package entity;

import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table

public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int product_id;
	@Column(columnDefinition = "nvarchar(100)")
	private String product_name;
	@Column(columnDefinition = "nvarchar(50)")
	private String product_brand;
	private double product_price;
	private String product_image1;
	private String product_image2;
	private String product_image3;
	private int product_quatity;
	private int product_discount;
	@Column(columnDefinition = "nvarchar(200)")
	private String product_description_short;
	@Column(columnDefinition = "nvarchar(1000)")
	private String product_description_full;

	@ManyToOne
	@JoinColumn(name = "Categoties_id")
	private Categories categories;

	@Override
	public String toString() {
		return "Product [product_name=" + product_name;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_brand() {
		return product_brand;
	}

	public void setProduct_brand(String product_brand) {
		this.product_brand = product_brand;
	}

	public double getProduct_price() {
		return product_price;
	}

	public void setProduct_price(double product_price) {
		this.product_price = product_price;
	}

	public String getProduct_image1() {
		return product_image1;
	}

	public void setProduct_image1(String product_image1) {
		this.product_image1 = product_image1;
	}

	public String getProduct_image2() {
		return product_image2;
	}

	public void setProduct_image2(String product_image2) {
		this.product_image2 = product_image2;
	}

	public String getProduct_image3() {
		return product_image3;
	}

	public void setProduct_image3(String product_image3) {
		this.product_image3 = product_image3;
	}

	public int getProduct_quatity() {
		return product_quatity;
	}

	public void setProduct_quatity(int product_quatity) {
		this.product_quatity = product_quatity;
	}

	public int getProduct_discount() {
		return product_discount;
	}

	public void setProduct_discount(int product_discount) {
		this.product_discount = product_discount;
	}

	public String getProduct_description_short() {
		return product_description_short;
	}

	public void setProduct_description_short(String product_description_short) {
		this.product_description_short = product_description_short;
	}

	public String getProduct_description_full() {
		return product_description_full;
	}

	public void setProduct_description_full(String product_description_full) {
		this.product_description_full = product_description_full;
	}

	public Categories getCategories() {
		return categories;
	}

	public void setCategories(Categories categories) {
		this.categories = categories;
	}

	public Product(int product_id, String product_name, String product_brand, double product_price,
			String product_image1, String product_image2, String product_image3, int product_quatity,
			int product_discount, String product_description_short, String product_description_full,
			Categories categories) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_brand = product_brand;
		this.product_price = product_price;
		this.product_image1 = product_image1;
		this.product_image2 = product_image2;
		this.product_image3 = product_image3;
		this.product_quatity = product_quatity;
		this.product_discount = product_discount;
		this.product_description_short = product_description_short;
		this.product_description_full = product_description_full;
		this.categories = categories;
	}

	public Product() {
		super();
	}

	public Product(int product_id, String product_name, String product_brand, double product_price,
			String product_image1, String product_image2, String product_image3, int product_quatity,
			String product_description_short, String product_description_full, Categories categories) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_brand = product_brand;
		this.product_price = product_price;
		this.product_image1 = product_image1;
		this.product_image2 = product_image2;
		this.product_image3 = product_image3;
		this.product_quatity = product_quatity;
		this.product_description_short = product_description_short;
		this.product_description_full = product_description_full;
		this.categories = categories;
	}

	@Override
	public int hashCode() {
		return Objects.hash(product_id, product_name);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return product_id == other.product_id && Objects.equals(product_name, other.product_name);
	}



}
