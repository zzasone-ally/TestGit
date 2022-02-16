package net.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import net.shop.dao.TextDao;
import net.shop.domain.Text;
import net.shop.service.TextService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("textService")

public class TextServiceImpl implements TextService {
	
	@Autowired
	private TextDao textDao;

	@Override
	public List<Text> SelectByHotnum()
	{
		List<Text> texts=textDao.SelectByHotnum();
		return texts;
	}

	@Override
	public List<Text> SelectByTime()
	{
		List<Text> texts=textDao.SelectByTime();
		return texts;
	}

	@Override
	public Text SelectAll(int id)
	{
		List<Text> texts=textDao.SelectAll(id);
		return texts.get(0);
	}

	@Override
	public List<Text> SelectByType()
	{
		List<Text> texts=textDao.SelectByType();
		return texts;
	}

	@Override
	public List<Text> SelectByTypeAndHotnum(int id)
	{
		List<Text> texts=textDao.SelectByTypeAndHotnum(id);
		return texts;
	}

	@Override
	public List<Text> SelectByTypeAndTime(int id)
	{
		List<Text> texts=textDao.SelectByTypeAndTime(id);
		return texts;
	}

	@Override
	public Text SelectByName(String name)
	{
		List<Text> texts=textDao.SelectByName(name);
		return texts.get(0);
	}

	

}
