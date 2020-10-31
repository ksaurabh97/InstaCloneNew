package controllers;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import dao.Shuttrdao;

@RestController 
public class AjaxController {
	
	private Shuttrdao dao;
	boolean searchResult = false;
	
	@RequestMapping(value="/ajaxSearch.web")
	public String handleAjax(@RequestParam String user) {
		
		dao = new Shuttrdao();
		searchResult = dao.ajaxSearch(user);
		if(searchResult)
			return "User already exist!!Try another username";
		System.out.println("Ajax Result is:---> " + searchResult);
		
		return "Valid username!!";
	}
	

}
