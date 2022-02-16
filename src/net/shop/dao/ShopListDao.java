package net.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import net.shop.domain.ShopList;
import net.shop.domain.Text;

public interface ShopListDao {

	@Insert("insert into t_shop(account,textid) values(#{account},#{textid})")
	public int insert(Map<String,Object> map);
	
	@Delete("delete from t_shop where account=#{account} and textid=#{textid}")
	public int delete(Map<String,Object> map);
	
	@Select("select * from t_shop where account=#{account} and textid=#{textid}")
	public List<ShopList> queryInfo(Map<String,Object> map);
	
	@Select("select t_text.id,typeid,variety,name,age,text,time,hotnum,picture"
			+ " from t_text,t_shop"
			+ " where t_text.id=t_shop.textid and account=#{account}")
	public List<Text> queryAllInfo(int account);
}
