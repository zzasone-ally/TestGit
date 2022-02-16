package net.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.shop.service.VarietyService;

@Controller
public class VarietyController {
	@Autowired
	@Qualifier("varietyService")
	private VarietyService varietyService;
	@RequestMapping(value="/del")
	@ResponseBody
	boolean del(@RequestParam("id") String id) {
		boolean flag = varietyService.del(Integer.parseInt(id));
		return flag;
	}
	

}
