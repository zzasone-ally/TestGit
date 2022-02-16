package net.shop.dao;

import org.apache.ibatis.annotations.Delete;

public interface VarietyDao {
	@Delete("DELECT FROM t_type WHERE id = #{id)")
	public int del(int id);

}
