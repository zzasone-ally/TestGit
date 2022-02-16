package net.shop.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;
import net.shop.domain.Account;
import net.shop.service.AccountService;

@Controller
public class AccountController {
	@Autowired
	@Qualifier("accountService")
	private AccountService accountService;
	
	@RequestMapping(value ="/addAccount")
	@ResponseBody
	boolean create(@RequestParam("username")String username,@RequestParam("password") String password){
		Calendar cal = Calendar.getInstance();
		Account accounts = new Account();
		accounts.setUsername(username);
		accounts.setPassword(password);
		boolean flag = accountService.add(accounts);
		
		return flag;
	}
	@RequestMapping(value="/changeInfo")
	@ResponseBody
	boolean changeInfo(@RequestParam("username") String username,
			@RequestParam("password") String password){
		Map<String,Object>map = new HashMap<String,Object>();
		map.put("username",username);
		map.put("password",password);
		boolean flag = accountService.midified(map);
		return flag;
				
		
	}
	@RequestMapping(value ="/checkUsername")
	@ResponseBody
	JSONObject checkUsername(@RequestParam("username") String username){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("username", username);
		String type = "";
		boolean flag = accountService.checkAccount(map);
		if (!flag){
			type = "1"; //账户不存在
		}
		else
		{
			type = "0";
		}
		JSONObject json = new JSONObject();
		json.put("type", type);
		return json;
	}
	
	@RequestMapping(value = "/queryAccountInfo")
	@ResponseBody
	JSONObject queryAccountInfo(@RequestParam("username") String username)
	{
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("username",username);
		Account account=accountService.query(map);
		boolean flag = false;
		if(account != null) {
			flag = true;
		}
		JSONObject json = JSONObject.fromObject(account);
		json.put("type", flag);
		return json;
	}
	
	
	@RequestMapping(value = "/login")
	@ResponseBody
	JSONObject login (@RequestParam("username") String username,@RequestParam("password") String password){
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("username", username);
		String type = "";
		boolean flag = accountService.checkAccount(map);
		if (!flag){
			type ="1";//账户不存在
		}else{
			map.put("password", password);
			flag = accountService.checkPassword(map);
			if(!flag){
				type = "2";//密码错误
			}else{
				type = "0";//登录成功
			}
		}
		JSONObject json = new JSONObject();
		json.put("type", type);
		return json;
	}
	
	

}
