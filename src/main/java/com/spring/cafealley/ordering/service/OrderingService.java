package com.spring.cafealley.ordering.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.cafealley.command.OrderingVO;
import com.spring.cafealley.ordering.mapper.IOrderingMapper;

@Service
public class OrderingService implements IOrderingService {

	@Autowired
	IOrderingMapper mapper;
	
	
	@Override
	public void order(OrderingVO vo) {
		mapper.order(vo);
	}

	@Override
	public List<OrderingVO> getList(String userid) {
		List<OrderingVO> list = mapper.getList(userid);
		System.out.println(list);
		return list;
	}

	@Override
	public OrderingVO getOrder() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modify(OrderingVO vo) {
		mapper.modify(vo);
	}	

	@Override
	public void delete(int ordernum) {
		// TODO Auto-generated method stub

	}

}
