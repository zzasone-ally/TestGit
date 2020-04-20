package net.shop.service;

import java.util.Map;

import net.shop.domain.Account;

public interface AccountService {
	
	/*���*/
	public boolean add(Account account);
	
	/*ɾ��*/
	public boolean del (int id);
	
	/*�޸�*/
	public boolean midified(Map<String,Object> map);
	 
	/*��ѯ*/
	public Account query(Map<String,Object> map);
	
	/*ƥ���˺�*/
	public boolean checkAccount(Map<String,Object> map);
	
	/*ƥ������*/
	public boolean checkPassword(Map<String,Object> map);

	
	

}
