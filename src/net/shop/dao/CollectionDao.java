package net.shop.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import net.shop.domain.Collection;
import net.shop.domain.Text;

public interface CollectionDao {
	@Insert("insert into t_collection(account,textid) values(#{account},#{textid})")
	public int insert(Map<String,Object> map);
	
	@Delete("delete from t_collection where account=#{account} and textid=#{textid}")
	public int delete(Map<String,Object> map);
	
	@Select("select * from t_collection where account=#{account} and textid=#{textid}")
	public List<Collection> queryInfo(Map<String,Object> map);
	
	@Select("select t_text.id,typeid,variety,name,age,text,time,hotnum,picture"
			+ " from t_text,t_collection"
			+ " where t_text.id=t_collection.textid and account=#{account}")
	public List<Text> queryAllInfo(int account);
}
