package com.kh.kass.snack.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.kass.snack.model.dao.SnackDao;
import com.kh.kass.snack.model.vo.Snack;

@Service("sService")
public class SnackServiceImpl implements SnackService{
	@Autowired
	private SnackDao sDao;

	@Override
	public int insertSnack(Snack s) {
		return sDao.insertSnack(s);
	}

	@Override
	public Snack selectOne(int snackNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateNotice(Snack s) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteSnack(int snackNo) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}	
