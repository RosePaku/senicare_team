package com.java.service;

import org.springframework.stereotype.Service;

@Service
public class BServiceImpl implements BService{

	@Override
	public int add() {
		return 5+10;
	}

}
