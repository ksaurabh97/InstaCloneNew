package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InitController {
	
	@RequestMapping({"/","/signUp.web"})
	public String displaySignup() {
		
		return "signUp";
	}
	
	@RequestMapping("/login.web")
	public String displayLogin() {
		
		return "login";
	}
	
	@RequestMapping("/timeLine.web")
	public String displayTimeLine() {
		
		return "timeLine";
	}

}
