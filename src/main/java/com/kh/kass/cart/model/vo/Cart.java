package com.kh.kass.cart.model.vo;

import lombok.Data;

@Data
public class Cart {
	// cart ���Ŀ� �߰�
	private int cNo; // ��ٱ��� ��ȣ
	private int userNo; // ���� ��ȣ
	private int cartCount; // ��ٱ��� ����
	private String cCartYN; // ��ٱ��� ����
}
