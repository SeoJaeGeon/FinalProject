package com.kh.kass.snack.model.service;

import java.util.ArrayList;

import com.kh.kass.common.Attachment;
import com.kh.kass.common.PageInfo;
import com.kh.kass.snack.model.vo.Snack;

public interface SnackService {
	
	// 상품 개수 구하는 메소드
	public int selectListCount();

	// 상품 조회(페이징)
	public ArrayList<Snack> selectList(PageInfo pi);

	// 스낵 등록
	public int insertSnack(Snack s);
	
	// 스낵 이미지 등록
	public int insertSnackImg(Attachment att);

	public Snack selectSnack(int snackNo);

	// 스낵 사진 select
	public Attachment selectAtt(int snackNo);

	// 스낵 수정
	public int updateSnack(Snack s);

	// 스낵 삭제
	public int deleteSnack(int snackNo);

	// 스낵 이미지 수정
	public int updateImg(Attachment att);

	// 스낵 삭제 list
	public ArrayList<Snack> deleteList(PageInfo pi);

	public ArrayList<Snack> selectpList(PageInfo pi);

	public ArrayList<Snack> selectdpList(PageInfo pi);

	public ArrayList<Snack> selectcpList(PageInfo pi);

	public ArrayList<Snack> selectMList();
	
	
	

	

	


}
