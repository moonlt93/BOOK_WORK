package com.zerock.service;

import org.springframework.stereotype.Service;

import com.zerock.domain.RentVO;

@Service
public interface RentService {

	public void register(RentVO vo);
	
}
