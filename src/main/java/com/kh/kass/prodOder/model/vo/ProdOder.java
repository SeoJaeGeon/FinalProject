package com.kh.kass.prodOder.model.vo;

import java.sql.Date;
import lombok.Data;

@Data
public class ProdOder {
	private int userId; // ȸ�����̵�
	private int orderNo; // �ֹ��̷¹�ȣ
	private int orderNum; // �ֹ���ȣ 
	private int count; //����
	private int dNo; // ������� ��ȣ
	private String dName; // ������
	private String dPhone; // ��ȭ��ȣ
	private String dAddress; // �ּ���
	private String dMemo; // ��� �޸�
	private Date codeTerm; // �ڵ�Ⱓ
	private String codeStatus; // �ڵ���ȿ����
}
