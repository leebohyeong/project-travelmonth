package kr.or.visitkorea.korean.area.web;

import kr.or.visitkorea.korean.area.service.AreaService;
import kr.or.visitkorea.korean.global.common.service.CommonService;
import kr.or.visitkorea.korean.global.dto.CommonResponse;
import lombok.RequiredArgsConstructor;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequiredArgsConstructor
@RequestMapping("/area")
public class AreaController<T> {

	private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());

	private final AreaService AREA_SERVICE;
	private final CommonService COMMON_SERVICE;

	/**
	 * 지역별 목록 페이지
	 * @param area
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/{area}.do", method = RequestMethod.GET)
	public String list(@PathVariable("area") String area, Model model) {
		try {
			JSONObject jsonObject = (JSONObject) COMMON_SERVICE.getSidoByNameEn(area);
			jsonObject = (JSONObject) jsonObject.get("data");
			model.addAttribute("area", jsonObject);
			model.addAttribute("travel", AREA_SERVICE.getList((JSONObject) jsonObject.get("data")));
		}
		catch (Exception exception) {
			LOGGER.error(area.toUpperCase() + " Page Exception : {}", exception.getMessage(), exception);
		}
		return "/area/list";
	}


}
