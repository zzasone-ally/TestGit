package net.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.shop.domain.Text;
import net.shop.service.TextService;

@Controller
public class TextController {
	@Autowired
	@Qualifier("textService")
	private TextService textService;

	@RequestMapping(value = "/selectByHotnum")
	@ResponseBody
	JSONArray SelectByHotnum()
	{
		List<Text> texts = textService.SelectByHotnum();
		JSONArray json = JSONArray.fromObject(texts);
		return json;
	}
	
	@RequestMapping(value = "/selectByTime")
	@ResponseBody
	JSONArray SelectByTime()
	{
		List<Text> texts = textService.SelectByTime();
		JSONArray json = JSONArray.fromObject(texts);
		return json;
	}
	
	@RequestMapping(value = "/selectAll")
	@ResponseBody
	JSONObject SelectAll(@RequestParam("id") String id)
	{
		
		Text text = textService.SelectAll(Integer.parseInt(id));
		/*if(id !=null && !id .equals("")){
			
		}*/
		
		JSONObject json = JSONObject.fromObject(text);
		return json;
	}
	
	@RequestMapping(value = "/selectByName")
	@ResponseBody
	int SelectByName(@RequestParam("name") String name)
	{
		Text text = textService.SelectByName(name);
		int id=text.getId();
		return id;
	}
	
	@RequestMapping(value = "/selectByType")
	@ResponseBody
	JSONArray SelectByType()
	{
		List<Text> texts = textService.SelectByType();
		JSONArray json = JSONArray.fromObject(texts);
		return json;
	}
	
	@RequestMapping(value = "/selectByTypeAndHotnum")
	@ResponseBody
	JSONArray SelectByTypeAndHotnum(@RequestParam("typeid") String typeid)
	{
		List<Text> texts = textService.SelectByTypeAndHotnum(Integer.parseInt(typeid));
		JSONArray json = JSONArray.fromObject(texts);
		return json;
	}
	
	@RequestMapping(value = "/selectByTypeAndTime")
	@ResponseBody
	JSONArray SelectByTypeAndTime(@RequestParam("typeid") String typeid)
	{
		List<Text> texts = textService.SelectByTypeAndTime(Integer.parseInt(typeid));
		JSONArray json = JSONArray.fromObject(texts);
		return json;
	}

}
