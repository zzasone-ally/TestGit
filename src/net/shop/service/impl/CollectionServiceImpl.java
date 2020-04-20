package net.shop.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import net.shop.dao.CollectionDao;
import net.shop.domain.Collection;
import net.shop.domain.Text;
import net.shop.service.CollectionService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("collectionService")
public class CollectionServiceImpl implements CollectionService
{
	@Autowired
	private CollectionDao collectionDao;
	
	@Override
	public int insert(Map<String, Object> map)
	{
		int flag = collectionDao.insert(map);
		return flag;
	}

	@Override
	public int delete(Map<String, Object> map)
	{
		int flag = collectionDao.delete(map);
		return flag;
	}

	@Override
	public boolean queryInfo(Map<String, Object> map)
	{
		List<Collection> collections = collectionDao.queryInfo(map);
		boolean flag=false;
		if(collections.size()!=0) {
			flag=true;
		}
		return flag;
	}

	@Override
	public List<Text> queryAll(int account)
	{
		List<Text> collections = collectionDao.queryAllInfo(account);
		return collections;
	}

}
