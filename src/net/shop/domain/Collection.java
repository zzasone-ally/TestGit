package net.shop.domain;

public class Collection {
	private int id;
	private int account;
	private int textid;
	
	public Collection()
	{
		super();
	}
	public Collection(int id, int account, int textid)
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
		return "Collection [id=" + id + ", account=" + account + ", textid=" + textid + "]";
	}
	

}
