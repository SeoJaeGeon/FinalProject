package com.kh.kass.snack.model.service;

import com.kh.kass.snack.model.vo.Snack;

public interface SnackService {

	// 스낵 등록
	public int insertSnack(Snack s);

	// 스낵 상세 조회
	public Snack selectOne(int snackNo);

	public int updateNotice(Snack s);

	public int deleteSnack(int snackNo);

}
