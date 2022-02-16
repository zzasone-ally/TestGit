package net.shop.dao.provider;

import java.util.Map;

import org.apache.ibatis.jdbc.SQL;

public class ShopListProvider {
	public String select(Map<String,Object> map) {
		String sql =  new SQL(){
			{
				SELECT("*");
				FROM("t_shop");
				if(map.get("account") != null){
					WHERE("account = #{account}");
				}
				if(map.get("id") != null){
					WHERE("id = #{id}");
				}
				if(map.get("textid") != null){
					WHERE("textid = #{textid}");
				}
			}
		}.toString();
		return sql;

}
}
