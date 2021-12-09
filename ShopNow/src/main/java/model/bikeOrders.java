package model;

public class bikeOrders extends newBike {
	
	private int orderId;
	private int customerId;
	private int quantity;
	private String date;
	private String customerEmail;
	private String bikeName;
	private int bikePrice;
	


	public bikeOrders () {}

	public bikeOrders(int orderId, int customerId, int quantity, String date, String customerEmail, String bikeName, int bikePrice) {
		super();
		this.orderId = orderId;
		this.customerId = customerId;
		this.quantity = quantity;
		this.date = date;
		this.customerEmail = customerEmail;
		this.bikeName = bikeName;
		this.bikePrice = bikePrice;
	}

	public bikeOrders(int customerId, int quantity, String date, String customerEmail, String bikeName, int bikePrice) {
		super();
		this.customerId = customerId;
		this.quantity = quantity;
		this.date = date;
		this.customerEmail = customerEmail;
		this.bikeName = bikeName;
		this.bikePrice = bikePrice;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	
	
	
	

	public String getBikeName() {
		return bikeName;
	}

	public void setBikeName(String bikeName) {
		this.bikeName = bikeName;
	}

	public int getBikePrice() {
		return bikePrice;
	}

	public void setBikePrice(int bikePrice) {
		this.bikePrice = bikePrice;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "bikeOrders [orderId=" + orderId + ", customerId=" + customerId + ", quantity=" + quantity + ", date="
				+ date + ", customerEmail=" + customerEmail + ", bikeName=" + bikeName + ", bikePrice=" + bikePrice
				+ "]";
	}



	
	

}
