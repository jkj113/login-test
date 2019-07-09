package com.test.login;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class URIController {
	
	@RequestMapping(value = "/views/**", method = RequestMethod.GET)
	public String goPage(HttpServletRequest req) {
		String uri = req.getRequestURI();
		uri = uri.replace("/views/", "");
//		log.info("uri : {}",uri);
		return uri;
	}
}
