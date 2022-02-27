package com.zerock.mapper;

import com.zerock.domain.UserInfoVO;


public interface UserMapper {
	
	public void register(UserInfoVO vo);
	
	public UserInfoVO login(UserInfoVO vo);
	
	public UserInfoVO read(String UserId);
	
	

}
