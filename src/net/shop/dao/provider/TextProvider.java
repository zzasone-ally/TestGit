package net.shop.dao.provider;

import java.util.Map;

import org.apache.ibatis.jdbc.SQL;

public class TextProvider {
	public String select(Map<String,Object> map){
		String sql = new SQL(){
			{
			SELECT("*");
			FROM("t_text");
			if(map.get("account") != null){
				WHERE("account = #{account}");
			}
			if(map.get("username") != null){
				WHERE("username = #{username}");
			}
			if(map.get("password") != null){
				WHERE("password = #{password}");
			}
			
		}
	}.toString();
	return sql;
				

}
}
