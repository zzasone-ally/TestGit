package net.shop.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import net.shop.dao.ShopListDao;
import net.shop.domain.ShopList;
import net.shop.domain.Text;
import net.shop.service.ShopListService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("shoplistService")
public class ShopListServiceImpl implements ShopListService {
	@Autowired
	private ShopListDao shopListDao;
	@Override
	public int insert(Map<String, Object> map)
	{
		int flag = shopListDao.insert(map);
		return flag;
	}
	
	@Override
	public int delete(Map<String, Object> map)
	{
		int flag = shopListDao.delete(map);
		return flag;
	}
	@Override
	public boolean queryInfo(Map<String, Object> map)
	{
		List<ShopList> shoplists = shopListDao.queryInfo(map);
		boolean flag=false;
		if(shoplists.size()!=0) {
			flag=true;
		}
		return flag;
	}
	@Override
	public List<Text> queryAll(int account)
	{
		List<Text> shoplists = shopListDao.queryAllInfo(account);
		return shoplists;
	}


}
