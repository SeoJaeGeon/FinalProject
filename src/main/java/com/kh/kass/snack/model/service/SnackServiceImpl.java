package com.kh.kass.snack.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.kass.common.Attachment;
import com.kh.kass.common.PageInfo;
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
	public int insertSnackImg(Attachment att) {
		return sDao.insertSnackImg(att);
	}

	@Override
	public int selectListCount() {
		return sDao.selectListCount();
	}

	@Override
	public ArrayList<Snack> selectList(PageInfo pi) {
		return sDao.selectList(pi);
	}

	@Override
	public Snack selectSnack(int snackNo) {
		return sDao.selectSnack(snackNo);
	}

	@Override
	public Attachment selectAtt(int snackNo) {
		return sDao.selectAtt(snackNo);
	}

	@Override
	public int updateSnack(Snack s) {
		return sDao.updateSnack(s);
	}

	@Override
	public int deleteSnack(int snackNo) {
		return sDao.deleteSnack(snackNo);
	}

	@Override
	public int updateImg(Attachment att) {
		return sDao.updateImg(att);
	}

	@Override
	public ArrayList<Snack> deleteList(PageInfo pi) {
		return sDao.deleteSnack(pi);
	}

	@Override
	public ArrayList<Snack> selectpList(PageInfo pi) {
		return sDao.selectpList(pi);
	}

	@Override
	public ArrayList<Snack> selectdpList(PageInfo pi) {
		return sDao.selectdList(pi);
	}

	@Override
	public ArrayList<Snack> selectcpList(PageInfo pi) {
		return sDao.selectcList(pi);
	}


	

	
	
}	
