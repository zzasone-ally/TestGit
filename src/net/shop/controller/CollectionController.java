package net.shop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONArray;
import net.shop.domain.Text;
import net.shop.service.CollectionService;

@Controller
public class CollectionController {
	@Autowired
	@Qualifier("collectionService")
	private CollectionService collectionService;
	
	@RequestMapping(value="/addCollection")
	@ResponseBody
	int Query(@RequestParam("account") String account,@RequestParam("textid") String textid) {
		System.out.println(account+textid);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("account", Integer.parseInt(account));
		map.put("textid", Integer.parseInt(textid));
		int flag = collectionService.insert(map);
		System.out.println(flag);
		return flag;
	}
	
	@RequestMapping(value="/delCollection")
	@ResponseBody
	int Delete(@RequestParam("account") String account,@RequestParam("textid") String textid) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("account", Integer.parseInt(account));
		map.put("textid", Integer.parseInt(textid));
		int flag = collectionService.delete(map);
		return flag;
	}
	
	@RequestMapping(value="/queryCollection")
	@ResponseBody
	boolean QueryCollection(@RequestParam("account") String account,@RequestParam("textid") String textid) {
		System.out.println("*************");
		System.out.println(account+textid);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("account", Integer.parseInt(account));
		map.put("textid", Integer.parseInt(textid));
		boolean flag = collectionService.queryInfo(map);
		System.out.println(flag);
		return flag;
	}
	
	@RequestMapping(value = "/queryAllCollection")
	@ResponseBody
	JSONArray QueryCollection(@RequestParam("account") String account)
	{
		List<Text> collections = collectionService.queryAll(Integer.parseInt(account));
		JSONArray json = JSONArray.fromObject(collections);
		return json;
	}

}
