package com.zerock.service;

import java.util.List;

import com.zerock.domain.BoardVO;
import com.zerock.domain.Criteria;



public interface BoardService {
	
	public void register(BoardVO board);
	
	// public List<BoardVO> getList();
	
	public List<BoardVO> getList(Criteria cri);
	
	public BoardVO get(Long bno);
	
	public boolean remove(Long bno);
	
	public boolean modify(BoardVO board);
	
	public int getTotal(Criteria cri);
}




