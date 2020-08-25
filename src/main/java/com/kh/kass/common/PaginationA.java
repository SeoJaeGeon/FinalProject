package com.kh.kass.common;

public class PaginationA {
	public static PageInfo getPageInfo(int currentPage, int listCount) {
	      PageInfo pi = null;   // ������ ������ ��� �� PageInfo �������� ����
	      
	      int pageLimit = 5;   // �� �������� ������ ����¡���� ����
	      int boardLimit = 10;   // �� ������ ������ �Խñ� ����
	      
	      int maxPage = (int)Math.ceil((double)listCount / boardLimit);
	      int startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
	      int endPage = startPage + pageLimit - 1;
	      
	      // ������ �������� �� ������ ������ Ŭ ���
	      if(maxPage < endPage) {
	         endPage = maxPage;
	      }
	      
	      pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);

	      return pi;
	   }
}
