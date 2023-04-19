package kr.or.visitkorea.korean.global.util;

import kr.or.visitkorea.korean.area.service.AreaService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.List;

@Slf4j
@Component
public class Area {

	private final AreaService SERVICE;
	private static AreaService STATIC_SERVICE;

	public Area(AreaService SERVICE) { this.SERVICE = SERVICE; }

	@PostConstruct
	private void init() { STATIC_SERVICE = SERVICE; }

	/**
	 * GET LIST
	 * @return
	 */
	public static Object getList() {
		return STATIC_SERVICE.getAreaList();
	}

}
