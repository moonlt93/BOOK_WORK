package com.zerock.service;


import org.springframework.stereotype.Service;

import com.zerock.domain.UserInfoVO;

import com.zerock.mapper.UserMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class UserServiceImpl implements UserService {

	private UserMapper mapper;
	
	
	@Override
	public UserInfoVO login(UserInfoVO vo) {
	
		return mapper.login(vo);
	}
	
	@Override
	public void register(UserInfoVO vo) {
		System.out.println("등록중"+vo);
		 mapper.register(vo);
	
	}
	
	@Override
	public UserInfoVO get(String UserId) {
		return mapper.read(UserId);
	}
}
