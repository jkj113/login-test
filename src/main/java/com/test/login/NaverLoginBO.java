package com.test.login;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.util.StringUtils;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

public class NaverLoginBO {

	private final static String CLIENT_ID = "xqiRrUTeLl0KQiSeRDR6";
	private final static String CLIENT_SECRET = "R9Tq8MDYPX";
	private final static String REDIRECT_URI = "http://localhost/login/callback";
	private final static String SESSION_STATE = "oauth_state";
	//회원정보 조회 API URL
	private final static String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";
	
	//네이버 아이디로 인증 URL 생성
	public String getAuthorizationUrl(HttpSession session) {
		//세션 유효성 검사를 위한 난수 생성
		String state = RandomStringUtils.randomAlphanumeric(10);
		setSession(session,state);
		
		OAuth20Service oauthService = new ServiceBuilder()
				.apiKey(CLIENT_ID)
				.apiSecret(CLIENT_SECRET)
				.callback(REDIRECT_URI)
				.state(state)
				.build(NaverLoginAPI.instance());
		
		return oauthService.getAuthorizationUrl();
	}

	private void setSession(HttpSession session, String state) {
		session.setAttribute(SESSION_STATE, state);
	}

	//네이버 아이디로 CallBack 처리 및 AccessToken
	public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state ) throws IOException {
		//CallBack으로 전달 받은 세션 검사 값과 세션에 저장된 값이 일치하는지 확인
		String sessionState = getSession(session);
		if(StringUtils.pathEquals(sessionState, state)) {
			OAuth20Service oauthService = new ServiceBuilder()
					.apiKey(CLIENT_ID).apiSecret(CLIENT_SECRET).callback(REDIRECT_URI).state(state).build(NaverLoginAPI.instance());
			OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
			return accessToken;
		}
		return null;
	}
		
	

	private String getSession(HttpSession session) {
		return (String)session.getAttribute(SESSION_STATE);
	}
	
	//AccessToken으로 회원정보 API 호출
	public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException {
		OAuth20Service oauthService = new ServiceBuilder()
				.apiKey(CLIENT_ID).apiSecret(CLIENT_SECRET).callback(REDIRECT_URI).build(NaverLoginAPI.instance());
		
		OAuthRequest request = new OAuthRequest(Verb.GET,PROFILE_API_URL,oauthService);
		oauthService.signRequest(oauthToken, request);
		Response response = request.send();
		return response.getBody();
	}
	
}



