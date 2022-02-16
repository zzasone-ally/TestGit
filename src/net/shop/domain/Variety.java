package net.shop.domain;

public class Variety {

	private int id;
	private String type;
	private String picture;

	public Variety() {
		super();
	}
	public Variety(int id,String type,String picture){
		super();
		this.id=id;
		this.type = type;
		this.picture = picture;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	@Override
	public String toString() {
		return "Variety [id=" + id + ", type=" + type + ", picture=" + picture + "]";
	}


	
	
}
