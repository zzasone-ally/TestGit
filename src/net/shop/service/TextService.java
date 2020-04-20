package net.shop.service;

import java.util.List;

import net.shop.domain.Text;

public interface TextService {
	/*根据热度查询*/
	public List<Text> SelectByHotnum();
	/**根据时间查询*/
	public List<Text> SelectByTime();
	/**根据时间查询*/
	public Text SelectAll(int id);
	/**根据名称查询*/
	public Text SelectByName(String name);
	/**根据类型查询*/
	public List<Text> SelectByType();
	/**根据类型查询*/
	public List<Text> SelectByTypeAndHotnum(int id);
	/**根据类型查询*/
	public List<Text> SelectByTypeAndTime(int id);
	
	
	
	
	
	

}
