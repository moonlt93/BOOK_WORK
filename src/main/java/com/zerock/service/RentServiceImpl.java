package com.zerock.service;

import org.springframework.stereotype.Service;

import com.zerock.domain.RentVO;
import com.zerock.mapper.BoardMapper;
import com.zerock.mapper.RentMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class RentServiceImpl implements RentService {
	
	private RentMapper mapper;

	@Override
	public void register(RentVO vo) {
		mapper.insert(vo);
		
	}

	
	
	

}
