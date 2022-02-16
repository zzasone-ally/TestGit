package net.shop.dao.provider;

import java.util.Map;

import org.apache.ibatis.jdbc.SQL;

public class AccountProvider {
	public String select(Map<String,Object> map){
		String sql = new SQL(){
			{
				SELECT("*");
				FROM("t_account");
				if(map.get("account")!=null){
					WHERE("account= #{account}");
				}
				if(map.get("username")!=null){
					WHERE("username= #{username}");
				}
				if(map.get("password")!=null){
					WHERE("password = #{password}");
				}
			}
			
		}.toString();
		return sql;
		
	}
	public String update(Map<String,Object> map) {
		String sql = new SQL() {
			{
				UPDATE("t_account");
				if(map.get("password")!= null) {
					SET("password = #{password}");
				}
				/*if(map.get("sex")!= null) {
					SET("sex = #{sex}");
				}
				if(map.get("birthdate")!= null) {
					SET("birthdate = #{birthdate}");
				}
				if(map.get("image")!= null) {
					SET("image = #{image}");
				}*/
				WHERE("username = #{username}");
			}
		}.toString();
		return sql;
	}
	
	
}
