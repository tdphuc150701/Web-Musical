package entity;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "orders")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user_id")
	private User order_user;

	@Column(columnDefinition = "nvarchar(400)")

	private String order_sdt;


	private Date order_date;
	@Column(columnDefinition = "nvarchar(50)")
	private String billTotal;
	
	@Column(name = "address" ,columnDefinition = "nvarchar(300)")
	private String delivery_address;

	
	


	
	public String getBillTotal() {
		return billTotal;
	}

	public void setBillTotal(String billTotal) {
		this.billTotal = billTotal;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getOrder_user() {
		return order_user;
	}

	public void setOrder_user(User order_user) {
		this.order_user = order_user;
	}

	public String getOrder_sdt() {
		return order_sdt;
	}

	public void setOrder_sdt(String order_sdt) {
		this.order_sdt = order_sdt;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public String getDelivery_address() {
		return delivery_address;
	}

	public void setDelivery_address(String delivery_address) {
		this.delivery_address = delivery_address;
	}
	
	
	

}
