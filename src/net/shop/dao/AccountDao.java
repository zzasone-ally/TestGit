package net.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.UpdateProvider;

import net.shop.dao.provider.AccountProvider;
import net.shop.domain.Account;

public interface AccountDao {

	@Insert("INSERT INTO t_account(username,password)"
			+ " VALUES(#{username},#{password}")
	public int insert(Account account);
	
	@Delete("DELETE FROM t_account WHERE account = #{account}")
	public int del(int id);
	
	@UpdateProvider(type=AccountProvider.class,method="update")
	public int update(Map<String,Object> map);
	
	@SelectProvider(type=AccountProvider.class,method="select")
	public List<Account> select(Map<String,Object> map);

}
