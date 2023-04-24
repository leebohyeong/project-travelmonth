package kr.or.visitkorea.korean.global.util;

import kr.or.visitkorea.korean.global.common.service.CommonService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Slf4j
@Component
public class Sido {

	private final CommonService SERVICE;
	private static CommonService STATIC_SERVICE;

	public Sido(CommonService SERVICE) { this.SERVICE = SERVICE; }

	@PostConstruct
	private void init() { STATIC_SERVICE = SERVICE; }

	/**
	 * GET LIST
	 * @return
	 */
	public static Object getList() {
		return STATIC_SERVICE.getSidoList();
	}

}
