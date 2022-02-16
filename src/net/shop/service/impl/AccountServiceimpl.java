package net.shop.service.impl;


import java.util.Map;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import net.shop.dao.AccountDao;
import net.shop.domain.Account;
import net.shop.service.AccountService;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT)
@Service("accountService")
public class AccountServiceimpl implements AccountService{
	
	@Autowired
	private AccountDao accountDao;
	
	@Override
	public boolean add(Account account)
	{
		boolean flag = false;
		int res = accountDao.insert(account);
		if(res != 0) {
			flag = true;
		}
		return flag;
	}

	
	@Override
	public boolean del(int id){
		boolean flag = false;
		int res = accountDao.del(id);
		if(res != 0){
			flag = true;
			
		}
	return flag;	
	}
	
	@Override
	public boolean midified(Map<String,Object> map){
		int res = accountDao.update(map);
		boolean flag = false;
		if(res !=0){
			flag = true;
		}
		return flag;
		
	}
	@Override
	public Account query(Map<String,Object> map){
		List<Account> accounts = accountDao.select(map);
		if(accounts.size()==0){
			return null;
		}else {
			return accounts.get(0);
		}
	}
	
	@Override
	public boolean checkAccount(Map<String,Object>map){
		List<Account> accounts = accountDao.select(map);
		if(accounts == null||accounts.size()==0){
			return false;
		}else{
			return true;
		}
		
	}
	@Override
	public boolean checkPassword(Map<String,Object>map){
		List<Account>accounts = accountDao.select(map);
		if(accounts == null|| accounts.size()==0){
			return false;
		}else{
			return true;
		}
		
	}
}
	


