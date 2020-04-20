package net.shop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import net.shop.domain.Text;

public interface TextDao {
	@Select("select * from t_text order by hotnum desc LIMIT 4")
	public List<Text> SelectByHotnum();
	
	@Select("select * from t_text order by time desc LIMIT 4")
	public List<Text> SelectByTime();
	
	@Select("select * from t_text where id = #{id}")
	public List<Text> SelectAll(int id);
	
	@Select("select * from t_text where name = #{name}")
	public List<Text> SelectByName(String name);
	
	@Select("select distinct typeid,variety from t_text")
	public List<Text> SelectByType();
	
	@Select("select * from t_text where typeid = #{typeid} order by hotnum desc LIMIT 4")
	public List<Text> SelectByTypeAndHotnum(int typeid);
	
	@Select("select * from t_text where typeid = #{typeid} order by time desc LIMIT 4")
	public List<Text> SelectByTypeAndTime(int typeid);

}
