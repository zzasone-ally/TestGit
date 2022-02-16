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
import net.shop.service.ShopListService;

@Controller
public class ShopListController {
	@Autowired
	@Qualifier("shoplistService")
	private ShopListService shoplistservice;
	
	@RequestMapping(value="/addShopList")
	@ResponseBody
	int Query(@RequestParam("account") String account,@RequestParam("textid") String textid) {
		System.out.println(account+textid);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("account", Integer.parseInt(account));
		map.put("textid", Integer.parseInt(textid));
		int flag = shoplistservice.insert(map);
		System.out.println(flag);
		return flag;
	}
	
	@RequestMapping(value="/delShopList")
	@ResponseBody
	int Delete(@RequestParam("account") String account,@RequestParam("textid") String textid) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("account", Integer.parseInt(account));
		map.put("textid", Integer.parseInt(textid));
		int flag = shoplistservice.delete(map);
		return flag;
	}
	
	@RequestMapping(value="/queryShopList")
	@ResponseBody
	boolean QueryShopList(@RequestParam("account") String account,@RequestParam("textid") String textid) {
		System.out.println("*************");
		System.out.println(account+textid);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("account", Integer.parseInt(account));
		map.put("textid", Integer.parseInt(textid));
		boolean flag = shoplistservice.queryInfo(map);
		System.out.println(flag);
		return flag;
	}
	
	@RequestMapping(value = "/queryAllShopList")
	@ResponseBody
	JSONArray QueryShopList(@RequestParam("account") String account)
	{
		List<Text> shoplists = shoplistservice.queryAll(Integer.parseInt(account));
		JSONArray json = JSONArray.fromObject(shoplists);
		return json;
	}


}
