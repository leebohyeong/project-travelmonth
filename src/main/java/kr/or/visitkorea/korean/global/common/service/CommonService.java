package kr.or.visitkorea.korean.global.common.service;

public interface CommonService {

	/**
	 * GET AREA LIST
	 * @return
	 */
	Object getSidoList();

	/**
	 * GET SIDO
	 * @param nameEn
	 * @return
	 */
	Object getSidoByNameEn(String nameEn);

}
