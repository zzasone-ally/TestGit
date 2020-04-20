package net.shop.service;

import java.util.List;
import java.util.Map;

import net.shop.domain.Text;

public interface CollectionService {
	
	public int insert(Map<String,Object> map);
	
	public int delete(Map<String,Object> map);

	public boolean queryInfo(Map<String,Object> map);
	
	public List<Text> queryAll(int account);
}
