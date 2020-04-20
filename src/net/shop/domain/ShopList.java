package net.shop.domain;

public class ShopList {
	
	private int id;
	private int account;
	private int textid;
	
	public ShopList(){
		super();
	}
	public ShopList(int id, int account, int textid)
	{
		super();
		this.id = id;
		this.account = account;
		this.textid = textid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAccount() {
		return account;
	}
	public void setAccount(int account) {
		this.account = account;
	}
	public int getTextid() {
		return textid;
	}
	public void setTextid(int textid) {
		this.textid = textid;
	}
	@Override
	public String toString() {
		return "ShopList [id=" + id + ", account=" + account + ", textid=" + textid + "]";
	}
	
}
