package net.shop.service;

import java.util.Map;

import net.shop.domain.Account;

public interface AccountService {
	
	/*Ìí¼Ó*/
	public boolean add(Account account);
	
	/*É¾³ı*/
	public boolean del (int id);
	
	/*ĞŞ¸Ä*/
	public boolean midified(Map<String,Object> map);
	 
	/*²éÑ¯*/
	public Account query(Map<String,Object> map);
	
	/*Æ¥ÅäÕËºÅ*/
	public boolean checkAccount(Map<String,Object> map);
	
	/*Æ¥ÅäÃÜÂë*/
	public boolean checkPassword(Map<String,Object> map);

	
	

}
