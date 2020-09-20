package com.kh.kass.cart.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.kass.cart.model.dao.CartDao;

@Service("cService")
public class CartServiceImpl implements CartService{
	@Autowired
	private CartDao cDao;


	
	
}	
