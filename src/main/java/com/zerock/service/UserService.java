package com.zerock.service;

import org.springframework.stereotype.Service;

import com.zerock.domain.UserInfoVO;
@Service
public interface UserService {
	
	public void register(UserInfoVO vo);
	
	public UserInfoVO get(String UserId);
	
	public UserInfoVO login(UserInfoVO vo);

}
