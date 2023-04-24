package kr.or.visitkorea.korean.area.service.impl;

import kr.or.visitkorea.korean.area.service.AreaService;
import kr.or.visitkorea.korean.global.common.service.impl.CommonServiceImplWrapper;
import org.springframework.stereotype.Service;

@Service
public class AreaServiceImpl  extends CommonServiceImplWrapper implements AreaService {


	/**
	 * GET LIST
	 * @param area
	 * @return
	 */
	@Override
	public Object getList(String area) {
		try {

		}
		catch (Exception exception) {
			exception.printStackTrace();
		}

		return null;
	}

}
