package net.shop.domain;

public class Text {
	private int id;
	private int typeid;
	private String variety;
	private String name;
	private int age;
	private String text;
	private String time;
	private int hotnum;
	private String picture;
	public Text(){
		super();
	}
	public Text(int id,int typeid,String variety,String name,int age,String text,String time,int hotnum,String picture){
		super();
		this.id = id;
		this.typeid = typeid;
		this.variety = variety;
		this.name = name;
		this.age = age;
		this.text = text;
		this.time = time;
		this.hotnum = hotnum;
		this.picture = picture;
				
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public String getVariety() {
		return variety;
	}
	public void setVariety(String variety) {
		this.variety = variety;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getHotnum() {
		return hotnum;
	}
	public void setHotnum(int hotnum) {
		this.hotnum = hotnum;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	@Override
	public String toString() {
		return "Text [id=" + id + ", typeid=" + typeid + ", variety=" + variety + ", name=" + name + ", age=" + age
				+ ", text=" + text + ", time=" + time + ", hotnum=" + hotnum + ", picture=" + picture + "]";
	}
	
	
 
}
