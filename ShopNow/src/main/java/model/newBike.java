package model;

public class newBike {
	private String name;
	private String brand;
	private String gender;
	private String description;
	private int price;
	private int image;
	private int id;
	
	public newBike() {};
	
	public newBike(int id, String name, String brand, String gender, String description, int price, int image) {
		this.id=id;
		this.name = name;
		this.brand = brand;
		this. gender = gender;
		this.description = description;
		this.price = price;
		this.image = image;
		
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getImage() {
		return image;
	}
	public void setImage(int image) {
		this.image = image;
	}

}
