package com.test.login;

import com.github.scribejava.core.builder.api.DefaultApi20;


public class NaverLoginAPI extends DefaultApi20{
//	protected NaverLoginAPI() {
//		
//	}
	private static class InstanceHolder{
		private static final NaverLoginAPI INSTANCE = 
				new NaverLoginAPI();
	}
	
	public static NaverLoginAPI instance() {
		return InstanceHolder.INSTANCE;
	}

	@Override
	public String getAccessTokenEndpoint() {
		return "https://nid.naver.com/oauth2.0/authorize?response_type=code";
	}
	
	@Override
	public String getAuthorizationBaseUrl() {
		return "https://nid.naver.com/oauth2.0/authorize";
	}
}
