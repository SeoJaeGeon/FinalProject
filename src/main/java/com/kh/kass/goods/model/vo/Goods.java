package com.kh.kass.goods.model.vo;

import lombok.Data;

@Data
public class Goods {
	private int gCateNo; // ���� ī�װ�
	private String gCateName; // ���� ī�װ� ��
	private int goodsNo; // ���� ��ȣ
	private String goodsName; // ���� ��ǰ��
	private int goodsPrice; // ���� ����
	private int goodsStock; // ���� ���
	private String goodsMemo; // ���� ��ǰ ����
	private String goodsStatus; // ���� ���� ����
}
