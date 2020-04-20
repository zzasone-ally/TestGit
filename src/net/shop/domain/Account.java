package net.shop.domain;

public class Account {
	private int account;
	private String username;
	private String password;

	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Account(int account, String username, String password) {
		super();
		this.account = account;
		this.username = username;
		this.password = password;
	}

	public int getAccount() {
		return account;
	}

	public void setAccount(int account) {
		this.account = account;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Account [account=" + account + ", username=" + username + ", password=" + password + "]";
	}

}