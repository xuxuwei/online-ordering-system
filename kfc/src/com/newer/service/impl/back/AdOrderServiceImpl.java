package com.newer.service.impl.back;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;


import com.newer.dao.impl.back.OrderDAOimpl;
import com.newer.dao.inter.back.OrderDAO;
import com.newer.pojo.Order;
import com.newer.service.inter.back.AdOrderService;

public class AdOrderServiceImpl implements AdOrderService{
	@Autowired
	private OrderDAO orderDao;
	

	
	public OrderDAO getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDAO orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public boolean add(Order o) {
		orderDao=new OrderDAOimpl();
		return orderDao.add(o);
	}

	@Override
	public boolean delete(Order o) {
		orderDao=new OrderDAOimpl();	
		return orderDao.delete(o);
	}

	@Override
	public boolean deleteByUser_id(int user_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean modify(Order o) {
		orderDao=new OrderDAOimpl();	
		return orderDao.modify(o);
	}

	@Override
	public Order selectById(int id) {
		orderDao=new OrderDAOimpl();
		return orderDao.selectById(id);
	}

	@Override
	public List<Order> selectAll() {
		orderDao=new OrderDAOimpl();	
		return orderDao.selectAll();
	}

	@Override
	public Order selectByO_time(String Time) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> SendOrderById(int id) {
		orderDao=new OrderDAOimpl();	
		return orderDao.SendOrderById(id);
	}



	
}
