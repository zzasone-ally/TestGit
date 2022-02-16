package net.shop.service;

import java.util.List;

import net.shop.domain.Text;

public interface TextService {
	/*�����ȶȲ�ѯ*/
	public List<Text> SelectByHotnum();
	/**����ʱ���ѯ*/
	public List<Text> SelectByTime();
	/**����ʱ���ѯ*/
	public Text SelectAll(int id);
	/**�������Ʋ�ѯ*/
	public Text SelectByName(String name);
	/**�������Ͳ�ѯ*/
	public List<Text> SelectByType();
	/**�������Ͳ�ѯ*/
	public List<Text> SelectByTypeAndHotnum(int id);
	/**�������Ͳ�ѯ*/
	public List<Text> SelectByTypeAndTime(int id);
	
	
	
	
	
	

}
